<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
[client -> server -> DB]  이때DB에서 사용되는게 쿼리스트링
'?'가 등장하면 이제부터 쿼리스트링이라는 뜻
쿼리스트링과 쿼리스트링은 각각 &기호를 이용하여 구분해준다 (내부에서 &를 split하여 사용하기 때문)
-->

<h1>request.getParameter(String name)</h1>
<hr>

<h3>주소에 쿼리스트링 형태로 파라미터를 추가할 수 있다</h3>
<a href="<%=request.getRequestURL()%>?guest=손님"><button>손님링크</button></a>

<%
	String guest = request.getParameter("guest");
%>

<h3>form태그에 입력한 값이 파라미터로 전송될 수 있다. 이때 input의 name을 맞춰야 한다</h3>

<form>
	<p><input type="text" name="guest" placeholder="직접 입력"></p>
	<p><input type="submit"></p>
</form>

<h3>guest : <%=guest %></h3>

</body>
</html>