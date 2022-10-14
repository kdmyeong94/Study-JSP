package com.koreait.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.web.dao.UserDAO;
import com.koreait.web.dto.UserDTO;

@WebServlet("/join")
public class JoinServlet extends HttpServlet{

		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			
			String userid = req.getParameter("userid");
			String userpw = req.getParameter("userpw");
			String username = req.getParameter("username");
			String userphone = req.getParameter("userphone");
			
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
			
			
		}
		
		
}
