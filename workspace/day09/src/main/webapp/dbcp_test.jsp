<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
		// dbcp를 이용하는 방법
		Context context = new InitialContext(null);
		DataSource dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
		Connection conn = dataSource.getConnection();
		
		String sql = "select sysdate from dual";
		
		PreparedStatement pstm = conn.prepareStatement(sql);
		
		ResultSet rs = pstm.executeQuery();
		
		Date date = null;
		
		if(rs.next()){
			date = rs.getDate(1);
		}
		
	%>
	<%=date %>
<!-- 	오류가 날 경우 아파치 폴더 > 라이브러리 dbcp.jar 파일 라이브러리 추가 -->
<%-- 	<%=conn %> --%>
</body>
</html>