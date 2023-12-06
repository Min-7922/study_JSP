<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>

<h1>파라미터를 활용한 처리</h1>

<form>
	<p><input type="text" name="name" placeholder="이름" required autofocus></p>
	<p><input type="number" name="age" min="0" max="100" placeholder="나이" required></p>
	<p>
		<input type="submit">
		<a href="<%=request.getRequestURL() %>">
			<input type="button" value="초기화"></a>
	</p>
</form>

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

</body>
</html>