<!-- 2017. 2. 22. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/joinForm-ValidationCheck.js"></script>

</head>
<body>
	이용약관 동의 : <input type="checkbox" id="myCheck"> <br><br> 
	이름 : <input type="text" id="name"> <br>	<br> 
	아이디 : <input type="text" id="id"> <button id="idCheck">중복확인</button><em id="isPossible"></em> <br><br>
				<input type="hidden" id="isDuplicated" value="true">
	패스워드 : <input type="text" id="password" name="pass">
	<p>
		<button id="myButton">try it</button>
	</p>
</body>
</html>