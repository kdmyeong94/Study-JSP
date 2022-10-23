package com.koreait.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection getConnection() {  // 고정메모리영역에서 사용될 dbconnection
		
		Connection conn = null;
		try {
			String driver = "oracle.jdbc.driver.OracleDriver";  // 오라클에 접근 할 수있는 경로 ( 라이브러리에 있음) 		
			String url = "jdbc:oracle:thin:@localhost:1521:XE";   // 디비버에서 적어준 설정파일 적기 만약 다른 PC라면 ip 주소 (localhost), 포트 (1521) , DB (xe) 바꿔주기
			String user = "jsp";   // DB 계정 아이디
			String password = "jsp"; // DB 계정 패스워드
		
			Class.forName(driver); // 해당 클래스를 드라이버 정보에 넘겨준다.  // C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib 경로에 있는 ojdbc6.jar 파일 라이브러리에 등록, 빌드패스 add까지 해야함
			// 오류가 그래도 날경우 있는데 이럴땐 프로젝트 우클릭> properties > develyment assembly > add > 에도 ojdbc6.jar 파일 등록하기
			conn = DriverManager.getConnection(url, user, password); // 오라클 정보 연결
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("드라이버 로딩 실패");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB 접속 오류");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("알 수 없는 오류");
		}
		
	
		return conn;
	}
}
