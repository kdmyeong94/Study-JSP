package com.koreait.web.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.web.beans.UserBean;
import com.koreait.web.mybatis.SqlMapConfig;

public class UserDAO {

	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = factory.openSession(true);
		//true : auto commit
	}
	
	public boolean checkId( String userid) {
		boolean result = false;
		int cnt = 0;
		
		cnt = sqlsession.selectOne("User.checkId", userid);
		
		if ( cnt >= 1) {
			result = true;
		}
		
		return result;
		
	}
	
	public boolean join ( UserBean user ) {    // 회원가입 관련 메소드
		boolean result = false;
		if(sqlsession.insert("User.join", user) == 1 ) {
			result = true;
		}
		
		return result;
		
	}
	
	
	public UserBean login( String userid, String userpw) {
		HashMap<String, String> datas = new HashMap();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		UserBean user = sqlsession.selectOne("User.login", datas);
		
		
		
		return user;
		
	}
	
	
}

