
function sendit(){
	let frm = document.frm;
	let userid = frm.userid;
	let userpw = frm.userpw;
	
	
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
	
	frm.submit();
}