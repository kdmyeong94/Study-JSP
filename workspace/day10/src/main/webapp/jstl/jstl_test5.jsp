<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach begin="1" end="5">
		야호 <br>
	</c:forEach>
	
	<hr>
	시작 1 끝 5 <br>
	<c:forEach var="cnt" begin="1" end="5">
		${cnt } <br>
	</c:forEach>
	
	<hr>
	
	시작 1 끝 10 , 2씩 증가 <br>
	<c:forEach var="i" begin="1" end="10" step="2">
		${i } <br>
	</c:forEach>
	
	<hr>
	
	배열가져오기 <br>
	<c:set var="arData" value="<%=new int[]{10, 20, 30, 40, 50} %>"/>
	<c:forEach var="a" begin="0" end="4" step="1">
		${arData[a] }
	</c:forEach>
	
	<hr>
	
	items : 배열에 있는 데이터를 알아서 순서대로 가지고 오기 <br>
	<c:forEach var="data" items="${arData }">
		${data }
	</c:forEach>
	
	<hr>
	
	HashMap사용 > 순서 랜덤 <br>
	
	<%
		HashMap<String, Integer> map = new HashMap<>();
		map.put("하나", 1);
		map.put("둘", 2);
		map.put("셋", 3);
	%>
	<c:set var="map" value="<%=map %>"/>
	<c:forEach var="entry" items="${map }">
		${entry.key } : ${entry.value } <br>
	</c:forEach>
	
	<hr>
	
	구구단 만들기
	<c:forEach var="i" begin="1" end="9" step="1">
		5 * ${i } = ${5*i } <br>
	</c:forEach>
	
</body>
</html>