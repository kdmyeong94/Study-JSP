<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 액션에  db와 연결된 페이지 연결-->
	<form action="age_db.jsp">  
		<label>이름 <input type = "text" name="name"> </label>
		<input type = "submit">
	</form>
	<!-- 자바스크립트 연결 -->
	<input type="button" value="전체 확인하기" onclick="selectAll();"> 
</body>

	<script>
		function selectAll(){
			location.href = "age_all.jsp";  // db 와 연결될 페이지
		}
	</script>
</html>