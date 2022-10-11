package com.koreait.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/calc4")
public class MysServlet4 extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		
//		cookie
		Cookie[] cookies = arg0.getCookies();
		
		PrintWriter out = arg1.getWriter();
		
		String value_ = arg0.getParameter("value");
		String op = arg0.getParameter("operator");
		
		System.out.println("value : " + value_);
		System.out.println("op : " + op);
		
		int value = 0;
		
		if(value_ != null && !value_.equals("")) {
			value = Integer.parseInt(value_);
		}
//		계산
		if( op.equals("=" )) {
			System.out.println("= 조건 도착");

			int y = value;
			
			int x = 0;
//			cookie 꺼내기
//			cookie는 배열로 값이 담겨있기 때문에 배열로 꺼내온다.
//			Cookie c = cookies[0];
//			if(c.getName().equals("value")) {
//				x = Integer.parseInt(c.getValue());
//			}
			
			for ( Cookie c : cookies ) {
				if(c.getName().equals("value")) {
					x = Integer.parseInt(c.getValue());
					break;
				}
			}
			
			String operator = "";
			
			for ( Cookie c : cookies ) {
				if ( c.getName().equals("op")) {
					operator = c.getValue();
					break;
				}
			}
			
			
			
			int result = 0;
			
			if( operator.equals("+") ) {
				result = x + y;
			} else {  // " - "
				result = x - y;
			}
			
			out.println("결과 값 : "+ result);
			
		} else { // + or - , 값 저장
			System.out.println(" else 조건 도작");
			
//			cookie 로 저장
			Cookie valueCookie = new Cookie("value", String.valueOf(value) );
			Cookie opCookie = new Cookie("op",op);
			
			
//			사용자에게 cookie가 전달된다.
			arg1.addCookie(valueCookie);
			arg1.addCookie(opCookie);
			
			
			arg1.sendRedirect("calc4.html");
		}
		
		
	}

}
