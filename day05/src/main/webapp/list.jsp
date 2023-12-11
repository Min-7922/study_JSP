<%@page import="book.BookDTO"%>
<%@page import="book.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<style>
	tr > td:first-child {
		text-align: center;
	}
</style>
</head>
<body>
<h1>도서 목록</h1>
<hr>

<p>
	<a href="add.jsp"><button style="background-color: black; color: white; cursor: pointer;">도서 추가</button></a>
</p>

<table border=1; cellspacing="0" cellpadding="10">
	<thead>
		<tr bgcolor="#fff5b1">
			<th>번호</th>
			<th>제목</th>
			<th>저자</th>
			<th>출판사</th>
			<th>출판일자</th>
		</tr>
	</thead>
	<tbody>

<%
	BookDAO dao = (BookDAO) application.getAttribute("dao");
	if(dao == null) {
		dao = new BookDAO();
		application.setAttribute("dao", dao);
	}
	for(BookDTO dto : dao.selectList()) {
	%>
	<tr>
		<td><%=dto.getIdx() %></td>
		<td>
			<a href="view.jsp?idx=<%=dto.getIdx()%>">
				<%=dto.getTitle() %>
			</a>
		</td>
		<td><%=dto.getAuthor() %></td>
		<td><%=dto.getPublisher() %></td>
		<td><%=dto.getPublishDate() %></td>
	</tr>
	<%	
	}
%>
	</tbody>
</table>

</body>
</html>