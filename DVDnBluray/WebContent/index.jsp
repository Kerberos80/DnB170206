<!-- 2017. 1. 10. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DVDnBluray</title>

<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
<!-- Javascript -->
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/joinForm-ValidationCheck.js"></script> --%>

</head>

<body>
	<div id="Wrap">
	
		<div id="Header">
			<jsp:include page="/view/header.jsp" flush="false" ></jsp:include>		
		</div>
		
		<div id="Sidebar">
			
			<div id="LoginSection">
			<jsp:include page="/view/loginForm.jsp" flush="false"></jsp:include>
<!-- 			LoginSection								 -->	
			</div>
			
			<div id="MenuSection">
			MenuSection
			</div>
								
		</div>
		
		<div id="Content">
<!-- 			Content -->
			<jsp:include page="/view/joinForm.jsp" flush="false"></jsp:include>			
		</div>		
		
		<div id="Footer">
			<jsp:include page="/view/footer.jsp" flush="false"></jsp:include>			
		</div>
	
	</div>
</body>
</html>