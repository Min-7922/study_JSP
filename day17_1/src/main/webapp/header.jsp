<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*, board.*, reply.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath }" />

<c:set var="memberDAO" value="${MemberDAO.getInstance() }" />
<c:set var="boardDAO" value="${BoardDAO.getInstance() }" />
<c:set var="replyDAO" value="${ReplyDAO.getInstance() }" />

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>민정이^___^</title>
<style>
	body {
		margin: 0;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	ul {
		list-style: none;
		padding-left: none;
	}
	textarea {
		resize: none;
		margin: 0;
		padding: 10px;
	}
	.frame {
		width: 1000px;
		margin: auto;
	}
	.flex {
		display: flex;
	}
	.sb {
		justify-content: space-between;
	}
	.nav1-ul {
		padding: 3px 10px;
		height: 30px;
		background-color: #eee;
	}
	.nav1-ul > li {
		margin: 0 10px;
	}
	.nav1-ul > li > a {
		font-size: 14px;
		font-weight: bold;
		line-height: 30px;
	}
	.nav1-ul > li > a:hover {
		color: red;
	}
	.nav-logo {
		height: 150px;
		text-align: center;
	}
	.nav-logo > p {
		line-height: 150px;
	}
	.nav-logo > p > a {
		font-size: 50px;
		font-weight: bolder;
	}
	.index-img, .index-img ~ div {
		text-align: center;
		margin-top: 10px;
	}
	
	nav > ul {
		height: 50px;
		background-color: #fff5b1;
		padding: 0;
	}
	nav > ul > li {
		flex: 1;
		text-align: center;
	}
	nav > ul > li > a {
		display: block;
		width: 100%;
		height: 100%;
		transition-duration: 0.3s;
		font-size: 20px;
		font-style: italic;
		line-height: 50px;
	}
	nav > ul > li > a:hover {
		cursor: pointer;
		background-color: orange;
		transition-duration: 0.3s;
	}
	.userid {
		font-size: 16px;
	}
	.userid + div > a {
		font-size: 13px;
		color: red;
		margin: 0 5px;
	}
	table {
		border: 2px solid grey;
		border-collapse: collapse;
		margin: auto;
	}
	thead {
		background-color: lightblue;
	}
	td, th {
		border: 1px solid grey;
		padding: 10px;
	}
	.board-frame {
		border: 2px solid black;
	}
	.board-frame1, .board-frame2 {
		border-bottom: 1px solid grey;
		
		
		margin: 0 15px;
	}
	.board-frame1 > div {
		font-size: 13px;
		height: 40px;
		line-height: 40px;
	}
	.board-frame2 {
		margin: 0 15px;
		height: 60px;
		font-size: 23px;
		font-weight: 600;
		line-height: 60px;
	}
	.board-frame3 {
		height: 180px;
		margin: 15px;
		font-size: 17px;
		font-weight: lighter;
	}
	.warning {
		margin: auto;
	}
	.warning > div {
		font-size: 20px;
		text-align: center;
	}
	.reply-input {
		margin: 30px 0;
	}
	.reply-input > form {
		justify-content: left;
		align-items: center;
	}
	.reply-input > form > div {
		margin: 0 5px;
	}
	.reply-input > form > div:first-child {
		background-color: skyblue;
		padding: 0 10px;
		width: fit-content;
		height: 50px;
		line-height: 50px;
	}
	.reply-input > form > div:nth-child(2) {
		margin-top: 4px;
	}
	
	.reply-input > form > div:nth-child(3) > input {
		height: 50px;
	}
	.reply-box {
		border: 1px solid grey;
		padding: 10px;
	}
	.reply-box > ul > li {
		margin: 0 5px;
	}
	.reply-box > div {
		text-align: center;
		margin-left: 10px;
		padding: 10px;
	}
	.footer {
		height: 200px;
	}
	
</style>
</head>
<body>

<header class="frame">
	<div>
		<ul class="flex sb nav1-ul">
			<c:if test="${empty login }">
				<li><a href="${cpath }/login.jsp">로그인</a></li>
				<li><a href="${cpath }/join.jsp">회원가입</a></li>
			</c:if>
			<c:if test="${not empty login }">
				<li class="flex">
					<div class="userid">접속계정 : ${login.userid }</div>
					<div><a href="logout.jsp">[로그아웃]</a></div>
				</li>
				<li>
					<c:if test="${login.userid == 'admin' }">
						<a href="list.jsp" style="margin: 0 15px;">계정 목록</a>
					</c:if>
					<a href="delete-complete.jsp" style="text-align: right;">회원탈퇴</a>
				</li>
			</c:if>
		</ul>
	</div>
	<div class="frame nav-logo">
		<p><a href="${cpath }/">BOARD</a></p>
	</div>
	<nav class="frame">
		<ul class="flex">
			<li><a href="${cpath }/board.jsp" style="font-weight: bold;">전체글보기</a></li>
			<li><a href="${cpath }/board.jsp?category=10대">10대 게시판</a></li>
			<li><a href="${cpath }/board.jsp?category=20대">20대 게시판</a></li>
			<li><a href="${cpath }/board.jsp?category=30대">30대 게시판</a></li>
		</ul>
	</nav>
</header>

