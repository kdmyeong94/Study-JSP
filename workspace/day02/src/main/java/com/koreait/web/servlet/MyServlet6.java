package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class MyServlet6 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
			throws ServletException, IOException {
	
		String x = arg0.getParameter("x");
		
		String y = arg0.getParameter("y");
		
		int rx = 0;
		
		int ry = 0;
		
		if( x != null && !x.equals("")) {
			rx = Integer.parseInt(x);
		}
		if( y != null && !y.equals("")) {
			ry = Integer.parseInt(y);
		}
		
		PrintWriter out = arg1.getWriter();
		out.println(x+" + " + y + " = " + (rx+ry));
		
	}
}
