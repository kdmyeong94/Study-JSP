<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입 폼</h3>
	<form action="join" method="post" id="joinForm">
		아이디 	: <input type="text" name="userid" id="userid" /> <br>
		비밀번호 	: <input type="password" name="userpw" id="userpw" /> <br>
		이름 		: <input type="text" name="username" id="username" /> <br>
		휴대폰번호	: <input type="text" name="userphone" id="userphone" /> <br>
		<br>
		<input type="button" value="회원가입" onclick="sendit();">
	</form>
</body>
<script>
	function sendit(){
		let joinForm = document.getElementById("joinForm");
		
		// id 값으로 접근
		let id = document.getElementById("userid");
		let pw = document.getElementById("userpw");
		
		// name속성으로 접근
		let name = joinForm.username;
		let phone = joinForm.userphone;
		
		if(id.value == ""){
			alert("ID를 입력해주세요.");
			id.focus();
			return false;
		}
		if(pw.value == ""){
			alert("비밀번호를 입력해주세요.");
			pw.focus();
			return false;
		}
		if(pw.value.length<8){
			alert("비밀번호는 8자리 이상으로 입력하세요");
			pw.focus();
			return false;
		}
		
		if(name.value == ""){
			alert("이름을 입력해주세요.");
			name.focus();
			return false;
		}
		if(phone.value == ""){
			alert("핸드폰번호를 입력해주세요.");
			phone.focus();
			return false;
		}
		
		joinForm.submit();
	}
</script>
</html>