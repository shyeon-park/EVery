<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전기차의 모든것 EVery</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/5d169e4fe1.js" crossorigin="anonymous"></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
@font-face {
    font-family: 'Pretendard-SemiBold';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-SemiBold.woff') format('woff');
    font-weight: 600;
    font-style: normal;
}
</style>
<!-- 배달의민족 도현 글꼴 -->

<style>
* {
	box-sizing: border-box;
/* 	font-family: 'Do Hyeon', sans-serif; */
	font-family: 'Pretendard-SemiBold';
	color:black;
}

html {
	width: 100vw;
	height: 100%;
}

body {
	width: 100%;
	height: auto;
}

a {
	text-decoration: none;
	color: black;
}

/* Navi 영역*/
.navber {
	width: 82.6vw;
	margin: auto;
	padding-top: 30px;
	padding-bottom: 30px;
	background-color: white;
	position: fixed;
	left: 50%;
	transform: translateX(-50%);
	z-index: 1;
}

.nav-items {
	margin: auto;
	width: 100%;
}

a:hover {
	text-decoration: none;
	color: #18a8f1;
	border-bottom: 2px solid black;
}

.navi-logo {
	text-align: left;
	padding: 0px;
}

.navi-menu {
	text-align: center;
	padding: 0px 10px;
}

.navi-menu>a, img {
	line-height: 32px;
}

.navi-onButtons {
	padding-top: 92px;
	margin: auto;
	width: 82.6vw;
	height: 0;
	display: none;
}

.navi-onButtons>div {
	padding: 10px 0px;
	text-align: center;
}

.badge {
	height: 16px;
	line-height: 8px;
}

/* main 영역 */
.main {
	padding-top: 92px;
	width: 82.6vw;
	margin: auto;
}

.card {
	border-radius: 10%;
	margin: auto;
	margin-bottom: 20px;
	border: 2px solid gray;
}

/* footer 영역 */
.footer {
	margin: auto;
	width: 82.6vw;
}

.footer-top {
	margin: auto;
	width: 82.6vw;
}

.footer-top>ul {
	padding: 0px;
	margin: 0px;
}

.footer-top>ul>li {
	list-style: none;
	float: left;
	margin-right: 10px;
}

.footer-body {
	margin: auto;
	width: 82.6vw;
	border-bottom: 2px solid gray;
	border-top: 2px solid gray;
	padding-bottom: 20px;
}

.footer-body-left {
	margin-top: 20px;
	padding: 0px;
}

.footer-body-left>p {
	padding: 0px;
	margin: 0px;
}

.footer-body-right {
	margin-top: 20px;
	padding: 0px;
}

.footer-body-right>p {
	padding: 0px;
	margin: 0px;
}
.foot-bottom-right {
	text-align: right;
}

/* 멤버 모달 영역 */
.memberContainer {
	width: 80%;
	margin: auto;
	margin-bottom: 50px;
	margin-top: 50px;
}

.memberRow {
	margin-top: 10px;
}

.loginLogo {
	text-align: center;
	height: 100px;
}

.loginLogo>img {
	width: 250px;
	height: 100%;
}

.memberLabel {
	font-size: 14px;
}

.loginInput {
	border: none;
	border-bottom: 1px solid lightgrey;
	border-radius: 0;
}

.loginInput:focus {
	box-shadow: 0 0 0 0;
	outline: none;
	border: none;
	border-bottom: 2px solid #18a8f1;
}

.signupInput {
	border: none;
	border-radius: 0;
	border-bottom: 1px solid lightgrey;
}

.signupInput:focus {
	box-shadow: 0 0 0 0;
	/*outline: none;*/
	border: none;
	border-bottom: 2px solid grey;
}

.signupInput:read-only {
	background-color: #fff;
}

.findBtn {
	font-size: 12px;
	background-color: #fff; 
	border: none;
	padding: 0;
}

.findBtn:hover, #signupBtn:hover {
	color: #18a8f1;
}

</style>
</head>
<body>
	<nav class="navber">
		<div class="row nav-items d-flex justify-content-center">
			<div class="col-2 col-xl-1 navi-logo">
				<a href="${pageContext.request.contextPath }/"><img
					src="/resources/images/logo.png" width="80px"></a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="${pageContext.request.contextPath }/station/toGetStation">충전소조회</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="">칼럼</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="">커뮤니티</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="">고객지원</a>
			</div>
			<c:choose>
				<c:when test="${empty loginSession}">
				</c:when>
				<c:when test="${empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu">
						<a href="">마이페이지</a>
					</div>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${empty loginSession}">
				<div class="col-xl-5 col-8 navi-menu"></div>
				</c:when>
				<c:when test="${!empty loginSession}">
					<div class="col-xl-4 col-6 navi-menu"></div>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu">
						<a onclick="openLoginModal();">로그인</a>
					</div>
				</c:when>
				<c:when test="${!empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu">
						<a onclick="logoutFunc();">로그아웃</a>
					</div>
				</c:when>
			</c:choose>
			<div class="col-xl-1 col-1 navi-menu">
			<a id=""><img src="/resources/images/favorite.png" width="24px"
					height="24px"></a>
