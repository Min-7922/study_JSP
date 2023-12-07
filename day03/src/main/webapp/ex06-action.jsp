<%@page import="food.FoodService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	private FoodService service = new FoodService();
	// 객체 생성이 계속되면 안되므로 선언부에 적음
%>

<%-- 파라미터 받아서 객체로 저장하기 --%>
<jsp:useBean id="dto" class="food.FoodDTO"/>
<jsp:setProperty property="*" name="dto"/>


<%
	// 자바 객체의 함수를 호출하면서 파라미터 객체를 전달하기
	int row = service.add(dto);

	// row가 1이면 리스트에 값이 잘 들어갔다는 의미
	if(row != 0) {	// 함수의 반환값을 저장하기
		session.setAttribute("list", service.getList());
		// 객체(service에서 반환받은 list)를 list이름으로 저장
	}
	
	// 작업이 끝났으면 원래 페이지로 이동
	response.sendRedirect("ex06-form.jsp");
%>

<%--함수의 반환값을 저장하기 --%>

</body>
</html>