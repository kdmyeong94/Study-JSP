package com.koreait.app.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.mybatis.SqlMapConfig;

public class UserDAO {

		SqlSessionFactory factory = SqlMapConfig.getFactory();
		SqlSession sqlsession;
		
		public UserDAO() {
			sqlsession = factory.openSession(true);
		}

		public boolean join(UserDTO udto) {

			boolean result = false;
			
			// User.xml파일의 join 에 udto라는 파라미터 그대로 넘겨주기
			if(sqlsession.insert("User.join", udto) != 0) { //결과값이 0이 아닐경우 true
				result = true;
			}
			
			
			return result;
		}
}
