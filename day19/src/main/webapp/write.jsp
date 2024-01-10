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

<main class="frame">
	<h3>게시글 작성</h3>
	<form action="write-action.jsp" method="POST" enctype="multipart/form-data">
		<p><input type="text" name="title" placeholder="제목"></p>
		<p><textarea rows="" cols="" name="content" placeholder="내용"></textarea></p>
		<p><input type="file" name="uploadFile"></p>
		<p><input type="submit" value="작성완료"></p>
		
		<p><input type="hidden" name="writer" value="${login.userid }"></p>
		<p><input type="hidden" name="ipaddr" value="${pageContext.request.remoteAddr }"></p>
	</form>
</main>

</body>
</html>