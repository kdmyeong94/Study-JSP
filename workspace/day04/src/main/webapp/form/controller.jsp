<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String site = request.getParameter("site");    
    
String requestURL ="";

if( site.equals("naver")){
	requestURL = "forward_naver.jsp";
} else if ( site.equals("google") ){
	requestURL = "forward_google.jsp";
} else if ( site.equals("daum")){
	requestURL = "forward_daum.jsp";
}
%>  


<jsp:forward page= "<%=requestURL %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>