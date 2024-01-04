<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<section class="frame">
	<c:if test="${empty login }">
		<div class="index-img">
			<img src="${cpath }/image/검볼_delete.jpg" height="200">
		</div>
		<div>회원 탈퇴를 완료했습니다(ㅠ.ㅠ)</div>
		<div><a href="${cpath }/"><button>메인화면으로 돌아가기</button></a></div>
	</c:if>
	
	<c:if test="${not empty login }">
		<div class="index-img">
			<img src="${cpath }/image/검볼_delete.jpg" height="200">
		</div>
		<div>정말로 탈퇴하시겠습니까?(ㅠ.ㅠ)</div>
		<div>
			<a href="${cpath }/delete.jsp"><button>탈퇴하기</button></a>
			<a href="${cpath }/"><button>메인화면으로 돌아가기</button></a>
		</div>
	</c:if>
</section>

<footer class="frame footer">
	<div></div>
</footer>

</body>
</html>