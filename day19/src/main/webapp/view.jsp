<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="dto" value="${boardDAO.selectOne(param.idx) }"></c:set>
<section class="frame">
	<div class="view">
		<div class="view1 borderbt">
			<div class="view-writer flex sb">
				<div style="font-size: 17px; font-weight: bold;">작성자 : ${dto.writer }</div>
				<div>${dto.writeDate }</div>
			</div>
			<div class="viewCount">조회수 : ${dto.viewCount }</div>
		</div>
		<div class="view-title">${dto.title }</div>
		<div class="view-content">${dto.content }</div>
		
		<div class="view-image">
			<c:if test="${not empty dto.image }">
				<img src="${cpath }/reviewImage/${dto.image }" height="150px">
			</c:if>
		</div>
		
		<div class="view-ipaddr">${dto.ipaddr }</div>
	</div>
</section>

</body>
</html>