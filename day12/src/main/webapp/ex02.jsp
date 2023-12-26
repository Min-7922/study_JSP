<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	.black {
		background-color: black;
		color: white;
	}
	.lime {
		background-color: black;
		color: #00FF00;
	}
	.aqua {
		background-color: black;
		color: #00FFFF;
	}
	.lightpink {
		background-color: lightpink;
		color: black;
	}
	.lightgrey {
		background-color: #eee;
		color: black;
	}
	pre {
		font-size: 16px;
	}
</style>
</head>
<body class="${cookie.theme.value }">

<h1>쿠키를 활용한 색상 테마 설정</h1>
<hr>

<form action="ex02-action.jsp">
	<select name="theme">
		<option>white</option>
		<option ${cookie.theme.value == 'black' ? 'selected' : '' }>black</option>
		<option ${cookie.theme.value == 'lime' ? 'selected' : '' }>lime</option>
		<option ${cookie.theme.value == 'aqua' ? 'selected' : '' }>aqua</option>
		<option ${cookie.theme.value == 'lightpink' ? 'selected' : '' }>lightpink</option>
		<option ${cookie.theme.value == 'lightgrey' ? 'selected' : '' }>lightgrey</option>
	</select>
	<input type="submit">
</form>

<fieldset>
	<legend>lorem</legend>
	<pre>1979년 12월 12일, 수도 서울 군사반란 발생
	그날, 대한민구그이 운명이 바뀌었다.
	
	쿠키는 문자열 형태를 저장할 수 있는데 띄어쓰기 및 특수문자를 넣게되면 에러가 뜬다.
만약 띄어쓰기나 특수문자를 포함하고 싶다면 URLEncoding을 수행하여 저장해야 한다.

- 서버에서 특정 값을 문자열로 생성하여 클라이언트에 보관하는 형식의 데이터
- 문자열 형태로 저장해두면, 다음번 방문 시 서버가 값을 회수하여 활용할 수 있다
- 쿠키는 일정시간이 지나가면 자동으로 소멸된다
- 쿠키는 클라이언트(브라우저)가 저장하기 떄문에, 브라우저마다 다른 내용을 저장한다
	</pre>
</fieldset>



<div>
	<button id="checkCookie">쿠키 확인</button>
</div>

<script>
	checkCookie.onclick = function() {
		alert(document.cookie)		
	}
</script>

</body>
</html>























