package com.koreait.web.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Do2 {

	public String execute (HttpServletRequest req, HttpServletResponse resp) {
		
		req.setAttribute("result", "do2으로 요청보내기");
		
		return "do2.jsp";
	}
	
	
}
