package com.koreait.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.web.mybatis.SqlMapConfig;

public class UserDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = factory.openSession(true);
		// true : auto commit
	}
	
	public boolean checkID( String userid) {
		boolean result = false;
		int cnt = 0;
		
		sqlsession.selectOne("User.checkId", userid);
		
		if ( cnt >= 1 ) {
			result = true;
		}
		
		return result;
	}
}































