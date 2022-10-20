<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간 순위</title>
</head>
<body>
	<h1>Ajax를 이용해 실시간 순위 나타내기</h1>
	<table border="1">
		<tr>
			<th>실시간 검색 순위</th>
			<th>키워드</th>
		</tr>
		<tr>
			<td id="td1">순위</td>
			<td id="td2">키워드</td>
		</tr>
	</table>
</body>
	<script>
		// window.onload : HTML 이 load가 완료 됐을 때 실행
		window.onload = function(){
			let obj = "";		
			let word = new Array();
			let xhr = new XMLHttpRequest();   // 객체생성 후
			xhr.open("GET", "data2.json", true); // 방식, url, 비동기방식
			xhr.send();  // 요청을 보내기 >> 윗줄 페이지
			xhr.onreadystatechange = function(){ // 응답을 받아온 후
				if( xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200 ){  // 응답의 성공, 실패 여부를 확인하기
					obj = JSON.parse( xhr.responseText);
// 					alert(JSON.parse( xhr.responseText));
					
// 					파싱된 obj에서 search_word라는 key를 가지고 있는 것을 꺼내보면
// 					[ {}, {}, {}, {}, {},] 가 나온다. (배열 return)
					for ( let i = 0; i < obj.search_word.length; i++){
						
// 						obj.search_word 배열의 각 방에는 또 json들이 담겨잇다.
// 						( { "rank" : 순위 , "name" : 검색어})
// 						각 방의 json들에서 name키로 담겨있는 검색어를 꺼내서 word 배열의 각 방에 넣는다.
						word[i] = obj.search_word[i].name;
					}
					
				}
			
			}
			let i = 0;
			let interval = setInterval(function(){  // 특정 시간이 되면 멈추게 하기위해 메서드를 변수에 할당
				// 0 , 1, 2, 3, 4 - > 5가 되는 순간 다시 0
				i = i % obj.search_word.length;
				document.getElementById("td1").innerHTML = i + 1; 
				document.getElementById("td2").innerHTML = word[i];
				i++;
			},2000);
			
			// setTimeout(함수, 밀리초); : 해당 밀리초 이후에 함수 호출
			setTimeout(function(){
				clearInterval(interval);
			},20000);
				// clearInterval ( 인터벌 ) : 해당 인터벌 삭제
				
			
		}
	</script>

</html>