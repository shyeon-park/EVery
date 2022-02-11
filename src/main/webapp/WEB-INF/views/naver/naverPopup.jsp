<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>네이버 로그인</title>
</head>
<body>
</body>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
<script>
	/* var naver_id_login = new naver_id_login("MJ4BRMl5k9pVssgoUg87", "http://localhost:8080/member/getNaverPopup.do"); // 역시 마찬가지로 'localhost'가 포함된 CallBack URL
	
	// 접근 토큰 값 출력
    alert(naver_id_login.oauthParams.access_token);
    
    // 네이버 사용자 프로필 조회
    naver_id_login.get_naver_userprofile("naverSignInCallback()");
    
    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
    function naverSignInCallback() {
        console.log(naver_id_login.getProfileData('email'));
        console.log(naver_id_login.getProfileData('nickname'));
        console.log(naver_id_login.getProfileData('age'));
    } */
    
    // 메인페이지로 네이버에서 받아온 값을 넘기는 함수
    function sendChildValue(userProfile){
			opener.setChildValue(userProfile);
			//opener.location.replace("${pageContetx.request.contextPath}/");
			window.close();
	}
    
    /* function sendChildValue(userProfile){
		opener.setChildValue(userProfile);
		//opener.location.replace("${pageContetx.request.contextPath}/");
		window.close();
	} */
    
	var naverLogin = new naver.LoginWithNaverId({
		clientId : "MJ4BRMl5k9pVssgoUg87", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
		callbackUrl : "http://localhost:8001/member/getNaverPopup.do", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
		isPopup : false,
		callbackHandle : true
	});
	naverLogin.init();
	
	window.addEventListener('load', function() {
		naverLogin.getLoginStatus(function (status) {
			if (status) {
				var id = naverLogin.user.getId();
 				var phone = naverLogin.user.getMobile(); // 필수로 설정할것을 받아와 아래처럼 조건문 걸기
 				var nickname = naverLogin.user.getNickName();
 				var email = naverLogin.user.getEmail();
 				
 				var userProfile = [id, phone, nickname, email];
 				
 				console.log(naverLogin.user);
 				console.log(phone);
 				console.log(id);
 				console.log(email);
 				console.log(nickname);
 				console.log(userProfile);
 				if( phone == undefined || phone == null) { 
 					alert("핸드폰 번호는 필수정보입니다. 정보제공을 동의해주세요.");
 					naverLogin.reprompt();
 					return;
 				} else if (nickname == undefined || nickname == null) {
 					alert("닉네임은 필수정보입니다. 정보제공을 동의해주세요.");
 					naverLogin.reprompt();
 					return;
 				} else if (email == undefined || email == null) {
 					alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
 					naverLogin.reprompt();
 					return;
 				}
 				
 				// 부모페이지로 값을 넘기는 함수 호출
 				sendChildValue(userProfile);
			}else {
 				console.log("callback 처리에 실패하였습니다.");
 			}
		})
		

	})
</script>
</html>