<!-- 2017. 2. 16. -->
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

<script>
	$(function() {
		//$('#testDatepicker').val($.datepicker.formatDate('yymmdd', new Date())); // 오늘날짜 셋팅 하기
		$( "#datePicker" ).datepicker({
        	showOn: 'both', // 버튼, 텍스트필드, 캘린더 모두 표시
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
	<table>
		<tr>
			<td>
				<!-- jquery UI DatePicker -->
			    <input type="text" id="datePicker" placeholder="YYYYMMDD">
			    <p>testArea</p>
			</td>
		</tr>
	</table>
	
    
</body>
</html>