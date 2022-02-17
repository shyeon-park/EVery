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
<title>고객 지원</title>
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
				<a
					href="${pageContext.request.contextPath }/home/toClientSupport.do">고객지원</a>
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
			<a href="${pageContext.request.contextPath }/home/toClientSupport.do">고객지원</a>
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
			<button class="tabLinks" id="infoBtn" onclick="openContent(event, 'info')">공지사항</button>
			<button class="tabLinks" id="faqBtn" onclick="openContent(event, 'faq')">자주 묻는 질문</button>
			<button class="tabLinks" id="qnaBtn" onclick="openContent(event, 'myQna')">나의 문의</button>
		</div>


		<!-- 공지사항 영역 -->
		<div id="info" class="tabContent">
			<div class="container">
				<form id="infoForm"
					action="${pageContext.request.contextPath}/info/infoList.do"
					method="post">
					<div class="row mt-5">
						<div class="col-12 list_all_div" style="height: 469px;">
							<table class="table table-hover">
								<thead>
									<tr style="text-align: center;">
										<th class="col-1"><input type="checkbox" id="allcheck"
											name="allcheck"></th>
										<th class="col-5">제목</th>
										<th class="col-3">작성자</th>
										<th class="col-3">작성일</th>
									</tr>
								</thead>
								<tbody id="infoList">
									<c:choose>
										<c:when test="${empty list}">
											<tr>
												<td colspan="6" style="text-align: center;">등록된 공지가
													없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="dto">
												<tr class="infoList" style="text-align: center;">
													<td style="text-align: center;"><input type="checkbox"
														class="checkOne" name="checkOne" value="${dto.seq_info}"></td>
													<td><a
														href="${pageContext.request.contextPath}/info/toDetail.do?seq_info=${dto.seq_info}"></a>${dto.info_title}</td>
													<td>관리자</td>
													<td>${dto.info_written_date}</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
				</form>
			</div>
		</div>


		<!-- 자주 묻는 질문 영역 -->
		<div id="faq" class="tabContent">
			<div class="container">
				<form id="faqForm"
					action="${pageContext.request.contextPath}/faq/faqList.do"
					method="post">
					<div class="row mt-5">
						<div class="col-12 list_all_div" style="height: 469px;">
							<table class="table table-hover">
								<thead>
									<tr style="text-align: center;">
										<th class="col-1"><input type="checkbox" id="checkAll"
											name="checkAll"></th>
										<th class="col-5">제목</th>
										<th class="col-3">작성자</th>
										<th class="col-3">작성일</th>
									</tr>
								</thead>
								<tbody id="faqList">
									<c:choose>
										<c:when test="${empty list}">
											<tr>
												<td colspan="6" style="text-align: center;">등록된 글이
													없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="dto">
												<tr class="faqList" style="text-align: center;">
													<td style="text-align: center;"><input type="checkbox"
														class="checkOne" name="checkOne" value="${dto.seq_faq}"></td>
													<td><a
														href="${pageContext.request.contextPath}/faq/toDetail.do?seq_faq=${dto.seq_faq}"></a>${dto.faq_title}</td>
													<td>관리자</td>
													<td>${dto.faq_written_date}</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
					</div>
				</form>
			</div>
		</div>

		<!-- 문의 조회 영역 -->
		<div id="myQna" class="tabContent">
			<div class="container">
				<div class="row mt-4">
					<div class="col-12" style="text-align: right;">
						<button type="button" id="writeBtn" class="btn btn-dark">문의하기</button>
					</div>
				</div>
				<form id="qnaList">
					<div class="col">
						<table class="table table-hover">
							<thead>
								<tr style="text-align: center;">
									<th class="col-2">번호</th>
									<th class="col-5">제목</th>
									<th class="col-3">작성자</th>
									<th class="col-2">작성일</th>
								</tr>
							</thead>
							<tbody id="qnaList">
								<c:choose>
									<c:when test="${empty list}">
										<tr>
											<td colspan="6" style="text-align: center;">등록된 질문이
												없습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${list}" var="dto" varStatus="i">
											<tr class="qnaList" style="text-align: center;">
												<td class="item">${dto.seq_qna}</td>
												<td><a
														href="${pageContext.request.contextPath}/qna/toDetail.do?seq_qna=${dto.seq_qna}"></a>${dto.qna_title}</a></td>
												<td>${dto.nickname}</td>
												<td>${dto.qna_written_date}</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					</div>
				</form>
			</div>
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
			<div class="col-12">
				ⓒ EVery Inc. All Rights Reserved.	
			</div>
		</div>

	</div>

	<script>
		/* 공지사항 */	
		// 목록 페이지 요청
		document.getElementById("infoBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/info/toInfoList.do";
		}
		
		
		/* 자주 묻는 질문*/
		// 목록 페이지 요청
		document.getElementById("faqBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/faq/toFaqList.do";
		}
		
		
		/* 고객 문의 */
		// 목록 페이지 요청
		document.getElementById("qnaBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/qna/toMyList.do";
		}
		
    	// 문의 작성 페이지 요청
	    document.getElementById("writeBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/qna/toWrite.do";
		}
	</script>
	
	<!-- Channel Plugin Scripts -->
	<script>
		  (function() {
		    var w = window;
		    if (w.ChannelIO) {
		      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
		    }
		    var ch = function() {
		      ch.c(arguments);
		    };
		    ch.q = [];
		    ch.c = function(args) {
		      ch.q.push(args);
		    };
		    w.ChannelIO = ch;
		    function l() {
		      if (w.ChannelIOInitialized) {
		        return;
		      }
		      w.ChannelIOInitialized = true;
		      var s = document.createElement('script');
		      s.type = 'text/javascript';
		      s.async = true;
		      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
		      s.charset = 'UTF-8';
		      var x = document.getElementsByTagName('script')[0];
		      x.parentNode.insertBefore(s, x);
		    }
		    if (document.readyState === 'complete') {
		      l();
		    } else if (window.attachEvent) {
		      window.attachEvent('onload', l);
		    } else {
		      window.addEventListener('DOMContentLoaded', l, false);
		      window.addEventListener('load', l, false);
		    }
		  })();
		  ChannelIO('boot', {
		    "pluginKey": "9a79fc52-ae22-4758-b09d-60bc68dcfe2f", //please fill with your plugin key
		    "memberId": "${loginSession.id}", //fill with user id
		    "profile": {
		      "name": "${loginSession.nickname}", //fill with user name
		      "mobileNumber": "${loginSession.phone}" //fill with user phone number
		    }
		  });
	</script>
	
	<!-- End Channel Plugin -->

</body>
</html>