<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>게시글 읽기</h1>
<hr>

<%
	int[] arr = {4, 8, 2, 7, 6};
	out.print("<p>");
	for (int i=0; i<arr.length; i++) {
		out.print(arr[i] + " ");
	}
	out.print("</p>");

%>

<pre>
	1979년 12월 12일. 대한민국 육군 내 불법 사조직인 하나회의 쌍두마차
	전두환과 노태우가 주도하여 일으킨 군사 쿠데타로 제5공화국의 실질적인 시작이 되는 사건이다.
</pre>

<jsp:include page="ex04-list.jsp"/>

</body>
</html>