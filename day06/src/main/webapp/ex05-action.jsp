<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-action.jsp</title>
</head>
<body>

<h1>ex05-action.jsp</h1>
<hr>

<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String adult = age >= 20 ? "성인" : "미성년자";
	
	String msg = String.format("%s님은 %d살이고, %s입니다", name, age, adult);
	
	request.setAttribute("msg", msg);
//	request.getRequestDispatcher("ex05-result.jsp").forward(request, response);
%>

<jsp:forward page="ex05-result.jsp"/>
<!-- 
	위 자바부분의 주석처리한 부분과 같은 내용
	=> 위 자바코드를 태그로도 사용이 가능하며 코드가 짧아진다!
 -->

</body>
</html>