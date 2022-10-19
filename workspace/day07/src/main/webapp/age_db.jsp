<!-- db와 연결된 페이지 -->

<%@page import="com.koreait.web.dao.MemberDAO"%>
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
		String name = request.getParameter("name");  // input에서 입력받은 값을 파라미터로 받기
		
		//db connection
// 		Connection conn = DBConnection.getConnection();    // import 하면서 불러오기
// 		String sql = "SELECT age FROM MEMBER WHERE name =?";
// 		PreparedStatement pstm = conn.prepareStatement(sql);
		
// 		pstm.setString(1, name);
// 		ResultSet rs = pstm.executeQuery();

		// db select  >> MemberDAO로 이전
	
		MemberDAO mdao = new MemberDAO();
		int age = mdao.getAge(name);		
	%>
	
	<%
		if ( age != 0){
	%>
		이름 : <%=name %> <br>
		나이 : <%=age %> <br>
	<%
		} else {
	%>
		찾는 이름이 없습니다.
	<%
		}
	%>
	<input type="button" value="다시 검색하기" onclick="location.href='age_search.jsp'">
	
	
	
	
	
</body>
</html>