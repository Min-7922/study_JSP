<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section class="frame">

<c:if test="${pageContext.request.method == 'GET' }">
	<form method="POST">
		<p><input type="text" name="userid" placeholder="아이디" required="required" autofocus></p>
		<p><input type="password" name="userpw" placeholder="비밀번호" required="required"></p>
		<p><input type="number" name="age" placeholder="나이" required="required"></p>
		<p><input type="submit" value="회원가입"></p>
	</form>
</c:if>

<c:if test="${pageContext.request.method == 'POST' }">
	<jsp:useBean id="dto" class="member.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="row" value="${memberDAO.insert(dto) }" />
	
	<c:if test="${row != -1 }">
		<c:redirect url="/login.jsp" />
	</c:if>
	
	<script>
		alert('이미 존재하는 아이디 입니다')
		history.go(-1)
	</script>
</c:if>

</section>

<footer class="frame footer">
	<div></div>
</footer>
</body>
</html>