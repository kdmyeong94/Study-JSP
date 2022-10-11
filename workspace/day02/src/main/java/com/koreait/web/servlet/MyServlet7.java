package com.koreait.web.servlet;

import java.io.IOException;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calc")
public class MyServlet7 extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
		
		String xStr = arg0.getParameter("x");
		String yStr = arg0.getParameter("y");
		String op = arg0.getParameter("operator");
		
		int x = 0;
		int y = 0;
		int result = x + y;
		
		if( !xStr.equals("") ) {
			x = Integer.parseInt(xStr);
		}
		
		if( !yStr.equals("") ) {
			y = Integer.parseInt(yStr);
		}
		
		if( op.equals("덧셈") ) {
			result = x + y;
		} else {
			result = x - y;
		}
		
		arg1.getWriter().println("결과는 : " + result);
		
	}
}







