<!-- db와 연결될 페이지 -->

<%@page import="com.koreait.web.beans.MemberBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mdao" class="com.koreait.web.dao.MemberDAO"/>
	<%
		// db connection
		//db select >> MemberDAO에 작성
		ArrayList<MemberBean> result = mdao.selectAll();
	
	%>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>나이</th>
		</tr>
		<%
			for(MemberBean member : result){
		%>
			<tr>
				<td><%=member.getName() %></td>
				<td><%=member.getAge() %></td>  
			</tr>
		<%
			}
		%>
	</table>
	<input type="button" value="다시검색하기" onclick="location.href= 'age_search.jsp'">
	
	
</body>
</html>