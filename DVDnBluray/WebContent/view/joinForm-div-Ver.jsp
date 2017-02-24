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
* { 	padding: 0 ; margin: 0 ; 
		font-family: '나눔고딕',NanumGothic,Malgun Gothic,AppleSDGothicNeo,Apple Gothic,dotum, 
						Tahoma,Geneva,Helvetica,sans-serif; }
body { word-wrap: break-word; }
section { display: block; /*margin: 0; padding: 0;*/ border: 0;}
/*div { display: block; }*/
.xm {	width: 729px; position: relative; top: 30px; left: 10%; }
.xm h1 { font-size: 22px; }
.xm, .xm input, .xm textarea, .xm select, .xm button, .xm table { font-size: 13px; }
.xm .agreement { border: 1px solid #ddd; padding: 15px 15px 10px 15px; border-radius: 5px; background: #f8f8f8; 
						margin-bottom: 15px; }
.xm .agreement>.text { max-height: 200px; overflow: auto; }
.xm .agreement>.confirm { padding: 10px 0 0 0; margin: 10px 0 0 0; border-top: 1px dotted #ccc; }
.xm label .xm input, .xm button, .xm select, .xm textarea { /*.xm input, .xm button, .xm select, .xm textarea*/ 
	display: block; margin-bottom: 5px; font-weight: normal; line-height: 20px; cursor: default; }
.xm .form-horizontal input { display: inline-block; margin-bottom: 0; vertical-align: middle; }	/*인풋태그와 동레벨 요소 높이 맞추기*/
.xm .form-horizontal .control-group:before, .xm .form-horizontal .control-group:after { display: table; line-height: 0; content: ""; }	
.xm .form-horizontal .control-group:after { clear: both; }
.xm .form-horizontal .control-label { float: left; width: 160px; padding-top: 5px; text-align: right; }
.xm em { font-style: normal; }
.xm .form-horizontal .controls { margin-left: 180px; margin-bottom: 5px;}
.xm .form-horizontal input, .xm .form-horizontal select  { /*.xm .form-horizontal textarea, .xm .form-horizontal .help-inline, .xm .form-horizontal .input-prepend, .xm .form-horizontal .input-append*/
    display: inline-block; margin-bottom: 0; vertical-align: middle; }
.xm input[type="text"], .xm input[type="password"], .xm input[type="email"], .xm input[type="text"] {
    background-color: #ffffff; border: 1px solid #cccccc; height: 20px; padding: 4px 6px; line-height: 20px; color: #555555;
    margin-left: 0; width: 206px;
    border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075); -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075); -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);   
    transition: border linear 0.2s, box-shadow linear 0.2s; -webkit-transition: border linear 0.2s, box-shadow linear 0.2s; -moz-transition: border linear 0.2s, box-shadow linear 0.2s; -o-transition: border linear 0.2s, box-shadow linear 0.2s; }
.xm input[type="file"], .xm input[type="image"], .xm input[type="submit"], .xm input[type="reset"], .xm input[type="button"], .xm input[type="radio"], .xm input[type="checkbox"] {
    width: auto; }    
.xm input[readonly] { cursor: not-allowed; background-color: #eeeeee; }
.xm .btn {
    font-size: 12px; font-family: inherit; text-align: center; text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); 
    /*vertical-align: middle;*/ cursor: pointer; color: #333333;
    margin: 0; padding: 0 12px!important; overflow: visible; text-decoration: none!important; line-height: 24px!important; 
    background-color: white; background-image: linear-gradient(to bottom, #ffffff, #e6e6e6); background-repeat: repeat-x;
    border: 1px solid #cccccc; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border-bottom-color: #b3b3b3;
    border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px;
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);    
}
.xm input.btn { height: 26px!important; }
.xm .btn:hover, .xm .btn:focus {
    color: #333333; background-position: 0 -15px;
    transition: background-position 0.1s linear; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; }
