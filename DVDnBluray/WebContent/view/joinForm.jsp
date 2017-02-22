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
	});        
</script>

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
				<td class="left_title"><em style="color: red">*</em>주민등록번호</td>
				<td>
<!-- 					<input type="text" name="rrn"> -->
					<!-- jquery UI DatePicker -->
			    	<input type="text" id="datePicker" placeholder="YYYYMMDD">
				</td>				
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