package com.koreait.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class DoFrontController extends HttpServlet {

	
	// get 방식과 post방식만 정하고 필요한 내용은 doProcess에서 처리하도록 한다
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		doProcess(req, resp);
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doProcess(req, resp);
		
	
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp ) 
			throws ServletException, IOException {
		System.out.println("URI : " + req.getRequestURI());
		
		String requestURI = req.getRequestURI();
		String responseURI = null;
		
		
		if ( requestURI.equals("/do1.do" )) {
			
//			req.setAttribute("result", "do1으로 요청보내기");  // 처리
//			req.getRequestDispatcher("do1.jsp").forward(req, resp); // 응답
			
			//비즈니스 로직처리를 해줄 자바 클래스  ( 위치  servlet > Do1.java )
 			responseURI =new Do1().execute(req, resp);
			
			
		} else if ( requestURI.equals("/do2.do" ) ) {
			
//			req.setAttribute("result", "do2으로 요청보내기");  // 처리
//			req.getRequestDispatcher("do2.jsp").forward(req, resp); // 응답
			
			responseURI =new Do2().execute(req, resp);
			
		} else if ( requestURI.equals("/do3.do" ) ) {
			
//			req.setAttribute("result", "do3으로 요청보내기");  // 처리
//			req.getRequestDispatcher("do3.jsp").forward(req, resp); // 응답
			
			responseURI =new Do3().execute(req, resp);
			
		}
		
		req.getRequestDispatcher(responseURI).forward(req, resp);
		
	}
	
	
}
