<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Ajax 요청 보내기 테스트</h3>
	<input type="submit" value="GET 방식으로 요청 보내기" onclick="send1();">  <!-- 버튼 클릭시 펑션 send1이동 -->
	<input type="submit" value="POST 방식으로 요청 보내기" onclick="send2();">
	<p id="result"></p>
</body>

<script>
	function send1(){  // ajax 통신을 사용하는 방법 
		let xhr = new XMLHttpRequest();   // 객체생성 후
		xhr.open("GET", "request_ajax.jsp?userid=apple&userpw=1234", true); // 방식, url, 비동기방식
		xhr.send();  // 요청을 보내기 >> 윗줄 페이지
		xhr.onreadystatechange = function(){ // 응답을 받아온 후
			if( xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200 ){  // 응답의 성공, 실패 여부를 확인하기
				document.getElementById("result").innerHTML = xhr.responseText; // 응답 성공시 'result' 파라미터 값 두개 생성
// 				alert(xhr.responseText);  // request_ajax.jsp 페이지의 모든 내용 표시
			}
		}
		
	}
	
	function send2(){  // 포스트방식
		let xhr = new XMLHttpRequest();
		xhr.open("POST", "request_ajax.jsp", true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.send("userid=post&userpw=5678");
		xhr.onreadystatechange = function(){
			if( xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200 ){  // 응답의 성공, 실패 여부를 확인하기
				document.getElementById("result").innerHTML = xhr.responseText; // 응답 성공시 'result' 파라미터 값 두개 생성
// 				alert(xhr.responseText);  // request_ajax.jsp 페이지의 모든 내용 표시
			}
		}
	}	
</script>
	


</html>