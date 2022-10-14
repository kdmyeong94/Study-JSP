<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn = null;
String driver = "oracle.jdbc.driver.OracleDriver";  // 오라클에 접근 할 수있는 경로 ( 라이브러리에 있음) 		
String url = "jdbc:oracle:thin:@localhost:1521:xe";   // 디비버에서 적어준 설정파일 적기 만약 다른 PC라면 ip 주소 (localhost), 포트 (1521) , DB (xe) 바꿔주기
String user = "jsp";   // DB 계정 아이디
String password = "jsp"; // DB 계정 패스워드

Class.forName(driver);  // 해당 클래스를 드라이버 정보에 넘겨준다.  // C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib 경로에 있는 ojdbc6.jar 파일 라이브러리에 등록, 빌드패스 add까지 해야함
//오류가 그래도 날경우 있는데 이럴땐 프로젝트 우클릭> properties > deployment assembly > add > 에도 ojdbc6.jar 파일 등록하기
	System.out.println("jdbc Driver 로딩 성공!");

	conn = DriverManager.getConnection(url, user, password);
	
	String sql = "SELECT * FROM car";
// 		1	Benz	Black	100000000
// 		2	Benz	Black	200000000
//		3	K7		White	70000000
//	 	4	K7		White	70000000

	
	PreparedStatement pstm = conn.prepareStatement(sql);
	ResultSet rs = pstm.executeQuery();
	
// 	while ( rs.next()){
// 		out.println("차 번호 : " + rs.getString(1));
// 		out.println("브랜드 : " + rs.getString("BRAND"));
// 		out.println("색상 : " + rs.getString(3));
// 		out.println("가격 : " + rs.getInt("PRICE"));
// 	}
	
	while (rs.next()) {
		out.println("차번호 : " + rs.getString(1) + "\t");
		out.println("브랜드 : " + rs.getString("BRAND") + "\t");
		out.println("색 상 : " + rs.getString(3) + "\t");
		out.println("가 격 : " + rs.getInt(4) + "\t" + "원<br>");
	}

		   out.println("<hr>");
	
	
	out.println("<br><hr>");
	String carnum = "3";
// 	sql = "SELECT *	FROM CAR WHERE CARNUM = '" + carnum + "'";
	sql = "SELECT color	FROM CAR WHERE CARNUM =  ?";
	
	pstm = conn.prepareStatement(sql);
	
	pstm.setString(1, carnum); // 첫번째 물음표에 carnum 문자 넣기
	
	rs = pstm.executeQuery();
	
	if ( rs.next()){
		out.println("컬러 : " + rs.getString(1));
	}
	
	// close 반납
	rs.close();
	pstm.close();
	conn.close();
	
%>
</body>
</html>