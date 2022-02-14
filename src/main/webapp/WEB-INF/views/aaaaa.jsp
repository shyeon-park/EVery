<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>마이페이지</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');

@font-face {
	font-family: 'Pretendard-SemiBold';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-SemiBold.woff')
		format('woff');
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
	color: black;
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

/* tap메뉴 css */
/* Style the tab */
.tab {
	float: left;
	/*border: 1px solid #ccc;*/
	background-color: #333;
	width: 20%;
	height: 500px;
}

/* Style the buttons inside the tab */
.tab button {
	display: block;
	background-color: inherit;
	color: #fff;
	padding: 22px 16px;
	width: 100%;
	border: none;
	outline: none;
	text-align: center;
	cursor: pointer;
	transition: 0.3s;
	font-size: 18px;
	height: 20%;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: grey;
}

/* Create an active/current "tab button" class */
.tab button.active {
	background-color: grey;
}

/* Style the tab content */
.tabContent {
	float: left;
	padding: 80px;
	border: 1px solid #ccc;
	width: 80%;
	border-left: none;
	height: 500px;
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
				<a href="${pageContext.request.contextPath }/board/toBoard.do">칼럼</a>
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
				<c:when test="${!empty loginSession}">
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
					<div class="col-xl-3 col-6 navi-menu"></div>
				</c:when>
			</c:choose>

			<c:choose>
				<c:when test="${!empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu" id="bell">
						<!--  <div id = "bell">-->
						<i class="far fa-bell" data-bs-toggle="modal"
							data-bs-target="#bellModal" id="bell"></i>
						<div id="bell_text"></div>
					</div>
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
				<a href="${pageContext.request.contextPath}/bookmark/toBookmark.do"
					id=""><img src="/resources/images/favorite.png" width="24px"
					height="24px"></a>
				<!-- 				<a href="">cart <span id="cartCount" class="badge bg-dark rounded-pill">2</span></a> -->
			</div>
			<div class="col-xl-0 col-1 d-xl-none navi-menu">
				<a id="btn_navi_menu"><img src="/resources/images/menu.png"
					width="20px" height="24px"></a>
			</div>
		</div>
	</nav>
	<div class="row navi-onButtons">
		<div class="col-12">
			<a href="${pageContext.request.contextPath }/station/toGetStation">충전소
				조회</a>
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
					<a onclick="openLoginModal();">로그인</a>
				</div>
			</c:when>
			<c:when test="${!empty loginSession}">
				<div class="col-12">
					<a onclick="logoutFunc();">로그아웃</a>
				</div>
			</c:when>
		</c:choose>
	</div>

	<div class="main">
		<div
			style="text-align: center; padding-top: 50px; padding-bottom: 50px; padding-left: 0px; paddinf-right: 0px;">
			<h2>고객지원</h2>
		</div>

		<div class="tab">
			<button class="tabLinks" onclick="openContent(event, 'myInfo')"
				id="defaultOpen">내정보</button>
			<button class="tabLinks" onclick="openContent(event, 'myReviews')">내댓글 조회</button>
			<button class="tabLinks" onclick="openContent(event, 'myBookmarker')">즐겨찾기 조회</button>
		</div>


		<!-- 영역1 -->
		<div id="" class="tabContent">
			<h3>ㅎㅇ</h3>
		</div>
		
		
		<!-- 영역2 -->
		<div id="" class="tabContent">
			<h3>Paris</h3>
			<p>파리는 프랑스의 수도입니다.</p>
		</div>

		<!-- 영역3 -->
		<div id="" class="tabContent">
			<h3>Tokyo</h3>
			<p>도쿄는 일본의 수도입니다.</p>
		</div>



	</div>

	<div class="footer" style="margin-top: 50px;">
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
			<div class="col-6">ⓒ EVery Inc. All Rights Reserved.</div>
			<div class="col-6 foot-bottom-right">
				<a href="">관리자</a>
			</div>
		</div>

	</div>

	<script>
		// content 바꾸는 함수
		function openContent(evt, content) {
			var i, tabContent, tabLinks;
			tabContent = document.getElementsByClassName("tabContent");
			for (i = 0; i < tabContent.length; i++) {
				tabContent[i].style.display = "none";
			}
			tabLinks = document.getElementsByClassName("tabLinks");
			for (i = 0; i < tabLinks.length; i++) {
				tabLinks[i].className = tabLinks[i].className.replace(
						" active", "");
			}
			document.getElementById(content).style.display = "block";
			evt.currentTarget.className += " active";
		}

		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
		
	</script>

</body>
</html>