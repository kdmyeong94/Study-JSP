<%@page import="com.koreait.web.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String userid = request.getParameter("userid");
	UserDAO udao = new UserDAO();
	if( !udao.checkId(userid)){  // UserDAO의 checkId 메소드가 true일 경우 이미 존재하는 아이디이기 때문에
		// 회원가입이 가능한 경우
		out.print("회원가입가능"); 
	} else {
		//회원가입이 불가능한 경우
		out.print("회원가입불가능"); 
	}
%> 
