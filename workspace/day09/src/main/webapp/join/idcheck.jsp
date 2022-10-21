<%@page import="com.koreait.web.dao.UserDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userid = request.getParameter("userid");
	UserDAO2 udao = new UserDAO2();
	
// 	out.println(udao.checkID(userid));
	if( !udao.checkId(userid) ){
		// 회원가입이 가능한 경우
		out.print("ok");
	} else{
		//회원가입이 불가능한 경우
		out.print("회원가입 불가능");
	}
%>
