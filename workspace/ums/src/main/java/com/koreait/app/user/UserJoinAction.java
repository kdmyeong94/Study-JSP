package com.koreait.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.dao.UserDTO;

public class UserJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("excute 도착");
		UserDAO udao = new UserDAO();
		UserDTO udto = new UserDTO();
		
		ActionForward forward = new ActionForward();
		
		// 데이터 세팅
		udto.setUserid(req.getParameter("userid"));
		udto.setUserpw(req.getParameter("userpw"));
		udto.setUsername(req.getParameter("username"));
		udto.setUserphone(req.getParameter("userphone"));
		udto.setUseraddr(req.getParameter("useraddr"));
		
		System.out.println(req.getParameter("userid"));
		
		if( udao.join(udto) ) { //회원가입이 된 경우, app/user/loginview.jsp 로 이동
								// redirect
			
			forward.setRedirect(true);
			forward.setPath("/app/user/loginview.jsp");
			
		} else { //회원가입이 안된경우, index.jsp 로 이동
				 // redirect
			
			forward.setRedirect(true);
			forward.setPath("/index.jsp");
			
		}
		
		
		
		return forward;
	}

}
