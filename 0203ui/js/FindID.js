/**
 * 
 */


function FindID() {
      var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
      var getName= RegExp(/^[가-힣]+$/);
    
     
    //이름 공백 확인
      if($("#username").val() == ""){
        alert("이름을 입력하세요");
        $("#username").focus();
        return false;
      }
     //이름 유효성
      if (!getName.test($("#username").val())) {
        alert("이름이 형식에 맞지 않습니다");
        $("#username").val("");
        $("#username").focus();
        return false;
      }
     
 
     //이메일 공백 확인
      if($("#email").val() == ""){
        alert("이메일을 입력해주세요");
        $("#email").focus();
        return false;
      }
           
      //이메일 유효성 검사
      if(!getMail.test($("#email").val())){
        alert("이메일형식에 맞게 입력해주세요")
        $("#email").val("");
        $("#email").focus();
        return false;
      }
      callAjax();
 
}
function callAjax() {//ajax ID를 찾으러감
	$.ajax({
		type : "post",
		url : "./findIDdb.jsp",
		data : {
			
			name : $('#username').val(),
			email : $('#email').val()
			
		},
		success : whenSuccess,
		error : whenError
	})
}
function whenSuccess(resdata) {
 	if(resdata==0){//값이 0이면 일치하는 정보가 없음
 		$('#email').val("");
 		$('#username').val("");
 		$('#username').focus();
 		alert("일치하는 정보가 없습니다");
        }
 	else{//ID가있으면 ID를 받아옴
 		$("#find").val(resdata);//텍스트박스에 id값을 넣어주고
 		$("#findid").submit();//IDmessage페이지로 이동
 	}
}
function whenError() {
	alert("Error");
}
function out() {
	
	callAjax();
	}

    