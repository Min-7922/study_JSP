<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:if test="${empty param }">
	<c:set var="list" value="${boardDAO.selectList() }" />
</c:if>
<c:if test="${not empty param }">
	<c:set var="list" value="${boardDAO.selectCategory(param.category) }" />
</c:if>

<section class="frame">
	<table>
		<c:forEach var="dto" items="${list }">
			<tr>
				<td width="30px" align="center">${dto.idx }</td>
				<td class="flex sb" width="500px">
					<div>
						<a href="${cpath }/view.jsp?idx=${dto.idx}">${dto.title }</a>
						<span style="color: red;">[${dto.reply_count }]</span>
					</div>
					<div>${dto.writeDate }</div>
				</td>
				<td class="board-writer" width="100px">${dto.writer }</td>
			</tr>
		</c:forEach>
	</table>
	
	<c:if test="${not empty login }">
		<div class="flex sb">
			<div></div>
			<c:if test="${not empty param }">
				<div><a href="${cpath }/board-agecheck.jsp?category=${param.category}"><button>작성하기</button></a></div>
			</c:if>
			<c:if test="${empty param }">
				<div><a href="${cpath }/board-write.jsp"><button>작성하기</button></a></div>
			</c:if>
		</div>
	</c:if>
</section>

<footer class="frame footer">
	<div></div>
</footer>

</body>
</html>