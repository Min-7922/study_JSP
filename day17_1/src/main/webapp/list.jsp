<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="frame">
	<c:if test="${login.userid == 'admin' }">
		<table>
			<thead>
				<tr>
					<th>IDX</th>
					<th>ID</th>
					<th>PW</th>
					<th>AGE</th>
					<th>작성한 게시글 수</th>
					<th>작성한 댓글 수</th>
					<th>회원 탈퇴</th>
				</tr>
			</thead>
			<c:set var="list" value="${memberDAO.selectList() }" />
			<tbody>
				<c:forEach var="dto" items="${list }">
					<tr>
						<td>${dto.idx }</td>
						<td>${dto.userid }</td>
						<td>${dto.userpw }</td>
						<td>${dto.age }</td>
						<td>${dto.board_count }</td>
						<td>${dto.reply_count }</td>
						<td>
						<c:if test="${dto.userid != 'admin' }">
							<a href="delete.jsp?userid=${dto.userid }"><button>회원 탈퇴</button></a>
						</c:if>
						<c:if test="${dto.userid == 'admin' }">
							-
						</c:if>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	<c:if test="${empty login || login.userid != 'admin' }">
		<div class="wraning">
			<div style="font-weight: bolder;">경고!</div>
			<div>관리자만 접근 가능한 페이지 입니다.</div>
			<div><a href="${cpath }/"><button>돌아가기</button></a></div>
		</div>
	</c:if>
</section>

<footer class="frame footer">
	<div></div>
</footer>



</body>
</html>