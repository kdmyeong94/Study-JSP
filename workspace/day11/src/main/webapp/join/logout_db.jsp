<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  DB에 수정되는건 x 세션만 해제해 주면됨 -->
	<%
// 		session.removeAttribute("session_id");
// 				or
		session.invalidate();

		response.sendRedirect("login_view.jsp"); // 로그인페이지로 다시 이동
	%>
</body>
</html>