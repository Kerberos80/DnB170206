/*******************************************************
 *  회원 가입 폼 - 유효성 검사 모듈
 *  작성 일자 : 17.02.22
 *  작성자 : 손기대
 *******************************************************/
$(document).ready(function() {
	
	// 회원 가입 버튼 클릭
	$(".joinTable #btn-submit").click(function() {
		
		// 회원가입 동의 여부 체크
		var agreement = $(".joinTable #accept_agree");
		var isAgreement = agreementCheck(agreement);
		if ( !isAgreement ) {
			alert("회원가입을 하시려면 이용약관에 동의 하셔야 합니다!");
			agreement.focus();
			return;
		}
		
		// 회원가입 필수 입력 항목 체크
		var inputList = $(".joinTable input[type='text']");
		var nullIndex = nullCheck(inputList);
		if (nullIndex != -1) {
			inputList[nullIndex].focus();
			return;
		}
		
		// 패스워드 유효성 검사		
		/*
		var currentPassword = $(".joinTable #password").val();
		var validation = passwordValidate(currentPassword);
		if ( !validation ) {
			$(".joinTable #password").focus();
			return; 
		}
		*/
		
		if( $(".joinTable #isDuplicated").val() == "false" ) {
			alert("회원등록 정보를 전송하겠습니다!");
		}
		alert("회원가입완료!");
	});
	
	// 패스워드 유효성 검사
	$(".joinTable #password").keyup(function() {
		// var currentPassword = $(".joinTable #password").val();
		var currentPassword = $(".joinTable #password");
		var validation = passwordValidate( currentPassword.val() );
		if ( !validation ) {
			$(".joinTable #isValid").html('<b style="color:red;">6~15자리 영문+숫자+특수문자 조합하세요</b>');
			return; 
		} else { $(".joinTable #isValid").empty(); }		
	});
	
	// 회원가입 동의 여부 체크
	function agreementCheck(agreement) {
		if (!agreement.is(":checked")) { // 체크박스 체크 여부(체크:true, 언체크:false)
			return false;
		} else { return true; }
	}
	
	// 아이디 중복확인 버튼 클릭
	$(".joinTable #idCheck").click(function() {		
		
		// Ajax 호출 (중복된 ID를 받아옴)
		$.ajax({
			url : 'getID.ajax', // URL
			method : 'GET', // 전송 방식 : 'POST', 'GET', 'PUT'
			dataType : 'json', // 서버에서 전송된 데이터 타입 : 'xml', 'json', 'script', 'html'
			cache : false, // 캐시 유무 : true, false
			success : function(data) { // 통신 성공 시 콜백함수
					var receivedID = data.id; // <- data.id or <- data["id"]
					alert("넘겨 받은 ID : " + receivedID); // JSONobject 데이터출력					
					if( !receivedID ) {
						$(".joinTable #isPossible").html('<b style="color:blue;">사용 가능한 ID 입니다.</b>');						
						$(".joinTable #isDuplicated").val('false');	
						// alert("isDuplicated ?" + $("#isDuplicated").val());
					}
					else { 
						$(".joinTable #isPossible").html('<b style="color:red;">사용할 수 없는 ID 입니다.</b>');
						// alert($("#isDuplicated").val());
						$(".joinTable #id").focus();
					}
				},
			error : function(x, e) { // 통신 실패 시 콜백함수
					alert("상태 코드 : " + x.status);
					alert("에레 메시지 : " + e);
					
					if (x.status == 0) {
						alert('실패 원인 : You are offline!!\n Please Check Your Network.');
					} else if (x.status == 404) {
						alert('실패 원인 : Requested URL not found.');
					} else if (x.status == 500) {
						alert('실패 원인 : Internel Server Error.');
					} else if (e == 'parsererror') {
						alert('실패 원인 : Error.nParsing JSON Request failed.');
					} else if (e == 'timeout') {
						alert('Request Time out.');
					} else {
						alert('Unknow Error.n' + x.responseText);
					} // end-of-else
				} // end-of-error function()
		}); // end-of-ajax()
	});
	
	// 회원가입 필수 입력 항목 null 값 체크(null 값인 input 태그의 인데스 반환, 없으면 -1)
	function nullCheck(list) {
		for (var index = 0; index < list.length; index++) { // baseIndex[0]
			var inputValue = list[index].value;
			if (!inputValue) { return index; }
		}
		return -1;
	}
	
	// 패스워드 유효성 검사(6~15자리, 영문자+숫자+특수문자 조합)
	function passwordValidate(currentPass) {
		// 비밀번호 정규 표현식(6~15자리, 영문자+숫자+특수문자 조합) 
		var passwordRegExpr = /^(?=.*[a-zA-Z])(?=.*[\d])((?=.*[_])|(?=.*[\W])).{6,15}$/gm; // \d(숫자), \W(_를 제외한 특수문자)		
		// var passwordRegExpr = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*(_|\W)).{6,15}$/gm;		
		
		if ( !passwordRegExpr.test(currentPass) ) {			
			//$(".joinTable #password").focus();
			return false;
		}
		
		return true;
	} // end-of-passwordValidate()
	
});