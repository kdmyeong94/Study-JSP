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
	
//	//  아이디를 입력하세요
//	if( userid.value == "" ){
//		alert("아이디를 입력하세요");
//		userid.focus();
//		return false;
//	}
//	// 아이디는 5자 이상, 16자 미만
//	if ( userid.value.length <=4 || userid.value.length >16){
//		alert("아이디는 5자 이상, 16자 미만으로 입력하세요!");
//		userid.focus();
//		return false;
//	}
//	// 비밀번호 입력
//	// 비밀번호는 8자 이상
//	if ( userpw.value ==""){
//		alert("비밀번호를 입력하세요");
//		userpw.focus();
//		return false;
//	} else {
//		if( userpw.value.length < 8){
//			alert("비밀번호는 8자리 이상으로 입력하세요!");
//			userpw.focut();
//			return false;
//		}
//	}
//	
//	
//	// 비밀번호 == 비밀번호 확인
//	if ( userpw.value != userpw_re.value ){
//		alert("비밀번호가 맞지 않습니다.");
//		userpw_re.focus();
//		return false;
//	}
//
//	// 이름
//	if ( username.value == ""){
//		alert("이름을 입력하세요.");
//		username.focus();
//		return false;
//	}
//	// 휴대폰번호
//	if ( userphone.value == ""){
//		alert("휴대폰 번호를 입력하세요.");
//		userphone.focus();
//		return false;
//	}
	// submit
	frm.submit();
}