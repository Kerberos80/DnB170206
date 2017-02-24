<!-- 2017. 1. 10. -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<c:choose>
					<c:when test="${empty sessionScope.userID}">
						<jsp:include page="/view/loginForm.jsp" flush="false"></jsp:include>					
					</c:when>
					<c:otherwise>
						<jsp:include page="/view/loginned.jsp" flush="false"></jsp:include>
					</c:otherwise>
				</c:choose>																		
			</div>
			
			<div id="MenuSection">
				<c:choose>
					<c:when test="${empty sessionScope.userID}">
						<jsp:include page="/view/defaultMenu.jsp" flush="false"></jsp:include>
					</c:when>
					<c:otherwise>
						<jsp:include page="/view/myMenu.jsp" flush="false"></jsp:include>
					</c:otherwise>
				</c:choose>			
			</div>
								
		</div>
		
		<div id="Content">
			<c:choose>
				<c:when test="${empty sessionScope.currentContent}">
					<jsp:include page="/view/mainContent.jsp" flush="false"></jsp:include>
				</c:when>
				<c:otherwise>
					<jsp:include page="/view/${sessionScope.currentContent}" flush="false"></jsp:include>
				</c:otherwise>
			</c:choose>			
		</div>		
		
		<div id="Footer">
			<jsp:include page="/view/footer.jsp" flush="false"></jsp:include>			
		</div>
	
	</div>
</body>
</html>