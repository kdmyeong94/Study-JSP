/*
	회원가입 폼 value 확인하는 자바스크립트
*/

function sendit(){
	let frm = document.joinForm;
	let userid = frm.userid;
	let userpw = frm.userpw;
	let userpw_re = frm.userpw_re;
	let username = frm.username;
	let userphone = frm.userphone;
	
	//  아이디를 입력하세요
	if( userid.value == "" ){
		alert("아이디를 입력하세요");
		userid.focus();
		return false;
	}
	// 아이디는 5자 이상, 16자 미만
	if ( userid.value.length <=4 || userid.value.length >16){
		alert("아이디는 5자 이상, 16자 미만으로 입력하세요!");
		userid.focus();
		return false;
	}
	// 비밀번호 입력
	// 비밀번호는 8자 이상
	if ( userpw.value ==""){
		alert("비밀번호를 입력하세요");
		userpw.focus();
		return false;
	} else {
		if( userpw.value.length < 8){
			alert("비밀번호는 8자리 이상으로 입력하세요!");
			userpw.focut();
			return false;
		}
	}
	
	
	// 비밀번호 == 비밀번호 확인
	if ( userpw.value != userpw_re.value ){
		alert("비밀번호가 맞지 않습니다.");
		userpw_re.focus();
		return false;
	}

	// 이름
	if ( username.value == ""){
		alert("이름을 입력하세요.");
		username.focus();
		return false;
	}
	// 휴대폰번호
	if ( userphone.value == ""){
		alert("휴대폰 번호를 입력하세요.");
		userphone.focus();
		return false;
	}
	// submit
	frm.submit();
}

function checkId(userid){
	
	if ( userid == ""){
		alert("아이디를 입력해주세요");
	} else{
//		중복처리, ajax
		let xhr = new XMLHttpRequest();   // 객체생성 후
		xhr.open("GET", "idcheck.jsp?userid="+userid, true); // 방식, url, 비동기방식
		xhr.send();  // 요청을 보내기 >> 윗줄 페이지
		xhr.onreadystatechange = function(){ // 응답을 받아온 후
			if( xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200 ){  // 응답의 성공, 실패 여부를 확인하기
//				alert( xhr.responseText);
				
				if( xhr.responseText.trim() == "ok"){
					document.getElementById("text").innerHTML = "사용 할 수 있는 아이디 입니다.";
				} else {
					document.getElementById("text").innerHTML = "중복된 아이디입니다.";
				}
			}
		}
	}
	
}

