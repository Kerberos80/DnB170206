<!-- 2017. 1. 13. -->
<%@page import="jdbc.connection.ConnectionProvider"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// try-with-resource 구문
		try ( Connection connection = ConnectionProvider.getConnection() ) {
			out.println("커넥션연결 성공");
		}
		catch( SQLException ex ) {
			out.println("커넥션 연결 실패함 : "+ex.getMessage());
			application.log("커넥션 연결 실패", ex);
		}		
	%>
</body>
</html>