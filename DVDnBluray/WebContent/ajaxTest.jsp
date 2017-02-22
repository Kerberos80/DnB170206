<!-- 2017. 2. 22. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" PageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>

<script>
	$(document).ready(function(){
		
		$("#myButton").click(function() {			
			// 회원가입 동의 여부 체크
			var agreement = $("#myCheck");
			var isAgreement = agreementCheck(agreement);
			if( !isAgreement ) {
				alert("회원가입을 하시려면 이용약관에 동의 하셔야 합니다!");
				agreement.focus();
				return;
			}
			
			// 회원가입 필수 입력 항목 체크
			var inputList = $("input[type='text']");
			var nullIndex = nullCheck(inputList);
			if( nullIndex != -1 ) {
				 inputList[nullIndex].focus();
				 return;
			}
			
			// 패스워드 유효성 검사
			var currentPassword = $("#password").val();
			var validation = passwordValidate(currentPassword);
			if( !validation ) {
				return;
			}
			
			alert("회원가입완료!");		
		});
		
		$("#idCheck").click(function() {
			alert("ajax호출");
			
			$.ajax({
				url: 'getID.ajax',
				success: function() {
					alert("통신 성공!!");
				},
				error: function(x,e) {
					alert(x.status);
					alert(e);
					
					if(x.status==0) {
						alert('You are offline!!\n Please Check Your Network.');
					} else if(x.status==404) {
						alert('Requested URL not found.');
					} else if(x.status==500) {
						alert('Internel Server Error.');
					} else if(e=='parsererror') {
						alert('Error.nParsing JSON Request failed.');
					} else if(e=='timeout') {
						alert('Request Time out.');
					} else {
						alert('Unknow Error.n'+x.responseText);
					}
				}
			});
		});
		
		// 회원가입 동의 여부 체크
		function agreementCheck(agreement) {			
			if( !agreement.is(":checked") ) { // 체크박스 체크 여부(체크:true, 언체크:false)
				return false;
			} else {
				return true;
			}
		}
		
		// 회원가입 필수 입력 항목 null 값 체크(null 값인 input 태그의 인데스 반환, 없으면 -1)
		function nullCheck(list) {
			for(var index = 0 ; index < list.length ; index++) { // baseIndex[0]
				var inputValue = list[index].value;
				if( !inputValue ) {
					return index;
				}
			}
			return -1;
		}
		
		// 패스워드 유효성 검사(6~15자리, 영문자+숫자+특수문자 조합)
		function passwordValidate(currentPass) {
			var passwordExpr = /^(?=[\w\W]+).{6,15}$/;
			var digit = /.[\d]/g; // 숫자 정규 표현식
			var letter = /.[a-zA-z]/gi
			var spacialLetter = /.[_\W]/g; // (밑줄 문자 포함)특수문자 정규 표현식
			
			if( !passwordExpr.test(currentPass) ) { // 6~15 자리 확인
				alert("비밀번호는 6~15 자리 이어야 합니다!");
				return false;
			} else { // 영문자, 숫자, 특수문자 포함여부 확인
				if( !digit.test(currentPass) || !letter.test(currentPass) || !spacialLetter.test(currentPass) ) {
					alert("비밀번호는 반드시 숫자,영문자,특수문자 를 포함해야 합니다!");
					return false;
				}
			} // end-of-else
				
			return true;
		}
		
	});
</script>

</head>
<body>
	이용약관 동의 :
	<input type="checkbox" id="myCheck">
	<br>
	<br> 이름 :
	<input type="text" id="name">
	<br>
	<br> 아이디 :
	<input type="text" id="id">
	<button id="idCheck">중복확인</button>
	<br>
	<br>
	<input type="hidden" id="isDuplicated" value="true"> 패스워드 :
	<input type="text" id="password" name="pass">
	<p>
		click me
		<button id="myButton">try it</button>
	</p>
</body>
</html>