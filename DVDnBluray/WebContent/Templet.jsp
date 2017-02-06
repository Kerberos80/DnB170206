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
	#Header { /*padding: 10px;*/ margin-bottom: 10px; height: 50px; border: 1px solid #bcbcbc; font-size: 25px; text-align: center; }
	#Header a { vertical-align: middle; color: darkgrey;  } /* vertical-align 나를 감싼 영역에서 나의 수직 위치 */
	#Header a:visited { color: darkgrey; }	
    
    
    /* #Sidebar */
    #Sidebar { 
    	width: 339px; height:1295px;  /*padding: 10px;*/ margin-bottom: 10px; float: left; border: 1px solid #bcbcbc; }
    
    #Sidebar #LoginSection { width:100%; height:150px; border-bottom: 1px solid #bcbcbc; }
    #Sidebar #MenuSection { width:100%; height:1144px; border-bottom: 1px solid #bcbcbc;}
    /* #Content */
    #Content { width: 847px; height:1295px; /*padding: 10px;*/ margin-bottom: 10px; float: right; border: 1px solid #bcbcbc; }   
    
    /* Footer */     
    #Footer { clear: both; height:70px; /*padding: 5px;*/ text-align: center; border: 1px solid #bcbcbc; margin-bottom: 10px;}    
		
</style>

<!-- Javascript -->
<script type="text/javascript">
</script>

</head>

<body>
	<div id="Wrap">
	
		<div id="Header">
			HeaderSection
<%-- 			<jsp:include page="/Header.jsp" flush="false" ></jsp:include>		 --%>
		</div>
		
		<div id="Sidebar">
			<div id="LoginSection">
				LoginSection
			</div>
			<div id="MenuSection">
				MenuSection
			</div>
								
		</div>
		
		<div id="Content">
			Content			
		</div>		
		
		<div id="Footer">
			FooterSection
<%-- 			<jsp:include page="/Footer.jsp" flush="false"></jsp:include>			 --%>
		</div>
	
	</div>
</body>
</html>