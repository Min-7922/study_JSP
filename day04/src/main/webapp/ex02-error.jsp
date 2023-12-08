<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <!-- isErrorPage="true" : 이 페이지는 에러페이지라는 뜻
    이 페이지가 활성화되어 있어야 예외상황을 처리할 수 있다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02-error.jsp</title>
</head>
<body>

<!-- form에서 action을 요청했지만 응답은 error가 한다 = forwarding -->
<!-- 개발자가 클라이언트에서 요청한 내용을 보여주고싶지 않거나 다른 내용을 보여주고 싶을 때 사용 -->

<%
	String msg = exception.getMessage();
%>

<h3><%=msg %></h3>
<h3>정수를 입력해 주세요~!</h3>
<a href="ex02-form.jsp"> <button>돌아가기</button> </a>

</body>
</html>