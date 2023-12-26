<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String makeCookie = request.getParameter("makeCookie");

	if(makeCookie != null) {
		Cookie cookie = new Cookie("donotpopup", "1234");	// 값은 뭐든 상관없다 (빈 문자열은 추천하지않음 null값으로 인식할 수도 있기때문)
//		Cookie cookie = new Cookie("donotpopup", makeCookie);
		cookie.setMaxAge(20);
		response.addCookie(cookie);
	}
%>

<script>
	window.close()
</script>

</body>
</html>