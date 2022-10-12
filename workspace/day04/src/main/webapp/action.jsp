<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <!--   <%
    String name = request.getParameter("user_name"); 
    
    String result = null;
    
    if(!name.equals("")){
    	result = name;
    } else if ( name == null){
    	result = "이름이 없습니다.";
    } else {
    	result = "이름을 입력하세요";
    }
    
    %>
     -->
     
     <%
     String username = request.getParameter("user_name"); 
     
     if (username == null){
    	 username = "이름이 없습니다.";
     }
     
     username = username.trim();
     
     if (username.equals("")){
    	 username = "이름을 입력하세요";
     }
%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <%=result %> -->
	<div>
	<h1> <%=username %></h1>
	</div>
</body>
</html>