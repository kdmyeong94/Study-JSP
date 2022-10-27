package com.koreait.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet{
	
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
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		ActionForward forward = null;
		
		switch(requestURI) {
			case "/board/BoardList.bo": 
//				forward = new ActionForward(false, "/board/boardlist.jsp");
				forward = new BoardListAction().execute(req, resp);
				break;
			case "/board/BoardView.bo":
				forward = new ActionForward(false, "/board/boardview.jsp");
				break;
		}
		
		// 페이지 이동 일괄처리
		if( forward != null ) {
			if( forward.isRedirect() ) {
				// redirect
				resp.sendRedirect(forward.getPath());
			} else {
				// forward
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}
		
		
	}
	
}















