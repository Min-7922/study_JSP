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
	<h1>회원가입</h1>
	<hr>
	<c:if test="${pageContext.request.method == 'GET' }">
	<form method="POST">
		<p><input type="text" name="userid" placeholder="아이디" required autofocus></p>
		<p><input type="password" name="userpw" placeholder="비밀번호" required></p>
		<p><input type="text" name="username" placeholder="이름" required></p>
		<p><input type="email" name="email" placeholder="이메일" required></p>
		<p>
			<label><input type="radio" name="gender" value="남성">남성</label>
			<label><input type="radio" name="gender" value="여성">여성</label>
		</p>
		<p><input type="submit" value="회원가입"></p>
	</form>
	</c:if>
	<c:if test="${pageContext.request.method == 'POST' }">
		<jsp:useBean id="dto" class="member.MemberDTO" />
		<jsp:setProperty property="*" name="dto"/>
		
		<c:set var="row" value="${memberDAO.insert(dto) }" />
		<c:if test="${row != null }">
			<c:redirect url="/login.jsp" />
		</c:if>
		
		<script>
			alert('회원가입 등록 실패')
			history.go(-1)
		</script>
	</c:if>
	
</section>

</body>
</html>