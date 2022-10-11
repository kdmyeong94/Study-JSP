package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 *  Request		: /hello3
 *  Response	: 1 : hello servlet
 *  			  2 : hello servlet
 */

@WebServlet("/hello3")
public class MyServlet3 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
		arg1.setCharacterEncoding("UTF-8");
		arg1.setContentType("text/html; charset=UTF-8");
		PrintWriter out = arg1.getWriter();
		for( int i = 0; i< 100; i ++) {
			out.println((i+1)+" : 안녕 servlet<br>");
		}
	}
}
