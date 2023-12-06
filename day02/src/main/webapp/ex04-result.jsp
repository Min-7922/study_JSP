<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04-form.jsp</title>
</head>
<body>

<h1>ex04-form.jsp</h1>
<hr>

<%
	String name_java = request.getParameter("name"); // 전송된 input의 [name=""]이 getParameter를 통해 [String name_java]에 전송
	String age_java = request.getParameter("age");	
	String msg = "";
	
	if(name_java != null) {
		String adult = Integer.parseInt(age_java) >= 20 ? "성인" : "미성년자";
		msg = String.format("%s님의 나이는 %s살이고, %s 입니다", name_java, age_java, adult);
	}
%>

<h3><%=msg %></h3>
<a href="ex04-form.jsp"><button>다시 입력</button></a>

</body>
</html>