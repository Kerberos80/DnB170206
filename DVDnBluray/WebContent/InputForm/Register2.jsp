<!-- 2017. 1. 11. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!--RegisterWrap CSS  -->
<style type="text/css">
	* { padding: 0; margin: 0;}	

	#RegisterWrap { 
		font-family: '나눔고딕',NanumGothic,Malgun Gothic,AppleSDGothicNeo,Apple Gothic,dotum,Tahoma,Geneva,Helvetica,sans-serif;
		/*font-size: 12px;*/ position: relative; width: 727px; height: 843px; background-color: #BFE4C1; 	}
		
	#RegisterWrap form { margin: 15px 0 20px; /*border: 0; font-size: 100%;*/ font-size: 100%; display: block; }
	
	.control-group { margin-bottom: 5px; }
	
	.control-group:before, .control-group:after { display: table; line-height: 0; content: ""; } 
	
	.control-group:after { clear: both; }    
	
	.xm .form-horizontal .control-label {
    float: left;
    width: 160px;
    padding-top: 5px;
    text-align: right;
}



</style>

</head>
<body>
	<div id="RegisterWrap">
		<h1 style="border-bottom: 1px solid #ccc">회원가입</h1>
		<form id="fo_insert_member" action="./" method="post"
			enctype="multipart/form-data" class="form-horizontal">
			<div class="control-group">
				<label for="user_id" class="control-label"><em style="color: red">*</em> 아이디</label>
				<div class="controls">
					<input type="text" name="user_id" id="user_id" value="" required="">
				</div>
			</div>
			<div class="control-group">
				<label for="password" class="control-label"><em style="color: red">*</em> 비밀번호</label>
				<div class="controls">
					<input type="password" name="password" id="password" value="" required="">
					<p class="help-inline">비밀번호는 6자리 이상이어야 하며 영문과 숫자를 반드시 포함해야 합니다.</p>
				</div>
			</div>
			<div class="control-group">
				<label for="password2" class="control-label"><em style="color: red">*</em> 비밀번호 확인</label>
				<div class="controls">
					<input type="password" name="password2" id="password2" value="" 	required="">
				</div>
			</div>
			<div class="control-group">
				<label for="user_name" class="control-label"><em style="color: red">*</em> 이름</label>
				<div class="controls">
					<input type="text" name="user_name" id="user_name" value="">
				</div>
			</div>
			<div class="control-group">
				<label for="nick_name" class="control-label"><em style="color: red">*</em> 닉네임</label>
				<div class="controls">
					<input type="text" name="nick_name" id="nick_name" value="">
				</div>
			</div>
			<div class="control-group">
				<label for="email_address" class="control-label"><em style="color: red">*</em> 이메일 주소</label>
				<div class="controls">
					<input type="email" name="email_address" id="email_address" value="">
				</div>
			</div>
			<div class="control-group">
				<label for="find_account_question" class="control-label"><em style="color: red">*</em> 비밀번호 찾기 질문/답변</label>
				<div class="controls">
					<select name="find_account_question" id="find_account_question" style="display: block; margin: 0 0 8px 0">
						<option value="1">다른 이메일 주소는?</option>
						<option value="2">나의 보물 1호는?</option>
						<option value="3">나의 출신 초등학교는?</option>
						<option value="4">나의 출신 고향은?</option>
						<option value="5">나의 이상형은?</option>
						<option value="6">어머니 성함은?</option>
						<option value="7">아버지 성함은?</option>
						<option value="8">가장 좋아하는 색깔은?</option>
						<option value="9">가장 좋아하는 음식은?</option>
					</select>
					<input type="text" name="find_account_answer" id="find_account_answer" title="비밀번호 찾기 답변" value="">
				</div>
			</div>
			<div class="control-group">
				<label for="profile_image" class="control-label">프로필 사진</label>
				<div class="controls">
					<input type="hidden" name="__profile_image_exist" value="false">
					<input type="file" name="profile_image" id="profile_image" value="" accept="image/*">
					<p class="help-block">가로 제한 길이: 150px, 세로 제한 길이: 150px</p>
				</div>
			</div>
			<div class="control-group">
				<div class="control-label">메일링 가입</div>
				<div class="controls" style="padding-top: 5px">
					<label for="mailingYes">
						<input type="radio" name="allow_mailing" id="mailingYes" value="Y"> 예
					</label>
					<label for="mailingNo">
						<input type="radio" name="allow_mailing" 	id="mailingNo" value="N" checked="checked"> 아니오
					</label>
				</div>
			</div>
			<div class="control-group">
				<div class="control-label">쪽지 허용</div>
				<div class="controls" style="padding-top: 5px">
					<label for="allow_Y">
						<input type="radio" name="allow_message" value="Y" checked="checked" id="allow_Y"> 모두 허용 
					</label>
					<label for="allow_F">
						<input type="radio" name="allow_message" value="F" id="allow_F"> 등록된 친구들만 허용 
					</label>
					<label for="allow_N">
						<input type="radio" name="allow_message" value="N" id="allow_N"> 모두 금지 
					</label>
				</div>
			</div>
			<div class="btnArea" style="border-top: 1px solid #ccc; padding-top: 10px">
				<input type="submit" value="등록" class="btn btn-inverse pull-right">
				<a href="http://osmanias.com/index" class="btn pull-left">취소</a>
			</div>
			<input type="hidden" name="captchaType" value="inline">
		</form>
	</div>

</body>
</html>