<%@page import="com.koreait.web.beans.UserBean"%>
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
<!--  DAO 커넥션 맺기 -->
	<%
		UserDAO udao = new UserDAO();
		String userid = request.getParameter("userid");   // 파라미터로받아온값 ( serach_view.jsp의 input의 name)
		UserBean user = udao.searchById(userid);
		request.setAttribute("user", user);
		pageContext.forward("search_view.jsp");  // 검색해온 데이터를 유지해서 페이지를 이동하기위해 forward 사용
	%>
</body>
</html>