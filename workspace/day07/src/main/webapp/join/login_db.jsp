<%@page import="com.koreait.web.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("userid");
	
		UserDAO udao = new UserDAO();
// 		String idc = udao.
	%>
<!-- 	로그인 기능 완성
		로그인 성공 -> main_view.jsp
		로그인 실패 -> login_view.jsp


 -->
</body>
</html>