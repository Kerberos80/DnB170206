<!-- 2017. 1. 10. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DVDnBluray</title>

<!-- CSS -->
<style type="text/css">
	/* Common CSS */
	* { padding: 0; margin: 0; text-decoration: none; list-style: none; position: relative; }	
	
	/* Wrap CSS */
	#Wrap { width: 1200px; height: 1440px; margin: 0px auto; padding: 10px; border: 1px solid #bcbcbc; }
	
	/* Header */
	#Header { padding: 10px; margin-bottom: 10px; border: 1px solid #bcbcbc; font-size: 25px; text-align: center; }
	#Header a { color: darkgrey; }
	#Header a:visited { color: darkgrey; }	
    
    /* #Sidebar */
    #Sidebar { width: 25%; height:87%;  /*padding: 10px;*/ margin-bottom: 10px; float: left; border: 1px solid #bcbcbc; }
    
    /* #Content */
    #Content { width: 74.6%; height:87%; /*padding: 10px;*/ margin-bottom: 10px; float: right; border: 1px solid #bcbcbc; }   
    
    /* Footer */
    #Footer { clear: both; padding: 10px; text-align: center; border: 1px solid #bcbcbc; }
    
    /* LoginForm.jsp CSS*/
    #LoginSection { position: relative; width: 100%; background-color: #f8f8f8; }
    .login_wrap {
    	font-family: Dotum,'돋움',Helvetica,AppleSDGothicNeo,sans-serif; font-size: 12px; 
    	position: relative; left: 17%; padding: 5px; width: 62%; /*width: 185px;*/ height: 85px; 
    	/*border: 1px solid #dcdcdc;*/ background: #f8f8f8; }
    .login { position: relative; height: 90px; }
    .login fieldset { border: 0; }
    .login .blind { visibility: hidden; overflow: hidden; position: absolute; }        
    .login .htmlarea { position: relative; width: 122px; height: 55px; }
    .login .input_box { position: relative; width: 121px; height: 26px; border: 1px solid #bebebe; border-right: 0; }
    .login .input_box:first-child { border-bottom: 0; }
    .login .input_box .int {
    	position: relative; width: 116px; height: 21px; padding: 3px 0 2px 5px;
    	border: 0; line-height: 16px; font-size: 12px; }
    .login .btn_login { position: relative/*absolute*/; left: 122px; top: -54px; width: 64px; height: 53px; }
    .login .btn_login input {
    	width: 64px; height: 53px; border: solid 1px #c9cac9; background: #fdfdfd;
    	font-size: 12px; cursor: pointer; vertical-align: middle; }
    .login .btn_lnk { position: relative; top: -45px; }
    .login .btn_lnk a { color: darkgrey; }
    .login .btn_lnk a:visited { color: darkgrey; }		
</style>

<!-- Javascript -->
<script type="text/javascript">
</script>

</head>

<body>
	<div id="Wrap">
	
		<div id="Header">
			<jsp:include page="/Header.jsp" flush="false" ></jsp:include>		
		</div>
		
		<div id="Sidebar">
			<div id="LoginSection">
				<jsp:include page="/LoginForm.jsp" flush="false" ></jsp:include>
			</div>
			<div>
				메뉴바
			</div>						
		</div>
		
		<div id="Content">
			<h2>Center</h2>			
		</div>		
		
		<div id="Footer">
			<jsp:include page="/Footer.jsp" flush="false"></jsp:include>			
		</div>
	
	</div>
</body>
</html>