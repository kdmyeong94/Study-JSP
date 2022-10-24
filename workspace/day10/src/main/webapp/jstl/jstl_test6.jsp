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
	<!-- 
		조건 1. dan에 값이 없으면 단 입력창
		조건 2. dan에 값이 있으면 
			조건 2-1. 0 이하거나, 100 초과이면 '1이상 100이하의 숫자를 입력하세요!' 메세지 출력
			조건 2-2. 1이상 100이하 숫자이면 구구단 조회
	 -->

	<c:choose>
		<c:when test="${empty param.dan }">
			<form>
				단 
				<input type="text" name="dan"> <br> 
				<input type="submit">
			</form>
		</c:when>
		<c:otherwise>
			<c:set var="dan" value="${param.dan }" />
			<c:choose>
				<c:when test="${dan <= 0 || dan > 100}">1이상 100이하의 숫자를 입력하세요!</c:when>
				<c:when test="${dan >= 1 && dan <= 100 }">
					<c:forEach var="i" begin="1" end="9" step="1">
					${dan } * ${i } = ${dan*i } <br>
					</c:forEach>
				</c:when>
			</c:choose>
		</c:otherwise>
	</c:choose>

</body>
</html>