<!-- 				<a href="">cart <span id="cartCount" class="badge bg-dark rounded-pill">2</span></a> -->
			</div>
			<div class="col-xl-0 col-1 d-xl-none navi-menu">
				<a id="btn_navi_menu"><img src="/resources/images/menu.png" width="20px"
					height="24px"></a>
			</div>
		</div>
	</nav>
	<div class="row navi-onButtons">
		<div class="col-12">
			<a href="${pageContext.request.contextPath }/station/toGetStation">충전소 조회</a>
		</div>
		<div class="col-12">
			<a href="">칼럼</a>
		</div>
		<div class="col-12">
			<a href="">커뮤니티</a>
		</div>
		<div class="col-12">
			<a href="">고객지원</a>
		</div>
		<c:choose>
			<c:when test="${empty loginSession}">
			</c:when>
			<c:when test="${!empty loginSession}">
				<div class="col-12">
					<a href="">마이페이지</a>
				</div>
			</c:when>
		</c:choose>
		
		<c:choose>
			<c:when test="${empty loginSession}">
				<div class="col-12">
					<a href="">로그인</a>
				</div>
			</c:when>
			<c:when test="${!empty loginSession}">
				<div class="col-12">
					<a href="">로그아웃</a>
				</div>
			</c:when>
		</c:choose>
	</div>
	<div class="main">
		<!-- 로그인 모달 -->
	<div class="modal fade" id="loginModal" aria-hidden="true"
		data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel">Login</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="memberContainer">
						<div class="row memberRow">
							<div class="col-12 loginLogo">
								<img src="/resources/images/logo.png">
							</div>
						</div>
						<div class="row memberRow">
								<!-- flexRadioDefault -->
								<div class="col12">
									<input class="form-check-input" name="flexRadioDefault" type="radio" id="flexRadioDefault1 userLogin"  value="0" checked>
  									<label class="form-check-label" for="flexRadioDefault1">일반회원</label>
				
  									<input class="form-check-input" name="flexRadioDefault" type="radio" id="flexRadioDefault2 adminLogin" value="1">
  									<label class="form-check-label" for="flexRadioDefault2">관리자</label>
								</div>
							</div>
						<form id="loginForm">
							<div class="row memberRow">
								<div class="col-12">
									<input type="text" class="form-control loginInput" id="loginId" name="id" placeholder="아이디 입력">
								</div>
							</div>
							<div class="row memberRow">
								<div class="col-12">
									<input type="password" class="form-control loginInput" id="loginPw" name="pw" placeholder="비밀번호 입력">
								</div>
							</div>
						</form>
						<div class="row memberRow">
							<div class="col-6">
								<div class="form-check form-switch">
  									<input class="form-check-input rememberId" type="checkbox" role="switch" id="flexSwitchCheckDefault">
  									<label class="form-check-label" style="font-size: 12px;">아이디 기억하기</label>
								</div>
							</div>
							<div class="col-6" style="text-align: right;">
								<button data-bs-target="#signupModal" data-bs-toggle="modal"
									style="background-color: #fff; border: none;" id="signupBtn">회원가입</button>
							</div>
						</div>
						<div class="row memberRow">
							<div class="col-12">
								<button type="button" id="loginBtn" class="btn btn-dark"
									style="width: 100%;">로그인</button>
							</div>
						</div>
						<div class="row memberRow" style="margin-top: 20px; margin-bottom: 20px;">
							<div class="col-12" style="text-align: center;">
								<p style="color: grey; font-size: 12px; margin-bottom: 0px;">----------------------- SNS 소셜 로그인 ------------------------</p>
							</div>
						</div>
						<div class="row memberRow">
							<div class="col-12">
								<div id="naverIdLogin">
									<!-- <button type="button" id="naverIdLogin_loginButton" style="border:none; background-color:#fff;" onclick="naverLogout()">
										<img src="https://static.nid.naver.com/oauth/button_g.PNG?version=js-2.0.1" height="40">
									</button> -->
								</div>
							</div>
						</div>
						<div class="row memberRow">
							<div class="col-12" style="text-align: right;">
								<button type="button" id="findId" class="findBtn" data-bs-target="#findIdPwModal" data-bs-toggle="modal">아이디 찾기</button>
								<button type="button" id="findPw" class="findBtn findPw" data-bs-target="#findIdPwModal" data-bs-toggle="modal">비밀번호 찾기</button>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="modal-footer">
					<button class="btn btn-primary" data-bs-target="#signupModal"
						data-bs-toggle="modal">Open second modal</button>
				</div> -->
			</div>
		</div>
	</div>

	<!-- 회원가입 모달 -->
	<div class="modal fade" id="signupModal" aria-hidden="true"
		data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div
			class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel2">Signup</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="invalidateAuthSession()"></button>
				</div>
				<div class="modal-body">
					<form id="signupForm">
						<div class="memberContainer">
							<div class="row memberRow">
								<div class="col-12">
									<label class="form-check-label memberLabel" id="idLabel">아이디</label>
								</div>
								<div class="col-9">
									<input type="text" class="form-control signupInput" id="id" name="id">
								</div>
								<div class="col-3">
									<button type="button" id="checkIdBtn" class="btn btn-dark checkIdBtn"
										style="width: 100%;">중복확인</button>
								</div>
								<p id="idTxt" class="txtCls idTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
							</div>
							<div class="row memberRow">
								<div class="col-12">
									<label class="form-check-label memberLabel" id="pwLabel">비밀번호</label>
								</div>
								<div class="col-12">
									<input type="password" id="pw" name="pw" class="form-control signupInput">
									<p id="pwTxt" class="txtCls pwTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
								</div>
							</div>
							<div class="row memberRow">
								<div class="col-12">
									<label class="form-check-label memberLabel" id="pwCheckLabel">비밀번호 확인</label>
								</div>
								<div class="col-12">
									<input type="password" id="pwCheck" name="pwCheck" class="form-control signupInput">
									<p id="pwCheckTxt" class="txtCls pwCheckTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
								</div>
							</div>
							<div class="row memberRow">
								<div class="col-12">
									<label class="form-check-label memberLabel" id="nicknameLabel">닉네임</label>
								</div>
								<div class="col-9">
									<input type="text" id="nickname" name="nickname" class="form-control signupInput">
								</div>
								<div class="col-3">
									<button type="button" id="checkNicknameBtn" class="btn btn-dark checkNicknameBtn" style="width: 100%;">중복확인</button>
								</div>
								<p id="nicknameTxt" class="txtCls nicknameTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
							</div>
							<!-- <div class="row" id="phoneDiv"> -->
							<div class="row memberRow">	
								<div class="col-12">
									<label class="form-check-label memberLabel" id="phoneLabel">핸드폰</label>
								</div>
								<div class="col-3">
									<select class="form-select signupInput selectPhone" aria-label="Default select example" id="phoneNum1">
										<option value="선택" selected>선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="012">012</option>
										<option value="017">017</option>
										<option value="019">019</option>
									</select>
								</div>
								<div class="col-3">
									<input type="text" id="phoneNum2" class="form-control signupInput phoneNum" name="phoneNum2" maxlength="4">
								</div>
								<div class="col-3">
									<input type="text" id="phoneNum3" class="form-control signupInput phoneNum" name="phoneNum3" maxlength="4">
								</div>
								<div class="col-3">
									<button type="button" class="btn btn-secondary sendSmsBtn" id="sendSmsBtn" style="width: 100%; font-size: 10px;">인증번호 전송</button>
								</div>
								<input type="text" id="phone" name="phone" class="phone" hidden>
								<p class="txtCls phoneTxt" id="phonetxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
							</div>
							<!-- <input type='text' id='phone' name='phone' class='phone' hidden> -->
							<div class="row auth memberRow" id="auth"></div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary" data-bs-target="#loginModal" data-bs-toggle="modal" onclick="invalidateAuthSession()">뒤로가기</button>
					<button class="btn btn-dark" type="button" id="joinBtn">가입하기</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 아이디/비밀번호 찾기 모달 -->
	<div class="modal fade" id="findIdPwModal" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title findTitle" id="exampleModalToggleLabel2"></h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="invalidateAuthSession()"></button>
				</div>
				<div class="modal-body findModal-body">
					<div class="row memberRow" id="findIdInput"></div>
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel" id="phoneLabel">핸드폰</label>
						</div>
						<div class="col-3">
							<select class="form-select signupInput selectPhone" aria-label="Default select example" id="phoneNum1_find">
								<option value="선택" selected>선택</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="012">012</option>
								<option value="017">017</option>
								<option value="019">019</option>
							</select>
						</div>
						<div class="col-3">
							<input type="text" id="phoneNum2_find" class="form-control signupInput phoneNum_find phoneNum" name="phoneNum2" maxlength="4">
						</div>
						<div class="col-3">
							<input type="text" id="phoneNum3_find" class="form-control signupInput phoneNum_find phoneNum" name="phoneNum3" maxlength="4">
						</div>
						<div class="col-3">
							<button type="button" class="btn btn-secondary sendAuthNumBtn sendSmsBtn" id="sendSmsBtn_find" style="width: 100%; font-size: 10px;">인증번호 전송</button>
						</div>
						<input type="text" id="phone_find" name="phone" class="phone" hidden>
						<p class="txtCls phoneTxt" id="phoneTxt_find" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
					</div>
					<div class="row auth memberRow" id="auth_find"></div>
					<div class="row memberRow" id="idBox"></div>
					
				</div>
				<div class="modal-footer findModalFooter"></div>
			</div>
		</div>
	</div>
	
	<!-- 비밀번호 변경 모달 -->
	<div class="modal fade" id="modifyPwModal" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel2">비밀번호 변경</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close" onclick="invalidateAuthSession()"></button>
				</div>
				<div class="modal-body">
				<form id="modifyPwForm">
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel" id="pwLabel">새 비밀번호</label>
						</div>
						<div class="col-9">
							<input type="password" id="newPw" name="pw" class="form-control signupInput">
							<p id="pwTxt_update" class="txtCls pwTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px; color: grey;">비밀번호는 영문,숫자,특수문자를 포함하여 10자리 이상으로 설정해주세요.</p>
						</div>
					</div>
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel" id="pwCheckLabel">새 비밀번호 확인</label>
						</div>
						<div class="col-9">
							<input type="password" id="newPwCheck" class="form-control signupInput" name="pwCheck">
							<p id="pwCheckTxt_update" class="txtCls pwCheckTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
						</div>
					</div>
				</form>
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary" data-bs-target="#loginModal" data-bs-toggle="modal">뒤로가기</button>
					<button class="btn btn-dark" type="button" id="modifyPwBtn">변경</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- sns 회원가입 아이디 모달 -->
	<div class="modal fade" id="snsIdModal" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel2">SNS 회원가입 (1/4)</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="invalidateAuthSession()"></button>
				</div>
				<div class="modal-body" style="margin-top: 30px; margin-bottom: 30px;">
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel">아이디</label>
						</div>
						<div class="col-9">
							<input type="text" class="form-control signupInput" id="snsSignupId" name="id">
						</div>
						<div class="col-3">	
							<button type="button" id="snsCheckIdBtn" class="btn btn-dark checkIdBtn" style="width: 100%;">중복확인</button>
						</div>
						<p id="snsIdTxt" class="txtCls idTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px; color: grey;">
							영문 소문자로 시작하고 영문, 숫자를 조합하여 6~14 이내로 설정해주세요.
						</p>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" style="background-color: #fff; border: none;" data-bs-target="#loginModal" data-bs-toggle="modal">
						<i class="fas fa-arrow-left fa-lg" style="color: lightgrey;"></i>
					</button>
					<button type="button" style="background-color: #fff; border: none;" onclick="getSnsPwModal();">
						<i class="fas fa-arrow-right fa-lg" style="color: #18a8f1;"></i>
					</button> 
				</div>
			</div>
		</div>
	</div>
	
	<!-- sns 회원가입 비밀번호 모달 -->
	<div class="modal fade" id="snsPwModal" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel2">SNS 회원가입 (2/4)</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="invalidateAuthSession()"></button>
				</div>
				<div class="modal-body" style="margin-top: 30px; margin-bottom: 30px;">
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel" id="pwLabel">비밀번호</label>
						</div>
						<div class="col-12">
							<input type="password" id="snsSignupPw" name="pw" class="form-control signupInput">
							<p id="snsPwTxt" class="txtCls pwTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;">
								비밀번호는 영문,숫자,특수문자를 포함하여 10자리 이상으로 설정해주세요.
							</p>
						</div>
					</div>
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel" id="pwCheckLabel">비밀번호 확인</label>	
						</div>
						<div class="col-12">
							<input type="password" id="snsSignupPwCheck" class="form-control signupInput"  name="pwCheck">
							<p id="snsPwCheckTxt" class="txtCls pwCheckTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" style="background-color: #fff; border: none;" data-bs-target="#snsIdModal" data-bs-toggle="modal">
						<i class="fas fa-arrow-left fa-lg" style="color: lightgrey;"></i>
					</button>
					<button type="button" style="background-color: #fff; border: none;" onclick="getSnsNicknameModal();">
						<i class="fas fa-arrow-right fa-lg" style="color: #18a8f1;"></i>
					</button> 
				</div>
			</div>
		</div>
	</div>
	
	<!-- sns 회원가입 닉네임 모달 -->
	<div class="modal fade" id="snsNicknameModal" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel2">SNS 회원가입 (3/4)</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="invalidateAuthSession()"></button>
				</div>
				<div class="modal-body" style="margin-top: 30px; margin-bottom: 30px;">
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel" id="nicknameLabel">닉네임</label>
						</div>
						<div class="col-9">
							<input type="text" id="snsSignupNickname" name="nickname" class="form-control signupInput">
						</div>
						<div class="col-3">
							<button type="button" id="snsCheckNicknameBtn" class="btn btn-dark checkNicknameBtn" style="width: 100%;">중복확인</button>
						</div>
						<p id="snsNicknameTxt" class="txtCls nicknameTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;">
							영문, 한글, 숫자를 조합하여 3자리 이상으로 설정해주세요.
						</p>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" style="background-color: #fff; border: none;" data-bs-target="#snsPwModal" data-bs-toggle="modal">
						<i class="fas fa-arrow-left fa-lg" style="color: lightgrey;"></i>
					</button>
					<button type="button" style="background-color: #fff; border: none;" onclick="getSnsPhoneModal();">
						<i class="fas fa-arrow-right fa-lg" style="color: #18a8f1;"></i>
					</button> 
				</div>
			</div>
		</div>
	</div>
	
	<!-- sns 회원가입 휴대폰 모달 -->
	<div class="modal fade" id="snsPhoneModal" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel2">SNS 회원가입 (4/4)</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="invalidateAuthSession()"></button>
				</div>
				<div class="modal-body" id="snsJoin" style="margin-top: 30px; margin-bottom: 30px;">
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel" id="phoneLabel">핸드폰</label>
						</div>
						<div class="col-3">
							<select class="form-select signupInput selectPhone" aria-label="Default select example" id="snsPhoneNum1">
								<option value="선택" selected>선택</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="012">012</option>
								<option value="017">017</option>
								<option value="019">019</option>
							</select>
						</div>
						<div class="col-3">
							<input type="text" id="snsPhoneNum2" class="form-control signupInput phoneNum snsPhoneNum" name="phoneNum2" maxlength="4">
						</div>
						<div class="col-3">
							<input type="text" id="snsPhoneNum3" class="form-control signupInput phoneNum snsPhoneNum" name="phoneNum3" maxlength="4">
						</div>
						<div class="col-3">
							<button type="button" class="btn btn-secondary sendAuthNumBtn sendSmsBtn" id="snsSendSmsBtn" style="width: 100%; font-size: 10px;">인증번호 전송</button>
						</div>
						<input type="text" id="snsPhone" name="phone" class="phone" hidden>
						<p class="txtCls phoneTxt" id="snsPhoneTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
					</div>
					<div class="row auth memberRow" id="snsSignupAuth"></div>
				</div>
				<div class="modal-footer snsPhoneBtnCls">
					
				</div>
			</div>
		</div>
	</div>
	
	</div>
	<div class="footer">
		
		<div class="row footer-body">
			<div class="col-12 col-xl-6 footer-body-left">
				<p>EVery | 사업자번호: 350-12-43123 | 대표: 이동훈</p>
				<p>개인정보취급담당자: 이수희</p>
				<p>통신판매업신고: 제 2021-서울강남-03823 호</p>
				<div class="row footer-top">
					<ul>
						<li><a href="">이용약관</a></li>
						<li><a href="">개인정보처리방침</a></li>
						<li><a href="">고객지원</a></li>
					</ul>
				</div>
			</div>
			<div class="col-12 col-xl-6 footer-body-right">
				<p>고객센터</p>
				<p>고객문의: cs@every.com | 전화: 02-238-5354</p>
				<p>상담시간: 평일 09:00~15:30 (점심시간 12:50~13:30)</p>
				<p>제휴문의: marketing@every.com | 전화: 02-238-5355</p>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				ⓒ EVery Inc. All Rights Reserved.	
			</div>
			<div class="col-6 foot-bottom-right">
				<a href="">관리자</a>	
			</div>
		</div>
		
	</div>
	
	<!-- 회원가입, 로그인 스크립트 영역 -->
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	<script>
	function openLoginModal() {
		$("#loginModal").modal("show");
	}
	
	/* 세션 비우기 */
	function invalidateAuthSession() {
			//$("#phoneDiv").empty();
			$(".auth").empty();
			
		$.ajax({
			url: "${pageContext.request.contextPath}/member/invalidateSession.do"
		}).done(function(rs){
			console.log(rs);
		}).fail(function(e){
			console.log(e);
		})
	}
	
	
	/* 인증번호 타이머 */
	var timer = null;
	var isRunning = false;
	
	function authTimer() {
		var timeDiv = $("#timeDiv");
		// 남은 시간
		var leftSec = 120;
		
		// 이미 타이머가 작동중이면 중지
		if (isRunning){
			clearInterval(timer);
			timeDiv.html("");
			startTimer(leftSec, timeDiv);
		}else{
			startTimer(leftSec, timeDiv);
		}
	}

	function startTimer(count, timeDiv) {
		$(".authTxt").html("");
		var minutes, seconds;
        timer = setInterval(function () {
        	minutes = parseInt(count / 60, 10);
        	seconds = parseInt(count % 60, 10);
 
        	minutes = minutes < 10 ? "0" + minutes : minutes;
        	seconds = seconds < 10 ? "0" + seconds : seconds;
 
        	timeDiv.html(minutes + "분" + seconds + "초");
 
        	// 타이머 끝
        	if (--count < 0) {
	     		clearInterval(timer);
	     		$(".authCheckBtn").attr("disabled", true);
	     		$(".authTxt").html("유효시간이 초과되었습니다.");
	     		$(".authTxt").css("color", "red");
	     		$(".selectPhone").attr("disabled", false);
	     		$(".phoneNum").attr("disabled", false);
	     		$(".sendSmsBtn").attr("disabled", false);
	     		let authResendBtn = "<button type='button' class='btn btn-dark' id='authResendBtn'>재전송</button>";
	     		$(".authBtnCls").append(authResendBtn);
	     		$("#authResendBtn").css("margin-left", "4px");
	     		isRunning = false;
        	}
    	}, 1000);
         isRunning = true;
	}
	
	/* 로그인 영역 */
	/* 네이버 로그인/로그아웃 스크립트 */
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "MJ4BRMl5k9pVssgoUg87", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8080/member/getNaverPopup.do", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: true,
			//callbackHandle: true,
			loginButton: {color: "green", type: 3, height: 40}
		}
	);	
 	naverLogin.init();

	// 네이버 팝업창에서 넘어온 데이터를 받는 함수
	function setChildValue(userProfile){
		//let naver_num = id;
	 	//let user_phone = phone;
		let naverNum = userProfile[0];
		let userPhone = userProfile[1];
		let userNickname = userProfile[2];
		let userEmail = userProfile[3];
		let userId = userEmail.split("@");
		console.log(userId[0]);
		console.log(userPhone);
		
		let phoneArr = userPhone.split("-");
						 		
		$.ajax({
			url: "${pageContext.request.contextPath}/member/naverLogin.do",
			type: "post",
			data: {naverNum : naverNum, phone : userPhone}
		}).done(function(rs){
			console.log(rs);
			if(rs == "naverLoginOk"){
				alert("로그인에 성공하였습니다.");
				location.href = "${pageContext.request.contextPath}/";
			} else if(rs == "naverSignup") {
				alert("등록된 사용자 정보가 존재 하지않습니다. 회원가입을 진행해주세요.");
				$("#loginModal").modal("hide");
				$("#naver_num").remove();
				$("#snsIdModal").modal("show");
				let naverNumInput = "<input type='text' id='naver_num' name='naver_num' value='" + naverNum + "' style='display : none;'>";
				$("#snsJoin").append(naverNumInput);
				$("#snsSignupId").val(userId[0]);
				$("#snsSignupNickname").val(userNickname);
				idDynamicCss("snsIdModal");
				$("#snsPhoneNum1").val(phoneArr[0]).prop("selected", true);
				$("#snsPhoneNum1").attr("disabled", true);
				$("#snsPhoneNum2").val(phoneArr[1]);
				$("#snsPhoneNum3").val(phoneArr[2]);
				$(".snsPhoneNum").attr("disabled", true);
				authSendAction("snsPhoneModal");
				idState = false;
				pwState = false;
				pwCheckState = false;
				nickState = false;
				authState = false;
			} else if(rs == "linkWithNaver") {
				if(confirm("이미 가입된 사용자 중 동일한 정보가 존재합니다. 연동하시겠습니까?")) {
					$(".snsPhoneBtnCls").empty();
					$("#loginModal").modal("hide");
					$("#naver_num").remove();
					$("#snsPhoneModal").modal("show");
					let naverNumInput = "<input type='text' id='naver_num' name='naver_num' value='" + naverNum + "' style='display : none;'>";
					$("#snsJoin").append(naverNumInput);
					let goBackBtn = "<button type='button' style='background-color: #fff; border: none;' data-bs-target='#loginModal' data-bs-toggle='modal'>" + 
									"<i class='fas fa-arrow-left fa-lg' style='color: lightgrey;'></i>" +
									"</button>";
					let completeBtn = "<button type='button' id='snsLinkWithBtn' style='background-color: #fff; border: none;'>" +
									  "<i class='fas fa-check fa-lg' style='color: #18a8f1;'></i>" +
									  "</button>";
					$(".snsPhoneBtnCls").append(goBackBtn);
					$(".snsPhoneBtnCls").append(completeBtn);
					$("#snsPhoneNum1").val(phoneArr[0]).prop("selected", true);
					$("#snsPhoneNum1").attr("disabled", true);
					$("#snsPhoneNum2").val(phoneArr[1]);
					$("#snsPhoneNum3").val(phoneArr[2]);
					$(".snsPhoneNum").attr("disabled", true);
					authSendAction("snsPhoneModal");
				}
			}
		}).fail(function(e){
			console.log(e);
		}) 
	}
	
	// 네이버 로그아웃 요청
 	var testPopUp;
 	function openPopUp() {
 	    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=no,resizable=yes, width=1,height=1");
 	}
 	function closePopUp(){
 	    testPopUp.close();
 	}

 	function naverLogout() {
 		openPopUp();
 		setTimeout(function() {
 			closePopUp();
 		}, 200);
 	}
	
	/* 일반 로그인 스크립트 */
	// 로그인 버튼 클릭 시
	$("#btnLogin").on("click", function(){
		if(document.cookie != "") {
			$("#loginPw").val("");
		} else {
			$("#loginId").val("");
			$("#loginPw").val("");	
		}
	})
	
	// 일반 로그인 요청
	$("#loginBtn").on("click", function(){
		let loginForm = $("#loginForm").serialize();
		
		console.log(document.cookie);
		let regex = /rememberId=(.*)/g;
		console.log(regex.test(document.cookie));
		console.log(RegExp.$1);
		console.log(loginForm);
		let cookieRememberId = RegExp.$1;
		console.log(rememberId);
		
		if($("#loginId").val() == "" || $("#loginPw").val() == "") {
			alert("로그인 정보를 정확히 입력해주세요.");
			return;
		}
		
		console.log($('input[name=flexRadioDefault]:checked').val());
		let checked = $("input[name=flexRadioDefault]:checked").val();
		
		if(checked == 0) {
			$.ajax({
				url: "${pageContext.request.contextPath}/member/login.do",
				type: "post",
				data: loginForm
			}).done(function(rs){
				console.log(rs);
				if(rs == "loginSuccess") {
					if($(".rememberId").is(":checked")){
						if(cookieRememberId != $("#loginId").val()){
							rememberId();	
						} else {
							console.log(document.cookie);	
						}
					} else {
						deleteRememberId();
					}
					alert("로그인에 성공하였습니다.");
					location.href = "${pageContext.request.contextPath}/";
				} else if(rs == "loginFail") {
					alert("로그인 정보가 올바르지 않습니다. 다시 입력해주세요.");
					$("#loginId").val("");
					$("#loginPw").val("");
				}
			}).fail(function(e){
				console.log(e);
			})
		} else {
			$.ajax({
				url: "${pageContext.request.contextPath}/admin/adminLogin.do",
				type: "post",
				data: loginForm
			}).done(function(rs){
				console.log(rs);
				if(rs == "loginSuccess") {
					alert("관리자 로그인에 성공하였습니다.");
					location.href = "${pageContext.request.contextPath}/";
				} else if(rs == "loginFail") {
					alert("로그인 정보가 올바르지 않습니다. 다시 입력해주세요.");
					$("#loginId").val("");
					$("#loginPw").val("");
				}
			}).fail(function(e){
				console.log(e);
			})
		}
		
	})
	
	// 로그아웃
	function logoutFunc() {
		<c:choose>
			<c:when test="${loginSession.naver_num eq '0'}"> // 네이버 로그인이면 네이버 로그아웃하고 로그아웃
				location.href = "${pageContext.request.contextPath}/member/logout.do";
			</c:when>
			<c:otherwise>
				naverLogout();
				location.href = "${pageContext.request.contextPath}/member/logout.do";
			</c:otherwise>
		</c:choose>
	}
	
	// 관리자 로그아웃
	$("#adminLogoutBtn").on("click", function(){
		location.href = "${pageContext.request.contextPath}/admin/adminLogout.do";
	})
	
	
	/* 회원가입 스크립트 영역 */
	// 회원가입을 위한 상태변수
	// true면 체크가 된 상태, false면 체크가 되지 않은 상태
	let idState = false; // 아이디 중복확인 체크
	let pwState = false; // 비밀번호 체크
	let pwCheckState = false; // 비밀번호 확인 체크
	let nickState = false; // 닉네임 중복확인 체크
	let phoneState = false; // 핸드폰 인증번호 전송 체크
	let authState = false; // 인증번호 확인 체크
	
	// 회원가입 초기화 함수
	function signupInit() {
		idState = false;
		pwState = false;
		pwCheckState = false; 
		nickState = false;
		$("#checkIdBtn").attr("disabled", true);
		$("#idTxt").html("영문 소문자로 시작하고 영문, 숫자를 조합하여 6~14 이내로 설정해주세요.");
		$("#pwTxt").html("비밀번호는 영문,숫자,특수문자를 포함하여 10자리 이상으로 설정해주세요.");
		$("#pwCheckTxt").html("");
		$("#checkNicknameBtn").attr("disabled", true);
		$("#nicknameTxt").html("영문, 한글, 숫자를 조합하여 3자리 이상으로 설정해주세요.");
		$(".txtCls").css("color", "grey");
		$("#id").val("");
		$("#pw").val("");
		$("#pwCheck").val("");
		$("#nickname").val("");
		$(".signupInput").css("border-bottom", "1px solid lightgrey");
		$(".signupInput").focus(function(){
			$(this).css("border-bottom", "2px solid grey");
		})
		$(".signupInput").blur(function(){
			$(this).css("border-bottom", "1px solid lightgrey");
		})
	}
	
	// 핸드폰 영역 초기화 함수
	function phoneInit() {
		phoneState = false;
		authState = false;
		$(".selectPhone").val("선택").prop("selected", true);
		$(".selectPhone").attr("disabled", false);
		$(".phoneNum").attr("disabled", false);
		$(".phoneNum").val("");
		$(".phoneNum_find").attr("disabled", false);
		$(".phoneNum_find").val("");
		$(".phoneTxt").html("");
		$(".phone").val("");
		$(".auth").empty();
		$(".sendSmsBtn").attr("disabled", true);
		clearInterval(timer);
	}
	
	// 아이디 css함수
	function idDynamicCss(selectors) {
		let tag = $('#' + selectors);
		let regexId = RegExp(/^[a-z][a-z0-9]{5,14}$/g);
		console.log(tag);
		
		if(tag.find("input[name=id]").val() == ""){
			tag.find("input[name=id]").css("border-bottom", "2px solid grey");
			tag.find(".idTxt").html("영문 소문자로 시작하고 영문, 숫자를 조합하여 6~14 이내로 설정해주세요.");
			tag.find(".idTxt").css("color", "grey");
			tag.find(".checkIdBtn").attr("disabled", true);
			tag.find("input[name=id]").focus(function(){
				tag.find("input[name=id]").css("border-bottom", "2px solid grey");
			})	
			tag.find("input[name=id]").blur(function(){
				tag.find("input[name=id]").css("border-bottom", "1px solid lightgrey");
			})	
		} else {
			if(regexId.test(tag.find("input[name=id]").val())) {
				tag.find(".idTxt").html("아이디의 형식이 올바릅니다. 중복확인을 해주세요.");
				tag.find(".idTxt").css("color", "green");
				tag.find("input[name=id]").css("border-bottom", "2px solid green");
				tag.find(".checkIdBtn").attr("disabled", false);
				tag.find("input[name=id]").blur(function(){
					tag.find("input[name=id]").css("border-bottom", "2px solid green");
				})
			} else {
				tag.find(".idTxt").html("아이디의 형식이 올바르지 않습니다.");
				tag.find(".idTxt").css("color", "red");
				tag.find("input[name=id]").css("border-bottom", "2px solid red");
				tag.find(".checkIdBtn").attr("disabled", true);
				tag.find("input[name=id]").blur(function(){
					tag.find("input[name=id]").css("border-bottom", "2px solid red");
				})
			}
		}
		
		tag.find("input[name=id]").keyup(function(){
			idState = false;
			tag.find(".idTxt").html("");
			let regexId2 = RegExp(/^[a-z][a-z0-9]{5,14}$/g);
			
			if(regexId2.test(tag.find("input[name=id]").val())) {
				tag.find(".idTxt").html("아이디의 형식이 올바릅니다. 중복확인을 해주세요.");
				tag.find(".idTxt").css("color", "green");
				tag.find("input[name=id]").css("border-bottom", "2px solid green");
				tag.find(".checkIdBtn").attr("disabled", false);
				tag.find("input[name=id]").blur(function(){
					tag.find("input[name=id]").css("border-bottom", "2px solid green");
				})
			} else {
				if(tag.find("input[name=id]").val() == "") {
					tag.find("input[name=id]").css("border-bottom", "2px solid grey");
					tag.find(".idTxt").html("영문 소문자로 시작하고 영문, 숫자를 조합하여 6~14 이내로 설정해주세요.");
					tag.find(".idTxt").css("color", "grey");
					tag.find(".checkIdBtn").attr("disabled", true);
					tag.find("input[name=id]").focus(function(){
						tag.find("input[name=id]").css("border-bottom", "2px solid grey");
					})	
					tag.find("input[name=id]").blur(function(){
						tag.find("input[name=id]").css("border-bottom", "1px solid lightgrey");
					})	
				} else {
					tag.find(".idTxt").html("아이디의 형식이 올바르지 않습니다.");
					tag.find(".idTxt").css("color", "red");
					tag.find("input[name=id]").css("border-bottom", "2px solid red");
					tag.find(".checkIdBtb").attr("disabled", true);
					tag.find("input[name=id]").blur(function(){
						tag.find("input[name=id]").css("border-bottom", "2px solid red");
					})	
				}
			}
		})
	}
	
	// 아이디 중복확인 함수
	function checkId(selectors) {
		let tag = $('#' + selectors);
		let id = tag.find($("input[name=id]")).val();
		console.log(id);
		let regexId = RegExp(/^[a-z][a-z0-9]{5,14}$/g);
		
		if(id !== "" && regexId.test(id)){
			$.ajax({
				url: "${pageContext.request.contextPath}/member/checkMember.do",
				type: "post",
				data: {"id" : id}
			}).done(function(rs){
				console.log(rs);
				if(rs == "avaliable"){
					tag.find(".idTxt").html("사용가능한 아이디입니다.");
					tag.find(".idTxt").css("color", "#18a8f1");
					tag.find("input[name=id]").css("border-bottom", "2px solid #18a8f1");
					//$("#idLabel").css("color", "#18a8f1");
					tag.find(".checkIdBtn").attr("disabled", true);
					idState = true;
				} else if(rs == "unavaliable") {
					tag.find(".idTxt").html("이미 사용중인 아이디입니다. 다른 아이디를 사용해주세요.");
					tag.find(".idTxt").css("color", "red");
					tag.find("input[name=id]").val("");
					tag.find("input[name=id]").css("border-bottom", "2px solid red");
					//$("#idLabel").css("color", "red");
					tag.find(".checkIdBtn").attr("disabled", true);
				}
			}).fail(function(e){
				console.log(e);
			})
		}
	}
	
	// 비밀번호 css 함수
	function pwDynamicCss(selectors) {
		let tag = $('#' + selectors);
		console.log(tag);
		
		// 회원가입 pw 입력창에 focus 했을 때
		tag.find("input[name=pw]").focus(function(e){
			pwCheckDynamicCss(selectors);
		})
		
		// 회원가입 pw 입력창에 keyup 했을 때
		tag.find("input[name=pw]").keyup(function(e){
			pwState = false;
			tag.find(".pwTxt").html("");
			tag.find("input[name=pwCheck]").val("");
			let regexPw = RegExp(/^[a-z0-9!@#^&*%$/?~]{10,}$/g);
			
			if(regexPw.test(tag.find("input[name=pw]").val())) {
				tag.find(".pwTxt").html("비밀번호의 형식이 올바릅니다.");
				tag.find(".pwTxt").css("color", "#18a8f1");
				tag.find("input[name=pw]").css("border-bottom", "2px solid #18a8f1");
				//$("#pwLabel").css("color", "#18a8f1");
				tag.find("input[name=pw]").blur(function(){
					tag.find("input[name=pw]").css("border-bottom", "2px solid #18a8f1");
				})
				pwState = true;
			} else {
				if(tag.find("input[name=pw]").val() == "") {
					tag.find("input[name=pw]").css("border-bottom", "2px solid grey");
					tag.find(".pwTxt").html("비밀번호는 영문,숫자,특수문자를 포함하여 10자리 이상으로 설정해주세요.");
					tag.find(".pwTxt").css("color", "grey");
					//$("#pwLabel").css("color", "grey");
					tag.find("input[name=pw]").focus(function(){
						tag.find("input[name=pw]").css("border-bottom", "2px solid grey");
					})
					tag.find("input[name=pw]").blur(function(){
						tag.find("input[name=pw]").css("border-bottom", "1px solid lightgrey");
					})	
				} else {
					tag.find(".pwTxt").html("비밀번호의 형식이 올바르지 않습니다.");
					tag.find(".pwTxt").css("color", "red");
					tag.find("input[name=pw]").css("border-bottom", "2px solid red");
					//$("#pwLabel").css("color", "red");
					tag.find("input[name=pw]").blur(function(){
						tag.find("input[name=pw]").css("border-bottom", "2px solid red");
					})
				}
				pwState = false;
			}
			pwCheckDynamicCss(selectors);
		}) 
		
	}
	
	// 비밀번호 확인 css 함수
	function pwCheckDynamicCss(selectors) {
		let tag = $('#' + selectors);
		//console.log(tag);

		if(tag.find("input[name=pwCheck]").val() == tag.find("input[name=pw]").val()) {
			//|| $("#pwCheck").val() == ""
			if(tag.find("input[name=pw]").val() == "") {
				tag.find(".pwCheckTxt").html("");
				tag.find("input[name=pwCheck]").css("border-bottom", "1px solid lightgrey");
				//$("#pwCheckLabel").css("color", "grey");
				tag.find("input[name=pwCheck]").focus(function(){
					tag.find("input[name=pwCheck]").css("border-bottom", "2px solid grey");
				})
				tag.find("input[name=pwCheck]").blur(function(){
					tag.find("input[name=pwCheck]").css("border-bottom", "1px solid lightgrey");
				})
			} else {
				tag.find(".pwCheckTxt").html("비밀번호가 일치합니다.");
				tag.find(".pwCheckTxt").css("color", "#18a8f1");
				tag.find("input[name=pwCheck]").css("border-bottom", "2px solid #18a8f1");
				//$("#pwCheckLabel").css("color", "#18a8f1");
				tag.find("input[name=pwCheck]").blur(function(){
					tag.find("input[name=pwCheck]").css("border-bottom", "2px solid #18a8f1");
				})
				pwCheckState = true;
			}
		} else {
			tag.find(".pwCheckTxt").html("입력한 비밀번호와 일치하지 않습니다.");
			tag.find(".pwCheckTxt").css("color", "red");
			tag.find("input[name=pwCheck]").css("border-bottom", "2px solid red");
			//$("#pwCheckLabel").css("color", "red");
			tag.find("input[name=pwCheck]").blur(function(){
				tag.find("input[name=pwCheck]").css("border-bottom", "2px solid red");
			})
			pwCheckState = false;
		}
	}
	
	// 비밀번호 확인 focus, keyup 함수
	function pwCheckFunc(selectors) {
		let tag = $('#' + selectors);
		
		// pwCheck 입력창에 focus 했을 때
		tag.find("input[name=pwCheck]").focus(function(e){
			pwCheckDynamicCss(selectors);
		})
		
		// pwCheck 입력창에 keyup 했을 때
		tag.find("input[name=pwCheck]").keyup(function(e){
			pwCheckDynamicCss(selectors);
		})
	}
	
	// 닉네임 css함수
	function nicknameDynamicCss(selectors) {
		let tag = $('#' + selectors);
		let regexNickname = RegExp(/^[a-zㄱ-힣0-9]{3,}$/g);
		//console.log(tag);
		
		if(tag.find("input[name=nickname]").val() == ""){
			tag.find("input[name=nickname]").css("border-bottom", "2px solid grey");
			tag.find(".nicknameTxt").html("영문, 한글, 숫자를 조합하여 3자리 이상으로 설정해주세요.");
			tag.find(".nicknameTxt").css("color", "grey");
			tag.find(".checkNicknameBtn").attr("disabled", true);
			tag.find("input[name=nickname]").focus(function(){
				tag.find("input[name=nickname]").css("border-bottom", "2px solid grey");
			})	
			tag.find("input[name=nickname]").blur(function(){
				tag.find("input[name=nickname]").css("border-bottom", "1px solid lightgrey");
			})	
		} else {
			if(regexNickname.test(tag.find("input[name=nickname]").val())) {
				tag.find(".nicknameTxt").html("닉네임의 형식이 올바릅니다. 중복확인을 해주세요.");
				tag.find(".nicknameTxt").css("color", "green");
				tag.find("input[name=nickname]").css("border-bottom", "2px solid green");
				tag.find(".checkNicknameBtn").attr("disabled", false);
				tag.find("input[name=nickname]").blur(function(){
					tag.find("input[name=nickname]").css("border-bottom", "2px solid green");
				})
			} else {
				tag.find(".nicknameTxt").html("닉네임의 형식이 올바르지 않습니다.");
				tag.find(".nicknameTxt").css("color", "red");
				tag.find("input[name=nickname]").css("border-bottom", "2px solid red");
				tag.find(".checkNicknameBtn").attr("disabled", true);
				tag.find("input[name=nickname]").blur(function(){
					tag.find("input[name=nickname]").css("border-bottom", "2px solid red");
				})
			}
		}
		
		tag.find("input[name=nickname]").keyup(function(e){
			nickState = false;
			tag.find(".nicknameTxt").html("");
			let regexNickname = RegExp(/^[a-zㄱ-힣0-9]{3,}$/g);
			
			if(regexNickname.test(tag.find("input[name=nickname]").val())) {
				tag.find(".nicknameTxt").html("닉네임의 형식이 올바릅니다.");
				tag.find(".nicknameTxt").css("color", "green");
				tag.find(".checkNicknameBtn").attr("disabled", false);
				tag.find("input[name=nickname]").css("border-bottom", "2px solid green");
				//$("#nicknameLabel").css("color", "green");
				tag.find("input[name=nickname]").blur(function(){
					tag.find("input[name=nickname]").css("border-bottom", "2px solid green");
				})
			} else {
				if(tag.find("input[name=nickname]").val() == "") {
					tag.find("input[name=nickname]").css("border-bottom", "2px solid grey");
					tag.find(".nicknameTxt").html("영문, 한글, 숫자를 조합하여 3자리 이상으로 설정해주세요.");
					tag.find(".nicknameTxt").css("color", "grey");
					//$("#nicknameLabel").css("color", "grey");
					tag.find(".checkNicknameBtn").attr("disabled", true);
					tag.find("input[name=nickname]").focus(function(){
						tag.find("input[name=nickname]").css("border-bottom", "2px solid grey");
					})
					tag.find("input[name=nickname]").blur(function(){
						tag.find("input[name=nickname]").css("border-bottom", "1px solid lightgrey");
					})	
				} else {
					tag.find(".nicknameTxt").html("닉네임의 형식이 올바르지 않습니다.");
					tag.find(".nicknameTxt").css("color", "red");
					tag.find(".checkNicknameBtn").attr("disabled", true);
					tag.find("input[name=nickname]").css("border-bottom", "2px solid red");
					//$("#nicknameLabel").css("color", "red");
					tag.find("input[name=nickname]").blur(function(){
						tag.find("input[name=nickname]").css("border-bottom", "2px solid red");
					})	
				}
			}
		})
	}
	
	// 닉네임 중복확인 함수
	function checkNickname(selectors) {
		let tag = $('#' + selectors);
		let nickname = tag.find($("input[name=nickname]")).val();
		let regexNickname = RegExp(/^[a-zㄱ-힣0-9]{3,}$/g);
		
		if(nickname !== "" && regexNickname.test(nickname)){
			$.ajax({
				url: "${pageContext.request.contextPath}/member/checkMember.do",
				type: "post",
				data: {"nickname" : nickname}
			}).done(function(rs){
				console.log(rs);
				if(rs == "avaliable"){
					tag.find(".nicknameTxt").html("사용가능한 닉네임입니다.");
					tag.find(".nicknameTxt").css("color", "#18a8f1");
					tag.find(".checkNicknameBtn").attr("disabled", true);
					tag.find("input[name=nickname]").css("border-bottom", "2px solid #18a8f1");
					//$("#nicknameLabel").css("color", "#18a8f1");
					nickState = true;
				} else if(rs == "unavaliable") {
					tag.find(".nicknameTxt").html("이미 사용중인 닉네임입니다.");
					tag.find(".nicknameTxt").css("color", "red");
					tag.find("input[name=nickname]").val("");
					tag.find("input[name=nickname]").css("border-bottom", "2px solid red");
					//$("#nicknameLabel").css("color", "red");
					tag.find(".checkNicknameBtn]").attr("disabled", true);
				}
			}).fail(function(e){
				console.log(e);
			})	
		}
	}
	
	// 인증번호 발송 버튼 활성화 함수 
	function authSendAction(selectors) {
		let tag = $('#' + selectors);
		let regexPhone1 = /[0-9]{4}/g;
		let regexPhone2 = /[0-9]{4}/g;
		
		if(tag.find("input[name=phoneNum1]").val() !== "선택" && regexPhone1.test(tag.find("input[name=phoneNum2]").val()) && regexPhone2.test(tag.find("input[name=phoneNum3]").val())) {
			tag.find(".sendSmsBtn").attr("disabled", false);
			tag.find(".sendAuthNumBtn").attr("disabled", false);
		} else {
			tag.find(".sendSmsBtn").attr("disabled", true);
			tag.find(".sendAuthNumBtn").attr("disabled", true);
		}
	}
	
	// 휴대폰 번호 css 함수
	function phoneDynamicCss(selectors) {
		let tag = $('#' + selectors);
		
		// 휴대폰 번호1 셀렉트 박스 change 시
		tag.find(".selectPhone").on("change", function(){
			phoneState = false;
			authState = false;
			clearInterval(timer);
			tag.find(".auth").empty();
			tag.find(".phoneTxt").html("");
			
			if($(this).val() !== "선택") {
				$(this).css("border-bottom", "2px solid #18a8f1");
				$(this).blur(function(){
					$(this).css("border-bottom", "2px solid #18a8f1");
				})
				tag.find("input[name=phoneNum2]").focus();
			} else {
				$(this).css("border-bottom", "2px solid red");
				$(this).blur(function(){
					$(this).css("border-bottom", "2px solid red");
				})
				phoneState = false;
			}
			authSendAction(selectors);
		})
		
		// 휴대폰 번호2, 3 keyup 시
		tag.find(".phoneNum").on("keyup", function(){
			let regexPhone = /[0-9]{4}/g;
			phoneState = false;
			authState = false;
			clearInterval(timer);
			tag.find(".auth").empty();
			tag.find(".phoneTxt").html("");
			
			if($(this).val() == "") {
				$(this).css("border-bottom", "1px solid lightgrey");
				$(this).focus(function(){
					$(this).css("border-bottom", "2px solid grey");
				})
				$(this).blur(function(){
					$(this).css("border-bottom", "1px solid lightgrey");
				})
			} else {
				if(regexPhone.test($(this).val())) {
					$(this).css("border-bottom", "2px solid #18a8f1");
					$(this).blur(function(){
						$(this).css("border-bottom", "2px solid #18a8f1");
					})
					if($(this).get(0) == tag.find("input[name=phoneNum2]").get(0)){
						tag.find("input[name=phoneNum3]").focus();
					}
				} else {
					$(this).css("border-bottom", "2px solid red");
					$(this).blur(function(){
						$(this).css("border-bottom", "2px solid red");
					})
				}	
			}
			authSendAction(selectors);
		})
	}
	
	/* 일반 회원가입 스크립트 */
	// 회원가입 버튼 클릭 시
	$("#signupBtn").on("click", function(){
		idDynamicCss("signupModal");
		pwDynamicCss("signupModal");
		pwCheckFunc("signupModal");
		nicknameDynamicCss("signupModal");
		phoneDynamicCss("signupModal");
		authSendAction("signupModal");
		signupInit();
		phoneInit();
	})
	
	// 회원가입 아이디 중복확인
	$(".checkIdBtn").on("click", function(e){
		let selectors = $(e.target).parents(".modal").attr("id");
		//let selectors = $(e.target).parents(".modal");
		console.log(selectors);
		
		checkId(selectors);
	})
	
	// 회원가입 닉네임 중복확인
	$(".checkNicknameBtn").on("click", function(e){
		let selectors = $(e.target).parents(".modal").attr("id");
		//let selectors = $(e.target).parents(".modal");
		console.log(selectors);
		
		checkNickname(selectors);
	})
	
	// 인증번호 전송 성공 함수
	function sendAuthSuccess(selectors) {
		let tag = $('#' + selectors);	
	
		tag.find(".auth").empty();
		let authNumInput = "<div class='col-4'>" + 
		"<input type='text' class='form-control signupInput authNum'>" +
		"</div>" +
		"<div class='col-2'>" +
		"<div id='timeDiv' style='color: grey;'></div>" +
		"</div>" +
		"<div class='col-6 authBtnCls'>" +
		"<button type='button' class='btn btn-dark authCheckBtn'>확인</button>" +
		"</div>" +
		"<p class='authTxt' style='font-size: 8px; margin-bottom: 0; margin-top: 4px;'></p>";
		tag.find(".auth").append(authNumInput);
		authTimer();
		tag.find(".phoneTxt").html("인증번호가 전송되었습니다.");
		tag.find(".phoneTxt").css("color", "green");
		tag.find(".selectPhone").attr("disabled", true);
		tag.find(".phoneNum").attr("disabled", true);
		tag.find(".authNum").val("");
		tag.find(".authNum").css("border-bottom", "1px solid lightgrey");
		tag.find(".authCheckBtn").attr("disabled", true);
		//$('#' + btnName).attr("disabled", true);
		phoneState = true;
	}
	
	// 인증번호 전송 실패 함수
	function sendAuthFail(selectors) {
		let tag = $('#' + selectors);	
	
		tag.find(".selectPhone").val("선택").prop("selected", true);
		tag.find(".selectPhone").css("border-bottom", "2px solid red");
		tag.find(".phoneNum").val("");
		tag.find(".phoneNum").css("border-bottom", "2px solid red");
		tag.find(".phoneTxt").css("color", "red");
		phoneState = false;
	}
	
	// 일반 회원가입 인증번호 전송 함수
	function getRequestAuthNum1(selectors) {
	//$("#sendSmsBtn").on("click", function(e){
		let tag = $('#' + selectors);	
	
		let regexPhone1 = /[0-9]{4}/g;
		let regexPhone2 = /[0-9]{4}/g;
		
		if(tag.find(".selectPhone").val() !== "선택" && tag.find(".phoneNum").val() !== "") {
			let phone = tag.find(".selectPhone").val() + "-" + tag.find("input[name=phoneNum2]").val() + "-" + tag.find("input[name=phoneNum3]").val();
			console.log(phone);
			tag.find("input[name=phone]").val(phone);
			console.log($("#phone").val());
			
			$.ajax({
				url: "${pageContext.request.contextPath}/member/sendSms.do",
				type: "post",
				data: {phone : phone}
			}).done(function(rs){
				console.log(rs);
				if(rs == "success"){
					sendAuthSuccess(selectors);
					tag.find(".sendSmsBtn").attr("disabled", true);
				} else if(rs == "unavaliable") {
					sendAuthFail(selectors);	
					tag.find(".phoneTxt").html("이미 가입되어 있는 핸드폰 번호입니다.");
				}
			}).fail(function(e){
				console.log(e);
			})
		}
	}
	//}
	
	// 일반 회원가입 인증번호 전송 버튼 클릭 시
	$("#sendSmsBtn").on("click", function(e){
		let selectors = $(e.target).parents(".modal").attr("id");
		console.log(selectors);
		
		getRequestAuthNum1(selectors);
	})
	
	// 인증번호 입력창 keyup시
	$(document).on("keyup", ".authNum", function(){
		if($(".authNum").val() !== "") {
			$(".authNum").css("border-bottom", "2px solid grey");
			$(".authCheckBtn").attr("disabled", false);
		} else {
			$(".authCheckBtn").attr("disabled", true);
		}
	})
	
	// 인증번호 입력창 focus 시
	$(document).on("focus", ".authNum", function(){
		$(".authNum").css("border-bottom", "2px solid grey");
	})
	
	// 인증번호 입력창 blur 시
	$(document).on("blur", ".authNum", function(){
		$(".authNum").css("border-bottom", "1px solid lightgrey");
	})
	
	
	// 인증번호 확인 ajax 함수
	function getAuthCheck(selectors) {
		let tag = $('#' + selectors);
		console.log(tag);
	
		let authNum = tag.find(".authNum").val();
		let phone = tag.find(".phone").val();
		//let authNum = $("#authNum").val();
		//let phone = $("#phone").val();
		console.log(authNum);
		console.log(phone);
	
		$.ajax({
			url: "${pageContextPath.request.contextPath}/member/authCheck.do",
			type: "post",
			data: {authNum : authNum, phone : phone}
		}).done(function(rs){
			console.log(rs);
			if(rs == "success") {
				tag.find(".phoneTxt").html("인증이 완료되었습니다.");
				tag.find(".phoneTxt").css("color", "#18a8f1");
				tag.find(".auth").empty();
				authState = true;
			} else if (rs == "fail") {
				tag.find(".authTxt").html("인증번호가 일치하지 않습니다. 다시 입력해주세요.");
				tag.find(".authTxt").css("color", "red");
				tag.find(".authNum").val("");
				tag.find(".authNum").css("border-bottom", "2px solid red");
				authState = false;
			} else if (rs == "timeout") {
				tag.find(".authTxt").html("인증번호가 유효하지 않습니다. 다시 인증해주세요.");
				tag.find(".authTxt").css("color", "red");
				tag.find(".authNum").val("");
				tag.find(".authNum").css("border-bottom", "2px solid red");	
				authState = false;
			}
		}).fail(function(e){
			console.log(e);
		})
	}
	
	// 인증번호 확인버튼 클릭 시
	$(document).on("click", ".authCheckBtn", function(e){
		let selector = $(e.target).parents(".modal").attr("id");
		
		getAuthCheck(selector);
	})
	
	// 재전송 함수
	function getResend(selectors) {
		let tag = $('#' + selectors);
		
		let phone = tag.find("input[name=phone]").val();
		console.log(phone);
		
		$.ajax({
			url: "${pageContext.request.contextPath}/member/getRequestAuthNum.do",
			type: "post",
			data: {phone : phone}
		}).done(function(rs){
			if(rs == "success") {
				tag.find(".sendSmsBtn").attr("disabled", true);
				authTimer();
				tag.find(".phoneTxt").html("인증번호가 재전송되었습니다.");
				tag.find(".authTxt").html("인증번호를 입력해주세요.");
				tag.find(".authTxt").css("color", "red");
				tag.find(".authNum").css("border-bottom", "1px solid lightgrey");
				$("#authResendBtn").remove();
			}
		}).fail(function(e){
			console.log(e);
		})
	}
	
	// 재전송 버튼 클릭시
	$(document).on("click", "#authResendBtn", function(e){
		let selectors = $(e.target).parents(".modal").attr("id");
		getResend(selectors);
	})
	
	// 일반 회원가입 가입하기 버튼 클릭 시
	$("#joinBtn").on("click", function(){
		console.log(idState);
		console.log(pwState);
		console.log(pwCheckState);
		console.log(nickState);
		console.log(phoneState);
		console.log(authState);
		console.log($("#phone").val());
		
		if(idState == false) {
			alert("아이디 중복확인을 해주세요.");
			$("#id").focus();
			return;
		} else if(pwState == false) {
			alert("비밀번호를 형식에 맞게 설정해주세요.");
			$("#pw").focus();
			return;
		} else if(pwCheckState == false) {
			alert("입력한 비밀번호와 일치하게 설정해주세요.");
			$("#pwCheck").focus();
			return
		} else if(nickState == false) {
			alert("닉네임 중복확인을 해주세요.");
			$("#nickname").focus();
			return;
		} else if(phoneState == false) {
			alert("휴대폰 인증을 진행해주세요.");
			return;
		} else if(authState == false) {
			alert("인증번호 확인을 진행해주세요.");
			return;
		}
		
		// 모두 true면 회원가입 진행
		if(idState == true && pwState == true && pwCheckState == true && nickState == true && phoneState == true && authState == true) {
			let signupForm = $("#signupForm").serialize();
			console.log(signupForm);
			
			$.ajax({
				url: "${pageContext.request.contextPath}/member/signup.do",
				type: "post",
				data: signupForm
			}).done(function(rs){
				console.log(rs);
				if(rs == "success") {
					alert("회원가입이 완료되었습니다.");
					$("#signupModal").modal("hide");
					$("#loginModal").modal("show");
				} else if (rs == "fail") {
					alert("회원가입에 실패하였습니다.");
				}
			}).fail(function(e){
				console.log(e);
			})
		}
	})
	
	
	/* sns 회원가입 스크립트 */
	// 아이디 찾기/비밀번호 찾기, sns 회원가입, sns 연동 인증번호 전송 클릭 시
	function getRequestAuthNum2(selectors) {
		let tag = $('#' + selectors);
		let regexPhone1 = /[0-9]{4}/g;
		let regexPhone2 = /[0-9]{4}/g;
		
		if(tag.find(".selectPhone").val() !== "선택" && tag.find(".phoneNum").val() !== "") {
			let phone = tag.find(".selectPhone").val() + "-" + tag.find("input[name=phoneNum2]").val() + "-" + tag.find("input[name=phoneNum3]").val();
			console.log(phone);
			tag.find("input[name=phone]").val(phone);
			console.log(tag.find("input[name=phone]").val());
			
			$.ajax({
				url: "${pageContext.request.contextPath}/member/getRequestAuthNum.do",
				type: "post",
				data: {phone : phone}
			}).done(function(rs){
				console.log(rs);
				if(rs == "success"){
					sendAuthSuccess(selectors);
					tag.find(".sendAuthNumBtn").attr("disabled", true);
				} 
			}).fail(function(e){
				console.log(e);
			}) 
		}
	}
	
	// 인증번호 요청
	$(".sendAuthNumBtn").on("click", function(e){
		let selectors = $(e.target).parents(".modal").attr("id");
		console.log(selectors);
		getRequestAuthNum2(selectors);
	})
	
	// 연동(snsLinkWithBtn) 클릭 시
	$(document).on("click", "#snsLinkWithBtn", function(){
		let naverNum = $("#naver_num").val();
		let phone = $("#snsPhone").val();
		
		if(phoneState == false) {
			alert("휴대폰 인증을 진행해주세요.");
			return;
		} else if(authState == false) {
			alert("전송된 인증번호를 인증해주세요.");
			return;
		} else {
			$.ajax({
				url: "${pageContext.request.contextPath}/member/getLinkWithNaver.do",
				type: "post",
				data: {"naverNum" : naverNum, "phone" : phone}
			}).done(function(rs){
				console.log(rs);
				if(rs == "linkWithNaverOk") {
					alert("네이버와 연동되어 로그인에 성공하였습니다.");
					location.href = "${pageContext.request.contextPath}/";
				} else if(rs == "linkWithNaverFail") {
					alert("이미 다른 네이버 정보가 등록되어 있거나 정보가 일치하지 않아 연동에 실패하였습니다.");
				}
			}).fail(function(e){
				console.log(e);
			}) 
		}
		
	})
	
	// snsPwModal 요청 함수
	function getSnsPwModal() {
		if($("#snsSignupId").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#snsSignupId").focus();
			return;
		} else if(idState == false) {
			alert("아이디 중복확인을 해주세요.");
			return;
		}
		$("#snsIdModal").modal("hide");
		$("#snsPwModal").modal("show");
		pwDynamicCss("snsPwModal");
		pwCheckFunc("snsPwModal");
	}
	
	// snsNicknameModal 요청 함수
	function getSnsNicknameModal() {
		if($("#snsSignupPw").val() == "" || $("#snsSignupPwCheck").val() == "") {
			alert("비밀번호를 입력해주세요.");
			return;
		}  else if(pwState == false) {
			alert("비밀번호를 형식에 맞게 설정해주세요.");
			$("#snsSignupPw").focus();
			return;
		} else if(pwCheckState == false) {
			alert("입력한 비밀번호와 일치하게 설정해주세요.");
			$("#snsSignupPwCheck").focus();
			return;
		}
		$("#snsPwModal").modal("hide");
		$("#snsNicknameModal").modal("show");
		nicknameDynamicCss("snsNicknameModal");
	}
	
	// snsPhoneModal 요청 함수
	function getSnsPhoneModal() {
		if($("#snsSignupNickname").val() == "") {
			alert("닉네임을 입력해주세요.");
			$("#snsSignupNickname").focus();
			return;
		}  else if(nickState == false) {
			alert("닉네임 중복확인을 해주세요.");
			return;
		} 
		$("#snsNicknameModal").modal("hide");
		$("#snsPhoneModal").modal("show");
		$(".snsPhoneBtnCls").empty();
		let goBackBtn = "<button type='button' style='background-color: #fff; border: none;' data-bs-target='#snsNicknameModal' data-bs-toggle='modal'>" + 
						"<i class='fas fa-arrow-left fa-lg' style='color: lightgrey;'></i>" +
						"</button>";
		let snsJoinBtn = "<button type='button' id='snsJoinBtn' style='background-color: #fff; border: none;'>" + 
						 "<i class='fas fa-check fa-lg' style='color: #18a8f1;'></i>" + 
						 "</button>";
		$(".snsPhoneBtnCls").append(goBackBtn);
		$(".snsPhoneBtnCls").append(snsJoinBtn);
		phoneDynamicCss("snsPhoneModal");
		authSendAction("snsPhoneModal");
	}
	
	// sns 회원가입 버튼 클릭 시
	$(document).on("click", "#snsJoinBtn", function(){
		let naver_num = $("#naver_num").val();
		let id = $("#snsSignupId").val();
		let pw = $("#snsSignupPw").val();
		let nickname = $("#snsSignupNickname").val();
		let phone = $("#snsPhone").val();
		
		console.log(naver_num);
		console.log(id);
		console.log(pw);
		console.log(nickname);
		console.log(phone);
		
		if(phoneState == false) {
			alert("휴대폰 인증을 진행해주세요.");
			return;
		} else if(authState == false) {
			alert("전송된 인증번호를 인증해주세요.");
			return;
		}
		
		if(idState == true && pwState == true && pwCheckState == true && nickState == true && phoneState == true && authState == true) {
			$.ajax({
				url: "${pageContext.request.contextPath}/member/signup.do",
				type: "post",
				data: {"naver_num" : naver_num, "id" : id, "pw" : pw, "nickname" : nickname, "phone" : phone}
			}).done(function(rs){
				console.log(rs);
				if(rs == "success"){
					alert("회원가입이 완료되었습니다.");
					$("#snsPhoneModal").modal("hide");
					$("#loginModal").modal("show");	
				} else if(rs == "fail"){
					alert("회원가입에 실패하였습니다.");
				}
			}).fail(function(e){
				console.log(e);
			})
		}
	})
	
	
	
	/* 아이디 기억하기 스크립트 */
	$(document).ready(function(){
		// 쿠키 값 가져오기
		console.log(document.cookie);
		let regex = /rememberId=(.*)/g;
		console.log(regex.test(document.cookie));
		
		if(document.cookie != "") {
			console.log(RegExp.$1);
			document.getElementById("loginId").value = RegExp.$1;
			$(".rememberId").prop("checked", true);
		} else {
			$(".rememberId").prop("checked", false);
		}
	})
	
	// 로그인 쿠키 삭제 함수
	function deleteRememberId() {
		// 쿠키 삭제 : 쿠키는 삭제 x -> 쿠키는 만료일이 되어야 삭제가 됨
		// 만료일을 과거날짜로 덮어씌워 버림. -> 덮어씌우면 자동 삭제
		// 만료일 날짜 형식 2022-02-03T10:06:42.000Z
		// 과거일 : 1월 1일
		// Sat, 01 Jan 2022 00:00:10 GMT
		document.cookie = "rememberId=;Expires=Sat, 01 Jan 2022 00:00:10 GMT";
	}
	

	// 로그인 쿠키 생성 함수
	function rememberId() {
		// 쿠키 생성 -> 아이디 기억하기 체크 후 로그인하면 쿠키에 한달동안 저장
		// 만료일 설정: 오늘 날짜,7일이 지난 시점
		let expiryDate = new Date();
		console.log("오늘 날짜", expiryDate);
		expiryDate.setDate(expiryDate.getDate() + 7);
		console.log("30일 뒤", expiryDate);
		
		// 쿠기 생성 -> 이름
		let key = "rememberId";
		let value = $("#loginId").val();
		
		// 쿠키 설정법
		// document.cookie = "key=value;Expires=만료일"
		document.cookie = key + "=" + value + ";Expires=" + expiryDate;
	}
	
	
	/* 아이디/비밀번호 찾기 스크립트 */
	// 아이디 찾기/비밀번호 찾기 함수
	function findIdPwFunc() {
		$(".findTitle").empty();
		$("#findIdInput").empty();
		$("#idBox").empty();
		$(".findModalFooter").empty();
		$(".signupInput").css("border-bottom", "1px solid lightgrey");
		$(".signupInput").focus(function(){
			$(this).css("border-bottom", "2px solid grey");
		})
		$(".signupInput").blur(function(){
			$(this).css("border-bottom", "1px solid lightgrey");
		})
		phoneInit();
	}
	
	// 비밀번호 찾기 함수
	function findPwFunc() {
		let findTitle = "비밀번호 찾기";
		let idInput = "<div class='col-12'>" +
					  "<label class='form-check-label memberLabel'>아이디</label>" + 
					  "</div>" + 
					  "<div class='col-9'>" +
					  "<input type='text' class='form-control signupInput' id='id_find'>" +
					  "</div>";
		let findPwBtn = "<button class='btn btn-primary' data-bs-target='#loginModal' data-bs-toggle='modal' onclick='invalidateAuthSession()''>뒤로가기</button>" + 
						"<button class='btn btn-dark' type='button' id='findPwBtn'>찾기</button>";
		$(".findTitle").append(findTitle);
		$("#findIdInput").append(idInput);
		$(".findModalFooter").append(findPwBtn);
	}
	
	// 아이디 찾기/비밀번호 찾기 클릭 시
	$(".findBtn").on("click", function(){
		phoneDynamicCss("findIdPwModal");
		authSendAction("findIdPwModal");
		findIdPwFunc();
	})
	
	// 아이디 찾기 클릭 시
	$("#findId").on("click", function() {
		let findTitle = "아이디 찾기";
		let findIdBtn = "<button class='btn btn-primary' data-bs-target='#loginModal' data-bs-toggle='modal' onclick='invalidateAuthSession()''>뒤로가기</button>" + 
						"<button class='btn btn-dark' type='button' id='findIdBtn'>찾기</button>";
		$(".findTitle").append(findTitle);
		$(".findModalFooter").append(findIdBtn);
	})
	
	// 비밀번호 찾기 클릭 시
	$("#findPw").on("click", function() {
		findPwFunc();
	})
	
	// 일치하는 회원정보가 없을 시 실행되는 함수
	function doesntExist() {
		alert("해당 정보와 일치하는 사용자가 존재하지 않습니다.");
		$("#phoneNum1_find").val("선택").prop("selected", true);
		$("#phoneNum1_find").css("border-bottom", "1px solid lightgrey");
		$("#phoneNum1_find").attr("disabled", false);
		$(".phoneNum_find").val("");
		$(".phoneNum_find").css("border-bottom", "1px solid lightgrey");
		$(".phoneNum_find").attr("disabled", false);
		$("#phoneTxt_find").html("");
		$("#sendSmsBtn_find").attr("disabled", true);
		phoneState = false;
		authState = false;
	}
	
	// 아이디 창 찾기 버튼 클릭 시
	$(document).on("click", "#findIdBtn", function(){
		console.log(phoneState);	
		console.log(authState);
		
		if(phoneState == false) {
			alert("휴대폰 인증을 진행해주세요.");
			return;
		} else if(authState == false) {
			alert("전송된 인증번호 인증을 진행해주세요.");
			return;
		} else {
			$.ajax({
				url: "${pageContext.request.contextPath}/member/getExistMember.do",
				type: "post",
				data: {phone : $("#phone_find").val()}
			}).done(function(rs){
				console.log(rs);
				if(rs == "doesntExistMem") {
					doesntExist();
				} else if (rs == "existMem") {
					$.ajax({
						url: "${pageContext.request.contextPath}/member/getMemberId.do",
						type: "post",
						data: {phone : $("#phone_find").val()}
					}).done(function(data){
						console.log(data);
						let idFind = "<div class='col-12' style='text-align: center;'>" +
						 "<span style='font-weight: bold;'>회원님의 아이디는 </span>" + 
						 "<h3 style='color: #18a8f1; display: inline;'>'" + data + "'</h3>" + 
						 "<span style='font-weight: bold;'> 입니다.</span>" +
						 "</div>";
						$("#idBox").append(idFind);
						$("#findIdBtn").remove();
						let findPwBtn = "<button type='button' id='findPw2' class='btn btn-dark' value='" + data + "'>비밀번호 찾기</button>";
						$(".findModalFooter").append(findPwBtn);
						$("#id_find")
					}).fail(function(e){
						console.log(e);
					})
				}
			}).fail(function(e){
				console.log(e);
			})
		}
	})
	
	// 아이디 찾기 창에서 비밀번호 찾기 버튼 클릭 시
	$(document).on("click", "#findPw2", function(){
		findIdPwFunc();
		findPwFunc();
		$("#id_find").val($(this).val());
		$("#findIdPwModal").modal("show");
	})
	
	// 비밀번호 창 찾기 버튼 클릭 시
	$(document).on("click", "#findPwBtn", function(){
		let id_find = $("#id_find").val();
		let phone_find = $("#phone_find").val();
		if($("#id_find").val() == "") {
			alert("아이디를 입력해주세요.");
			return;
		} else if(phoneState == false) {
			alert("휴대폰 인증을 진행해주세요.");
			return;
		} else if(authState == false) {
			alert("전송된 인증번호 인증을 진행해주세요.");
			return;
		} else {
			$.ajax({
				url: "${pageContext.request.contextPath}/member/getExistMember.do",
				type: "post",
				data: {id : id_find, phone : phone_find}
			}).done(function(rs){
				console.log(rs);
				if(rs == "doesntExistMem") {
					doesntExist();
					$("#id_find").val("");
				} else if(rs == "existMem") {
					alert("회원 정보가 확인되었습니다. 새로운 비밀번호를 설정해주세요.");
					$("#findIdPwModal").modal("hide");
					$("#modifyPwModal").modal("show");
					pwDynamicCss("modifyPwModal");
					pwCheckFunc("modifyPwModal");
					let id_update = "<input type='text' id='id_update' name='id' value='" + id_find + "' style='display: none;'>";
					let phone_update = "<input type='text' id='phone_update' name='phone' value='" + phone_find + "' style='display: none;'>";
					$("#modifyPwForm").append(id_update);
					$("#modifyPwForm").append(phone_update);
				}
			}).fail(function(e){
				console.log(e);
			})
		}
	})
	
	
	/* 비밀번호 변경 스크립트*/
	// 비밀번호 변경 버튼 클릭 시
	$("#modifyPwBtn").on("click", function(){
		let modifyPwForm = $("#modifyPwForm").serialize();
		console.log(modifyPwForm);
		
		if(pwState == false) {
			alert("비밀번호를 형식에 맞게 설정해주세요.");
			return;
		} else if(pwCheckState == false) {
			alert("비밀번호를 동일하게 지정해주세요.");
			return;
		} else {
			$.ajax({
				url: "${pageContext.request.contextPath}/member/modifyPw.do",
				type: "post",
				data : modifyPwForm
			}).done(function(rs){
				console.log(rs);
				if(rs == "success") {
					alert("비밀번호가 성공적으로 변경되었습니다.");
					$("#modifyPwModal").modal("hide");
					$("#loginModal").modal("show");
				} else if(rs == "fail") {
					alert("비밀번호 변경에 실패하였습니다.");
				}
			}).fail(function(e){
				console.log(e);
			})
		}
	})
	</script>
	
	<script>
		$(function() {
			
			let onNavbar = 0; // 네비 햄버거버튼 클릭했는지 아닌지 알기위한 변수
			$('#btn_navi_menu').on('click', function() { //햄버거버튼 클릭 시
				if (onNavbar == 0) {
					$('.navi-onButtons').css({
						"height" : "auto",
						"display" : "block"
					}); // 세로 네비영역 열기
					$('.main').css({"padding-top" : "10px"});
					onNavbar = 1;
					$('html, body').animate({
		                scrollTop : 0
		            }, 100);
		            return false;
				} else {
					$('.navi-onButtons').css({
						"height" : "0",
						"display" : "none"
					}); //세로 네비영역 닫기
					$('.main').css({"padding-top" : "92px"});
					onNavbar = 0;
				}
			});

			$(window).resize(function() { //브라우저 크기를 조정했을때
				if (window.innerWidth > 1199) { //브라우저 크기가 1199를 넘었다면
					$('.navi-onButtons').css({
						"height" : "0",
						"display" : "none"
					}); //세로 네비영역 닫기
					onNavbar = 0;
				}
			});
		});
	</script>
</body>
</html>