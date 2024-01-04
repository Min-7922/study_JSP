<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<c:set var="dto" value="${boardDAO.selectOne(param.idx) }" />
<section class="frame">
	<div class="board-frame">
		<div class="board-frame1 flex sb">
			<div>작성자 : ${dto.writer }</div>
			<div>${dto.writeDate }</div>
		</div>
		<div class="board-frame2">${dto.title }</div>
		<div class="board-frame3">${dto.content }</div>
	</div>
	
<% 
	MemberDTO login = (MemberDTO)session.getAttribute("login");
	int age = login.getAge();
	String strAge = (age/10)*10 + "대"; 
%>
<c:set var="strAge" value="<%=strAge %>" />

	<div class="reply-input">
		<form method="POST" action="reply-write.jsp" class="flex">
			<div>${login.userid }</div>
			<input type="hidden" name="board_idx" value="${dto.idx }">
			<input type="hidden" name="writer" value="${login.userid }">
			<div><textarea cols="100" rows="3" name="content" ${empty login ?'disabled':''}
						   placeholder="${empty login ?'로그인 후 이용 가능합니다':'댓글'}${strAge == dto.category ?'':'작성이 불가능한 게시판 입니다'}"></textarea></div>
			<div><input type="submit" value="댓글작성" ${empty login ?'disabled':''}
													${strAge == dto.category ?'':'disabled'} ></div>
		</form>
	</div>
	
	<div id="reply">
		<c:set var="list" value="${replyDAO.selectList(dto.idx) }"></c:set>
		<c:forEach var="reply" items="${list }">
		<div class="flex reply-box">
			<ul class="flex">
				<li>${reply.writer }</li>
				<li>${reply.writeDate }</li>
			</ul>
			<div>${reply.content }</div>
			<c:if test="${reply.writer == login.userid }">
				<div><a href="delete-reply.jsp?idx=${reply.idx }&board_idx=${dto.idx}"><button>댓글 삭제</button></a></div>
			</c:if>
		</div>
		</c:forEach>
	</div>
	
	
</section>

<footer class="frame footer">
	<div></div>
</footer>


</body>
</html>