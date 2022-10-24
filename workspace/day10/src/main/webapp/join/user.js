/*
	회원가입 폼 value 확인하는 자바스크립트
*/

function sendit() {
	let frm = document.joinForm;
	let userid = frm.userid;
	let userpw = frm.userpw;
	let userpw_re = frm.userpw_re;
	let username = frm.username;
	let userphone = frm.userphone;

	//  아이디를 입력하세요
	if (userid.value == "") {
		alert("아이디를 입력하세요");
		userid.focus();
		return false;
	}
	// 아이디는 5자 이상, 16자 미만
	if (userid.value.length <= 4 || userid.value.length > 16) {
		alert("아이디는 5자 이상, 16자 미만으로 입력하세요!");
		userid.focus();
		return false;
	}
	// 비밀번호 입력
	// 비밀번호는 8자 이상
	if (userpw.value == "") {
		alert("비밀번호를 입력하세요");
		userpw.focus();
		return false;
	} else {
		if (userpw.value.length < 8) {
			alert("비밀번호는 8자리 이상으로 입력하세요!");
			userpw.focut();
			return false;
		}
	}


	// 비밀번호 == 비밀번호 확인
	if (userpw.value != userpw_re.value) {
		alert("비밀번호가 맞지 않습니다.");
		userpw_re.focus();
		return false;
	}

	// 이름
	if (username.value == "") {
		alert("이름을 입력하세요.");
		username.focus();
		return false;
	}
	// 휴대폰번호
	if (userphone.value == "") {
		alert("휴대폰 번호를 입력하세요.");
		userphone.focus();
		return false;
	}
	// submit
	frm.submit();
}

function checkId(userid) {

	if (userid == "") {
		alert("아이디를 입력해주세요.");
	} else {
		// 중복처리 , ajax
		let xhr = new XMLHttpRequest();   // 객체생성 후
		xhr.open("GET", "idcheck.jsp?userid=" + userid, true); // 방식, url, 비동기방식
		xhr.send();  // 요청을 보내기 >> 윗줄 페이지
		xhr.onreadystatechange = function() { // 응답을 받아온 후
			if (xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {  // 응답의 성공, 실패 여부를 확인하기
				//			alert(xhr.responseText);  idcheck 내용 얼럿창 띄우기
				if (xhr.responseText.trim() == "회원가입가능") {
//					alert("가입 가능");   얼럿창확인
					document.getElementById("text").innerHTML = "사용 할 수 있는 아이디입니다.";
				} else {
//					alert("가입 불가능");  얼럿창확인
					document.getElementById("text").innerHTML = "중복된 아이디입니다.";
				}
				
			}
		}
	}
}

function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
