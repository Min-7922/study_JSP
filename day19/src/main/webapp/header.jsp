<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*, board2.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="memberDAO" value="${MemberDAO.getInstance() }" ></c:set>
<c:set var="boardDAO" value="${BoardDAO.getInstance() }" />
<c:set var="fileUtil" value="${FileUtil.getInstance() }" />


<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day19 - board</title>
<style>
	body {
		width: 100%;
		margin: 0;
	}
	.frame {
		width: 900px;
		margin: auto;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	.flex {
		display: flex;
	}
	ul {
		list-style: none;
		margin: 0;
		border: 1px solid #eee;
		padding-left: 0;
	}
	
	table#boardList a {
		display: block;
		width: 100%;
	}
	table#boardList a:hover {
		text-decoration: none;
	}
	table#boardList {
		border-collapse: collapse;
		width: 900px;
		border: 2px solid grey;
		margin: 20px auto;
	}
	table#boardList > thead {
		background-color: #fff5b1;
		border-bottom: 2px solid grey;
	}
	table#boardList > tbody > tr {
		transition-duration: 0.5s;
		border-bottom: 1px solid grey;
	}
	table#boardList > tbody > tr:hover {
		background-color: lightpink;
		transition-duration: 0.5s;
	}
	table#boardList td, 
	table#boardList th {
		text-align: center;
		padding: 10px;
	}
	.title {
		text-align: center;
		font-weight: bolder;
		margin: 50px;
	}
	.title > h1 > a:hover {
		color: skyblue;
	}
	
	table#boardList > thead > tr > th:nth-child(1) {width: 10%}
	table#boardList > thead > tr > th:nth-child(2) {width: 50%}
	table#boardList > thead > tr > th:nth-child(3) {width: 10%}
	table#boardList > thead > tr > th:nth-child(4) {width: 10%}
	table#boardList > thead > tr > th:nth-child(5) {width: 20%}
	
	table#boardList > tbody > tr > td:nth-child(2) {text-align: left;}
	
	.sb {
		width: 900px;
		margin: 20px auto;
		display: flex;
		justify-content: space-between;
	}
	.borderbt {
		border-bottom: 1px solid black;
	}
	.view {
		width: 900px;
		margin: 20px auto;
		border: 1px solid #eee;
	}
	.view > div {
		padding: 10px;
	}
	.view-writer > div {
		font-size: 16px;
		margin: 0 10px;
	}
	.viewCount {
		font-size: 12px;
		margin-left: 10px;
		margin-bottom: 10px;
	}
	.view-title {
		font-size: 25px;
		font-weight: bolder;
		margin: 20px 5px;
	}
	.view-content {
		height: 200px;
		margin: 20px 5px;
	}
	.view-ipaddr {
		text-align: right;
		font-size: 12px;
		color: grey;
	}
	nav > ul > li {
		flex: 1;
		text-align: center;
		padding: 10px;
	}
	nav > ul > li > a {
		display: block;
		width: 100%;
		height: 100%;
	}
	nav > ul > li:hover{
		background-color: lightpink;
		color: white;
		cursor: pointer;
	}
	
	
</style>
</head>
<body>

<header class="frame">
	<div class="title">
		<h1><a href="${cpath }">^_____^</a></h1>
	</div>
	<nav>
		<ul class="flex">
			<c:if test="${not empty login}">
				<li>접속 : ${login.userid }♥</li>
				<li><a href="${cpath }/logout.jsp">로그아웃</a></li>
			</c:if>
			<c:if test="${empty login}">
				<li><a href="${cpath }/login.jsp">로그인</a></li>
				<li><a href="${cpath }/join.jsp">회원가입</a></li>
			</c:if>
			<li><a href="${cpath }/">게시판</a></li>
		</ul>
	</nav>
</header>

</body>
</html>