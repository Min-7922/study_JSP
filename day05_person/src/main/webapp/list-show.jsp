<%@page import="person.PersonDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list-show.jsp</title>
<style>
	#content:hover {
		background-color: lightskyblue;
		cursor: pointer;
	}
	table a {
		display: block;
		text-decoration: none;
	}
</style>
</head>
<body>

<h1>person 목록</h1>
<!-- list에서 포워드를 걸어 이 페이지로 넘어오게 했기 때문에 -->
<!-- 대문페이지에서 클릭하여 이 페이지가 보일때 주소창은 list로 되어있다 -->
<hr>

<p>
	<a href="add-form.jsp"><button>추가</button></a>
</p>

<table border="1" cellpadding="10" cellspacing="0" width="500">
	<thead>
		<tr>
			<th>이름</th>
			<th>나이</th>
		</tr>
	</thead>
	<tbody>

<%
	List<PersonDTO> list = (List<PersonDTO>)request.getAttribute("list");
	
	for(PersonDTO dto : list) { %>
		<tr id="content">
			<td><a href="view.jsp?name=<%=dto.getName()%>"><%=dto.getName() %></a></td>
			<td><%=dto.getAge() %></td>
		</tr>
	<% }
	
%>
	
	</tbody>
</table>
</body>
</html>