package com.koreait.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.koreait.web.beans.MemberBean;

public class MemberDAO {  // DB의 Member에 접근하는 DAO

	Connection conn;
	
	PreparedStatement pstm;
	
	ResultSet rs;

	public int getAge(String name) {// 나이를 DB에서 셀렉트해와서 리턴해주는 메서드
		conn = DBConnection.getConnection();    // import 하면서 불러오기
		int age = 0;
		
		String sql = "SELECT age FROM MEMBER WHERE name =?";
				
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);
			rs = pstm.executeQuery();
			
			if( rs.next() ) {
				age = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return age;
		
	}
	
	public ArrayList<MemberBean> selectAll() {  // 배열로 생성
		
		String sql = "SELECT * FROM MEMBER";
		
		ArrayList<MemberBean> result = new ArrayList<>();
		
		try {
			conn = DBConnection.getConnection();    // import 하면서 불러오기
			
			pstm = conn.prepareStatement(sql);
			
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				MemberBean member = new MemberBean();
				member.setName(rs.getString(1));
				member.setAge(rs.getInt(2));
				result.add(member);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}

	
	
}
