<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DVDnBluray</title>

<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginForm.css">

</head>
<body>
	<div class="login_wrap">
		<div class="login">
			<form id="" name="" target="" action="" method="post">
				<fieldset>
					<legend class="blind">로그인</legend>
						<div class="htmlarea" id="htmlarea">
							<div class="input_box">
								<input type="text" id="id" name="id" maxlength="41" title="아이디" accesskey="L" placeholder="아이디(Alt+L)" class="int">
	                        </div>
	                        <div class="input_box">                            
	                            <input type="password" id="pw" name="pw" maxlength="16" title="비밀번호" placeholder="비밀번호" class="int">                            
	                        </div>
	                    </div>                    
	                    <span class="btn_login"><input type="submit" title="로그인" value="로그인"></span>
	                    <p class="btn_lnk">
	                        <a href="" target="_blank" class="btn_join">회원가입</a>
	                        <a href="" target="_blank" class="btn_id">아이디<span class="blind">찾기</span></a>/
	                        <a href="" target="_blank">비밀번호 찾기</a>
	                    </p>
	            </fieldset>
	        </form>
	    </div>
	</div>	
</body>