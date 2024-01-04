<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<section class="frame">
	<c:if test="${empty login }">
		<script>
			alert('로그인 후 이용 가능합니다')
			history.go(-1)
		</script>
	</c:if>
	
<% 
	MemberDTO login = (MemberDTO)session.getAttribute("login");
	int age = login.getAge();
	String strAge = (age/10)*10 + "대"; 
%>
	
	<c:if test="${pageContext.request.method == 'GET' }">
		<form method="POST">
			<p><input type="hidden" name="category" value="<%=strAge%>"></p>
			<p><%=strAge%> 게시판</p>
			<p><textarea rows="2" cols="80" name="title" placeholder="글 제목"></textarea></p>
			<p><textarea rows="10" cols="80" name="content" placeholder="내용 작성"></textarea></p>
			<p><input type="hidden" name="writer" value="${login.userid }"></p>
			<p><input type="submit" value="작성하기"></p>
		</form>
	</c:if>
	
	<c:if test="${pageContext.request.method == 'POST' }">
		<jsp:useBean id="dto" class="board.BoardDTO" />
		<jsp:setProperty property="*" name="dto"/>
		<c:set var="row" value="${boardDAO.insert(dto) }" />
		
		<c:if test="${row != 0 }">
			<c:redirect url="/board.jsp" />
		</c:if>
		<script>
			alert('작성 실패')
			history.go(-1)
		</script>
	</c:if>
	
	
</section>

<footer class="frame footer">
	<div></div>
</footer>

</body>
</html>