.xm .btn:hover, .xm .btn:focus, .xm .btn:active, .xm .btn.active, .xm .btn.disabled, .xm .btn[disabled] { 
	background-color: #e6e6e6; }	
.xm .btnArea { clear: both; margin: 10px 0; padding: 0; text-align: right; zoom: 1; }
.xm .btnArea:after { clear: both; display: block; content: ""; }
.xm .btn-inverse {
    color: #ffffff!important; text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
    background-image: linear-gradient(to bottom, #444444, #222222);
    background-image: -moz-linear-gradient(top, #444444, #222222);
    background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#444444), to(#222222));
    background-image: -webkit-linear-gradient(top, #444444, #222222);
    background-image: -o-linear-gradient(top, #444444, #222222);
    background-repeat: repeat-x;   
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);  
}
.xm .pull-right { float: right; }
.xm .pull-left { float: left; }
.xm a { text-decoration: none; }    
 /* .xm .controls input { margin-left: 0; width: 206px; } */
</style>

<!-- JavaScript -->
<script type="text/javascript"> 
</script>

</head>
<body>
	<section class="xm">		
		<!-- 일치하는 콘텐츠 728 x 90 리더보드 -->				
		<h1 style="border-bottom: 1px solid #ccc">회원가입</h1>
		<br>
		<form id="fo_insert_member" action="./" method="post" enctype="multipart/form-data" class="form-horizontal">
			<input type="hidden" name="error_return_url" value="/index.php?act=dispMemberSignUpForm">
				<input type="hidden" name="mid" value="index">
				<input type="hidden" name="vid" value=""><input type="hidden" name="ruleset" value="@insertMember">
				<input type="hidden" name="act" value="procMemberInsert">
				<input type="hidden" name="xe_validator_id" value="modules/member/skins">
				<input type="hidden" name="success_return_url" value="http://osmanias.com/index.php?act=dispMemberInfo&amp;mid=index">
			<div class="agreement">
				<div class="text">
					<div>은 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.</div>
					<div>&nbsp;</div>
					<div>은 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</div>
					<div>&nbsp;</div>
					<div>○ 본 방침은부터 2015년 12월 1일부터 시행됩니다.</div>
					<div>&nbsp;</div>
					<div><span style="font-size: 16px;"><strong>1. 개인정보의 처리 목적</strong></span></div>
					<div>('http://osmanias.com/'이하 'OS MANIA')은 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할	예정입니다.</div>
					<div>&nbsp;</div>
					<div>가. 홈페이지 회원가입 및 관리</div>
					<div>회원 가입의사 확인, 회원자격 유지·관리, 서비스 부정이용 방지, 각종 고지·통지, 고충처리, 분쟁 조정을 위한 기록 보존 등을 목적으로 개인정보를 처리합니다.</div>
					<div>&nbsp;</div>
					<div><span style="font-size: 16px;"><strong>2. 이용자 환경 정보 수집</strong></span></div>
					<div>은 서비스 관리 및 부정 이용자를 감독하기위해 이용자의 환경정보를 수집합니다.</div>
					<div>개인정보 항목 : 접속 IP 정보, 쿠키, 서비스 이용 기록, 접속 로그</div>
					<div>수집방법 : 생성정보 수집 툴을 통한 수집</div>
					<div>보유근거 : 서비스 부정이용 방지</div>
					<div>보유기간 : 3년</div>
					<div>관련법령 : 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</div>
					<div>&nbsp;</div>
					<div><span style="font-size: 16px;"><strong>3. 개인정보의 처리 및 보유 기간</strong></span></div>
					<div>① 은 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의 받은 개인정보 보유,이용기간 내에서 개인정보를 처리,보유합니다.</div>
					<div>&nbsp;</div>
					<div>② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.</div>
					<div>&nbsp;</div>
					<div>가. 홈페이지 회원가입 및 관리</div>
					<div>홈페이지 회원가입 및 관리와 관련한 개인정보는 수집.이용에 관한 동의일로부터 (탈퇴시 지체없이 파기) 위 이용목적을 위하여 보유.이용됩니다.</div>
					<div>&nbsp;</div>
					<div><span style="font-size: 16px;"><strong>4. 정보주체의 권리,의무 및 그 행사방법 이용자는 개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다.</strong></span></div>
					<div>① 정보주체는 에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.</div>
					<div>개인정보 열람요구</div>
					<div>오류 등이 있을 경우 정정 요구</div>
					<div>삭제요구</div>
					<div>처리정지 요구</div>
					<div>② 제1항에 따른 권리 행사는 에 대해 개인정보 보호법 시행규칙 별지 제8호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 은(는) 이에 대해 지체 없이 조치하겠습니다.</div>
					<div>	<br></div>
					<div>③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 은 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.</div>
					<div><br></div>
					<div>④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.</div>
					<div>&nbsp;</div>
					<div><span style="font-size: 16px;"><strong>5. 개인정보 처리 (수집)</strong></span></div>
					<div>은 다음의 개인정보 항목을 처리하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>가. 홈페이지 회원가입 및 관리</div>
					<div>필수항목 : 비밀번호 질문과 답, 비밀번호, 닉네임, 이름, 이메일</div>
					<div>선택항목 : 생년월일, 홈페이지 주소, 블로그 주소, SNS 계정번호</div>
					<div>&nbsp;</div>
					<div><span style="font-size: 16px;"><strong>6. 개인정보의 파기</strong></span></div>
					<div>은 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.</div>
					<div>&nbsp;</div>
					<div>- 파기절차</div>
					<div>이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.</div>
					<div><br></div>
					<div>- 파기기한</div>
					<div>이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.</div>
					<div><br></div>
					<div>- 파기방법</div>
					<div>전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.</div>
					<div>종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</div>
					<div>&nbsp;</div>
					<div><span style="font-size: 16px;"><strong>7. 개인정보의	안전성 확보 조치</strong></span></div>
					<div>은 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>1. 내부관리계획의 수립 및 시행</div>
					<div>개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>2. 개인정보의 암호화</div>
					<div>이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 	데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>3. 해킹 등에 대비한 기술적 대책</div>
					<div>해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>4. 개인정보에 대한 접근 제한</div>
					<div>개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>5. 접속기록의 보관 및 위변조 방지</div>
					<div>개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>6. 문서보안을 위한 잠금장치 사용</div>
					<div>개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>7. 비인가자에 대한 출입 통제</div>
					<div>개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>8. 개인정보 관리 책임자</div>
					<div>① 은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 	불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.</div>
					<div>&nbsp;</div>
					<div>▶ 개인정보 보호책임자</div>
					<div>연락처 : mama@kor0.com</div>
					<div>② 정보주체께서는 의 서비스를 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다.&nbsp;</div>
					<div>&nbsp;</div>
					<div>9. 개인정보 처리방침 변경</div>
					<div>이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.</div>
				</div>
				<div class="confirm">
					<label for="accept_agree">
						<input type="checkbox" name="accept_agreement" value="Y" id="accept_agree"> 약관을 모두 읽었으며 동의합니다.
					</label>
				</div>
			</div>
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
					<p class="help-inline">비밀번호는 6자리 이상이어야 하며 영문, 숫자, 특수문자를 반드시 포함해야 합니다.</p>
				</div>
			</div>
			<div class="control-group">
				<label for="password2" class="control-label"><em style="color: red">*</em> 비밀번호 확인</label>
				<div class="controls">
					<input type="password" name="password2" id="password2" value="" required="">
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
						<option value="9">가장 좋아하는 음식은?</option></select>
					<input type="text" name="find_account_answer" id="find_account_answer" title="비밀번호 찾기 답변" value="">
				</div>
			</div>
			<div class="control-group">
				<label for="homepage" class="control-label"><em style="color: red">*</em> 홈페이지</label>
				<div class="controls">
					<input type="url" name="homepage" id="homepage" value="">
				</div>
			</div>
			<div class="control-group">
				<label for="blog" class="control-label"><em style="color: red">*</em> 블로그</label>
				<div class="controls">
					<input type="url" name="blog" id="blog" value="">
				</div>
			</div>
			<div class="control-group">
				<label for="birthday" class="control-label"><em style="color: red">*</em> 생년월일 </label>
				<div class="controls">
					<input type="hidden" name="birthday" id="date_birthday" value="">					
					<input type="text" placeholder="YYYYMMDD" name="birthday_ui" class="inputDate hasDatepicker" id="birthday" value="" readonly="readonly">
					<input type="button" value="삭제" class="btn dateRemover">
				</div>
			</div>
			<div class="control-group">
				<label for="profile_image" class="control-label"><em style="color: red">*</em> 프로필 사진</label>
				<div class="controls">
					<input type="hidden" name="__profile_image_exist" value="false">
					<input type="file" name="profile_image" id="profile_image" value="" accept="image/*">
					<p class="help-block">가로 제한 길이: 150px, 세로 제한 길이: 150px</p>
				</div>
			</div>
			<div class="control-group">
				<label for="image_name" class="control-label"><em style="color: red">*</em> 이미지 이름</label>
				<div class="controls">
					<input type="hidden" name="__image_name_exist" value="false">
					<input type="file" name="image_name" id="image_name" value="" accept="image/*">
					<p class="help-block">가로 제한 길이: 100px, 세로 제한 길이: 100px</p>
				</div>
			</div>
			<div class="control-group">
				<label for="image_mark" class="control-label"><em style="color: red">*</em> 이미지 마크</label>
				<div class="controls">
					<input type="hidden" name="__image_mark_exist" value="false">
					<input type="file" name="image_mark" id="image_mark" value="" accept="image/*">
					<p class="help-block">가로 제한 길이: 100px, 세로 제한 길이: 100px</p>
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
						<input type="radio" name="allow_message" value="Y" checked="checked" id="allow_Y">모두 허용
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
		
		<!-- 가입 공지 시작 -->
		<div class="han_notice" style="padding: 10px; border: 1px solid #e3e3e3; text-align: left; margin: 0 0 20px 0; font-size: 0.96em; line-height: 18px; color: #000000; background: #f8f8f8;">
			<font color="red" face="돋움"><b>【가입하기 전에 필독】</b></font>
			<p>1. 조금이라도 야한 콘텐츠는 게재 할수 없습니다.</p>
			<p>2. 회원간에 불란이나 심경을 불편하게 만드는 글은 게재 할수 없습니다, (서로를 지켜주세요).</p>
			<p>3. 위 규칙중 위반이 되는 콘텐츠는 통보 없이 바로 삭제 될수 있습니다.</p>
			<p>4. 다중 가입은 허용하지 않습니다.</p>
			<p>5. 가입을 잘못한 경우는 운영진에게 쪽지를 이용하여 삭제 요청을 하셔야만 합니다.</p>
		</div>
		<!-- 가입 공지 끝 -->
		
		<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>		
		<!-- 일치하는 콘텐츠 728 x 90 리더보드 -->
		<ins class="adsbygoogle" style="display: inline-block; width: 728px; height: 90px" data-ad-client="ca-pub-2627651582757014" data-ad-slot="2791016204" 	data-adsbygoogle-status="done">
			<ins id="aswift_2_expand" 	style="display: inline-table; border: none; height: 90px; margin: 0; padding: 0; position: relative; visibility: visible; width: 728px; background-color: transparent">
				<ins id="aswift_2_anchor" style="display: block; border: none; height: 90px; margin: 0; padding: 0; position: relative; visibility: visible; width: 728px; background-color: transparent">
					<iframe width="728" height="90" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_2" name="aswift_2" style="left: 0; position: absolute; top: 0;"></iframe>
				</ins>
			</ins>
		</ins>
		<script>
			(adsbygoogle = window.adsbygoogle || []).push({});
		</script>
		<script>
			jQuery(function($){
				// label for setup
				$('.control-label[for]').each(function(){
					var $this = $(this);
					if($this.attr('for') == ''){
						$this.attr('for', $this.next().children(':visible:first').attr('id'));
					}
				});
			});
			
			(function($){
				$(function(){
					var option = { changeMonth: true, changeYear: true, gotoCurrent: false,yearRange:'-100:+10', dateFormat:'yy-mm-dd', onSelect:function(){
						$(this).prev('input[type="hidden"]').val(this.value.replace(/-/g,""))}
					};
					$.extend(option,$.datepicker.regional['ko']);
					$(".inputDate").datepicker(option);
					$(".dateRemover").click(function() {
						$(this).prevAll('input').val('');
						return false;});
				});
			})(jQuery);
		</script>
	</section>
</body>
</html>