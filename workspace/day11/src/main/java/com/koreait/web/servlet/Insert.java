package com.koreait.web.servlet;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.web.mybatis.SqlMapConfig;

@WebServlet("/insert")
public class Insert extends HttpServlet{

		@Override
		protected void service(HttpServletRequest arg0, HttpServletResponse arg1) 
				throws ServletException, IOException {
			
			String str1 = arg0.getParameter("data1");
			String str2 = arg0.getParameter("data2");
			
			SqlSessionFactory factory = SqlMapConfig.getFactory();
			SqlSession sqlsession = factory.openSession(true);
			
			HashMap<String, Object> datas = new HashMap();
			datas.put("str1", str1);
			datas.put("str2", str2);
			
			int result = 0;
			result = sqlsession.insert("Test.insert",datas);
			
			if(result !=0 ) {
				arg0.setAttribute("result", "추가성공");
			} else {
				arg0.setAttribute("result", "추가실패");
			}
			
			arg0.getRequestDispatcher("c.jsp").forward(arg0, arg1);
			
		}
	
}
