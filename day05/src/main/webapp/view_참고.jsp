<%@page import="book.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
</head>
<body>

<h1>${dao.selectOne(param.idx).title }</h1>
<h2>
<%=
	((BookDAO)application.getAttribute("dao")).selectOne(
		Integer.parseInt(request.getParameter("idx"))
	).getTitle()
	
	// application에 등록된 dao라는 이름의 객체를 불러온다
	// object 타입에서 BookDAO 타입으로 다운캐스팅 한다
	// 불러온 dao의 selectOne을 호출한다
	// 호출하면서 전달해야 하는 인자는 파라미터에서 가져온다
	// 파라미터는 문자열이므로 Integer.parseInt()를 이용하여 파싱한다
	// 불러온 dto의 title을 getter로 호출하여 화면에 출력한다
%>
</h2>


<hr>

<table>
	<tr>
		<th></th>
		<td></td>
	</tr>
	<tr>
		<th></th>
		<td></td>
	</tr>
	<tr>
		<th></th>
		<td></td>
	</tr>
	<tr>
		<th></th>
		<td></td>
	</tr>
	<tr>
		<th></th>
		<td></td>
	</tr>
</table>

</body>
</html>