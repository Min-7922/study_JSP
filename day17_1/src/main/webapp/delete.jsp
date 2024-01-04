<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:if test="${login.userid == 'admin' }">
	<c:set var="row" value="${memberDAO.delete(param.userid) }" />
	<c:if test="${row != 0 }">
		<c:redirect url="list.jsp" />
	</c:if>
</c:if>
<c:if test="${login.userid != 'admin' }">
	<c:set var="row" value="${memberDAO.delete(login.userid) }" />
	<c:if test="${row != 0 }">
		<% session.removeAttribute("login"); %>
		<c:redirect url="delete-complete.jsp" />
	</c:if>
</c:if>

</body>
</html>