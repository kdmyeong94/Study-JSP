package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/regit")
public class MyServlet5 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {

//		arg0.setCharacterEncoding("UTF-8");
//		
//		arg1.setCharacterEncoding("UTF-8");
//		arg1.setContentType("text/html; charset=UTF-8");
//		
		String t = arg0.getParameter("title");
		
		String c = arg0.getParameter("content");
		
		PrintWriter out = arg1.getWriter();
		
		out.println("제목 :" + t + "<br>");
		out.println("내용 :" + c);
		
	}
}
