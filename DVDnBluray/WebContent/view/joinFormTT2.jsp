<!-- 2017. 1. 12. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- jQuery UI CSS파일 --> 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!-- jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<!-- 회원 가입 폼 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/joinForm.css">

<!-- JavaScript -->
<script type="text/javascript">
// 패스워드 영숫자, 특수문자 조합 유효성 검사 모듈 추가 할 것
// 패스워드 확인 불일치 시 포커서 이동 모듈 추가 할 것
// 등록버튼 클릭시 action 속성 url 주소 동적으로 만들 것 
</script>

<script>
	$(function() {
		//$('#testDatepicker').val($.datepicker.formatDate('yymmdd', new Date())); // 오늘날짜 셋팅 하기
		$( "#datePicker" ).datepicker({
			showOn: 'both', // 버튼, 텍스트필드, 캘린더 모두 표시 'both','button','text'
        	showAnim: 'show', // 애니매이션 효과
                
            yearRange: 'c-100:c+10', // currentYear-100 ~ currentYear+10
                
            changeMonth: true, // 월 셀렉트 박스 
            changeYear: true, // 연 셀렉트 박스
            nextText: '다음 달', // < : 캡션
            prevText: '이전 달', // > : 캡션
                
            dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'], // 요일
            dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],                
            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], // 월
            monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
                
            showButtonPanel: true, // 오늘 날짜, 닫기 버튼 패널 활성화
            currentText: '오늘', // 오늘 날짜 버튼
            closeText: '닫기', // 닫기 버튼
            dateFormat: "yymmdd" // 날짜 포맷       
		});
		
		$('.ui-datepicker-trigger').css({'cursor':'pointer', 'margin-left':'5px', 'padding': '5px 0'});  // datepicker 아이콘(icon) 위치
	});        
</script>

</head>
<body>
	<form action="" method="post">
		<table class="joinTable">
			<colgroup> <!-- 테이블의 column 너비를 지정 ( n x 2 ) --> 
				<col width="30%" /> <!-- left column width -->
				<col width="70%" /> <!-- right column width -->
			</colgroup>
			<tr>
				<td colspan="2">
					<h1 style="border-bottom: 1px solid #ccc">회원가입</h1>
				</td>
			</tr>
			<tr>
				<td colspan="2">
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
				</td>
			</tr>
			<tr class="control-group">								
				<td class="control-label"><label><em style="color: red">*</em>이름</label></td>
				<td><input type="text" name="name"></td>		
			</tr>
			<tr class="control-group">
				<td class="control-label"><label><em style="color: red">*</em>아이디</label></td>				
				<td><input type="text" name="id"></td>				
			</tr>
			<tr class="control-group">
				<td class="control-label"><label><em style="color: red">*</em>비밀번호</label></td>				
				<td><input type="text" name="pw"></td>				
			</tr>
			<tr class="control-group">
				<td class="control-label"><label><em style="color: red">*</em>비밀번호확인</label></td>				
				<td><input type="text" name="pwConf"></td>				
			</tr>
			<tr class="control-group">
				<td class="control-label"><label><em style="color: red">*</em>생년월일</label></td>				
				<td>
					<!-- jquery UI DatePicker -->
			    	<input type="text" id="datePicker" placeholder="YYYYMMDD">
				</td>				
			</tr>
			<tr class="control-group">
				<td class="control-label"><label><em style="color: red">*</em>연락처</label></td>				
				<td><input type="text" name="phone"></td>				
			</tr>
			<tr class="control-group">
				<td class="control-label"><label><em style="color: red">*</em>E-mail</label></td>				
				<td><input type="text" name="email"></td>				
			</tr>
			<tr class="control-group">
				<td class="control-label"><label><em style="color: red">*</em>주소</label></td>				
				<td><input type="text" name="adress"></td>				
			</tr>
			<tr class="control-group">
				<td class="reset-btn">
					<input class="btn btn-reset" type="reset" value="취소">					
				</td>
				<td class="submit-btn">
					<input class="btn btn-submit" type="submit" value="등록">					
				</td>				
			</tr>
			<tr>
				<!-- 회원 가입 공지 -->
				<td colspan="2">
					<div class="han_notice" style="padding: 10px; border: 1px solid #e3e3e3; text-align: left; margin: 0 0 20px 0; font-size: 0.96em; line-height: 18px; color: #000000; background: #f8f8f8;">
						<font color="red" face="돋움"><b>【가입하기 전에 필독】</b></font>
						<p>1. 조금이라도 야한 콘텐츠는 게재 할수 없습니다.</p>
						<p>2. 회원간에 불란이나 심경을 불편하게 만드는 글은 게재 할수 없습니다, (서로를 지켜주세요).</p>
						<p>3. 위 규칙중 위반이 되는 콘텐츠는 통보 없이 바로 삭제 될수 있습니다.</p>
						<p>4. 다중 가입은 허용하지 않습니다.</p>
						<p>5. 가입을 잘못한 경우는 운영진에게 쪽지를 이용하여 삭제 요청을 하셔야만 합니다.</p>
					</div>
				</td>
			</tr>			
		</table>		
	</form>
</body>
</html>