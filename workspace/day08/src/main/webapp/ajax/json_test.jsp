<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	let xhr = new XMLHttpRequest();   // 객체생성 후
	xhr.open("GET", "data.json", true); // 방식, url, 비동기방식
	xhr.send();  // 요청을 보내기 >> 윗줄 페이지
	xhr.onreadystatechange = function(){ // 응답을 받아온 후
		if( xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200 ){  // 응답의 성공, 실패 여부를 확인하기
// 			alert(xhr.responseText);
			let obj = JSON.parse( xhr.responseText);
			alert(obj.result);
			alert(obj.count);
		}
	}
	
	
	
	</script>
</body>
</html>