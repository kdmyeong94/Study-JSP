<%@page import="com.koreait.web.dto.UserDTO"%>
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
		String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String username = request.getParameter("username");
	String userphone = request.getParameter("userphone");
	
	//DAO 객체 만들기
	UserDAO udao = new UserDAO();
	//DTO 객체 만들기
	UserDTO udto = new UserDTO();
	
	// data set 값들 세팅하기
	udto.setUserid(userid);
	udto.setUserpw(userpw);
	udto.setUsername(username);
	udto.setUserphone(userphone);
	
	
	boolean check = udao.join(udto);
	if ( check ) {
		//가입성공
		
	} else{
		// 가입 실패
	}
		
	
	
	
	%>
</body>
</html>