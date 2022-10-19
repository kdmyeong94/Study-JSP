<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean class="com.koreait.web.beans.MemberBean" id="member"/>  <!-- class에 패키지부터 클래스명까지 정확히 입력 -->
	<jsp:setProperty property="name" name="member" value = "김자바"/>  <!-- name에는 위에 쓰인 id member / property는 자바파일에 정의된 변수 private String name -->
	<jsp:setProperty property="age" name="member" value = "20"/>
	<table border = "1">
		<tr>
			<th>이름</th>
			<th>나이</th>
		</tr>
		<tr>
			<td> <jsp:getProperty property="name" name="member"/> </td>
			<td> <jsp:getProperty property="age" name="member"/> </td>
		</tr>
	</table>
	
</body>
</html>