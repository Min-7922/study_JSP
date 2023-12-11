<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view-show.jsp</title>
<style>
	table {
		border-collapse: collapse;
		border: 2px solid grey;
	}
	tr, th, td {
		border: 1px solid grey;
		padding: 10px;
	}
</style>
</head>
<body>

<h1>${dto.title } 상세보기</h1>
<hr>

<table>
	<tr>
		<th>번호</th>
		<td>${dto.idx }</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${dto.title }</td>
	</tr>
	<tr>
		<th>저자</th>
		<td>${dto.author }</td>
	</tr>
	<tr>
		<th>출판사</th>
		<td>${dto.publisher }</td>
	</tr>
	<tr>
		<th>출판일자</th>
		<td>${dto.publishDate }</td>
	</tr>
</table>

<p>
	<a href="list.jsp"><button>목록</button></a>
	<a href="delete.jsp?idx=${dto.idx }"><button>삭제</button></a>
</p>

</body>
</html>