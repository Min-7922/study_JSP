<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="phonebook.PhoneBookDTO"/>
<jsp:setProperty property="*" name="dto"/>

<c:set var="row" value="${dao.insert(dto) }" />

<c:if test="${row == 1 }">
	<c:redirect url="/list.jsp" />
	<%--c:redirect에서는 cpath경로를 명시하지 않는다 --%>
</c:if>

<c:if test="${row == 0 }" >
	<script>
		alert('추가 실패')
		history.back()
		<%-- history.back() : 브라우저 뒤로가기 버튼과 같은 역할 (입력하던 화면으로 돌아갈 수 있음)--%>
		
		<%--location.href = '${cpath}'--%>
	</script>
</c:if>

</body>
</html>