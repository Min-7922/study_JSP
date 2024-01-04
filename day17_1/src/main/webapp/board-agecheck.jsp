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

<% 
	MemberDTO login = (MemberDTO)session.getAttribute("login");
	int age = login.getAge();
	String strAge = (age/10)*10 + "대"; 
%>

<c:set var="strAge" value="<%=strAge %>" />
<c:if test="${ strAge == param.category }">
	<c:redirect url="/board-write.jsp" />
</c:if>

<script>
	alert('작성이 불가한 게시판 입니다')
	history.go(-1)
</script>

</body>
</html>