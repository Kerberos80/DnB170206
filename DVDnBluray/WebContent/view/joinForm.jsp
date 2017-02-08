<!-- 2017. 1. 12. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- CSS -->
<style type="text/css">
	/* 회원가입 입력 테이블 */
	table { border-collapse: collapse; } /* content 가로크기 1297px*/
	table, tr, td { border: 1px solid #bcbcbc; }
	.left_title { text-align: right; widht: 30%;}
	
	/* 버튼 */
	.btn { padding: 6px 12px; font-size: 14px; font-weight: 400; ine-height: 1.42857143; text-align: center; white-space: nowrap; vertical-align: middle; -ms-touch-action: manipulation;
    		touch-action: manipulation; cursor: pointer; -webkit-user-select: none; -moz-user-select: none; -ms-user-select: none;
    		user-select: none; background-image: none; border: 1px solid transparent; border-radius: 4px; }	
	.btn-submit { color: #fff; background-color: #d9534f; border-color: #d43f3a; }
	.btn-submit:hover { color: #fff; background-color: #c9302c; border-color: #ac2925; }
	.btn-reset { color: #fff; background-color: #5cb85c; border-color: #4cae4c; }
	.btn-reset:hover { color: #fff; background-color: #449d44; border-color: #398439; }	
</style>

</head>
<body>
	<form action="" method="post">
		<table>
			<tr>
				<td class="left_title"><em style="color: red">*</em>이름</td><td><input type="text" name="name"></td>		
			</tr>
			<tr>
				<td class="left_title"><em style="color: red">*</em>아이디</td><td><input type="text" name="id"></td>				
			</tr>
			<tr>
				<td class="left_title"><em style="color: red">*</em>비밀번호</td><td><input type="text" name="pw"></td>				
			</tr>
			<tr>
				<td class="left_title">비밀번호확인</td><td><input type="text" name="pwConf"></td>				
			</tr>
			<tr>
				<td class="left_title"><em style="color: red">*</em>주민등록번호</td><td><input type="text" name="rrn"></td>				
			</tr>
			<tr>
				<td class="left_title"><em style="color: red">*</em>연락처</td><td><input type="text" name="phone"></td>				
			</tr>
			<tr>
				<td class="left_title">E-mail</td><td><input type="text" name="email"></td>				
			</tr>
			<tr>
				<td class="left_title"><em style="color: red">*</em>주소</td><td><input type="text" name="adress"></td>				
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input class="btn btn-submit" type="submit" value="등록">&nbsp;&nbsp;
					<input class="btn btn-reset" type="reset" value="취소">
				</td>
			</tr>			
		</table>
	</form>
	

</body>
</html>