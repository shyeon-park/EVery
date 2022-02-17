<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVery 관리자</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
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
	background-color: lightgray;
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
	background-color: lightgray;
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
            <a href="${pageContext.request.contextPath}/"><img src="/resources/images/a_logo.png" width="80px"></a>
         </div>
         <div class="col-xl-1 d-none d-xl-block navi-menu">
            <a href="${pageContext.request.contextPath}/admin/getAdminUser.do">회원관리</a>
         </div>
         <div class="col-xl-1 d-none d-xl-block navi-menu">
            <a href="${pageContext.request.contextPath }/blacklist/toBlacklist.do">블랙리스트</a>
         </div>
         <div class="col-xl-1 d-none d-xl-block navi-menu">
            <a href="${pageContext.request.contextPath}/admin/columManager.do">컬럼관리</a>
         </div>
         <div class="col-xl-1 d-none d-xl-block navi-menu">
            <a href="${pageContext.request.contextPath }/admin/toAClientSupport.do">고객지원</a>
         </div>
         <c:choose>
         	<c:when test="${!empty adminLoginSession}">
         		<div class="col-xl-6 col-6 navi-menu"></div>
         		<div class="col-xl-1 col-3 navi-menu">
         			<a href="${pageContext.request.contextPath}/admin/adminLogout.do">로그아웃</a>
         		</div>
        	 </c:when>
        	 <c:otherwise>
        	 	<div class="col-xl-7 col-9 navi-menu"></div>
        	 </c:otherwise>
         </c:choose>
         <div class="col-xl-0 col-1 d-xl-none navi-menu">
            <a id="btn_navi_menu"><img src="/resources/images/menu.png" width="20px" height="24px"></a>
         </div>
      </div>
   </nav>
   <div class="row navi-onButtons">
      <div class="col-12">
         <a href="${pageContext.request.contextPath}/admin/getAdminUser.do">회원관리</a>
      </div>
      <div class="col-12">
         <a href="${pageContext.request.contextPath }/blacklist/toBlacklist.do">블랙리스트</a>
      </div>
      <div class="col-12">
         <a href="${pageContext.request.contextPath}/admin/columManager.do">컬럼관리</a>
      </div>
      <div class="col-12">
         <a href="${pageContext.request.contextPath }/admin/toAClientSupport.do">고객지원</a>
      </div>
   </div>
   
	<div class="main">
		<div
			style="text-align: center; padding-top: 50px; padding-bottom: 50px; padding-left: 0px; paddinf-right: 0px;">
			<h2>고객지원</h2>
		</div>

		<div class="tab">
			<button class="tabLinks" id="infoBtn" onclick="openContent(event, 'info')">공지사항</button>
			<button class="tabLinks" id="faqBtn" onclick="openContent(event, 'faq')">자주 묻는 질문</button>
			<button class="tabLinks" id="qnaBtn" onclick="openContent(event, 'myQna')">고객 문의</button>
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
			<div class="col">
				ⓒ EVery Inc. All Rights Reserved.	
			</div>
		</div>
		
	</div>

	<script>
		/* 공지사항 */	
		// 목록 페이지 요청
		document.getElementById("infoBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/info/toAInfoList.do";
		}
		
		
		/* 자주 묻는 질문*/
		// 목록 페이지 요청
		document.getElementById("faqBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/faq/toAFaqList.do";
		}
		
		
		/* 고객 문의 */
		// 목록 페이지 요청
		document.getElementById("qnaBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/qna/toAQnaList.do";
		}
		
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
	 <!-- modal script -->
 	<script>	
 	//체크박스
	document.addEventListener('click',function(e){
        if(e.target.id == 'newMsgAll'){
        if ($("#newMsgAll").prop("checked"))  $("input[name=newMsg]").prop("checked", true)
        else  $("input[name=newMsg]").prop("checked", false)
        }});
	
	//벨 이모티콘 클릭시 list 출력
	document.addEventListener('click',function(e){
        if(e.target.id == 'bell'){
        	ws.send("getUncheckedList");
    }});
	
	
	function messageCheck(){
			 let list = new Array(); // 배열 선언
		 	 $('input:checkbox[name=newMsg]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
		 		list.push(this.value);
		 	 });
			 	 if(list.length != 0){
			 		//console.log(list)
			 		let msg = { category: "msgCheck", list: list };
			 		let msgToJson = JSON.stringify(msg);
			 		ws.send(msgToJson);
			 		
				 }else{
			 		 alert("확인할 메세지를 선택하세요.")
			 	 }
		}
	
	function deleteMsg(){
		 let list = new Array(); // 배열 선언
	 	 $('input:checkbox[name=newMsg]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
	 		list.push(this.value);
	 	 });
		 	 if(list.length != 0){
		 		//console.log(list)
		 		let msg = { category: "msgDel", list: list };
		 		let msgToJson = JSON.stringify(msg);
		 		ws.send(msgToJson);
		 		
			 }else{
		 		 alert("확인할 메세지를 선택하세요.")
		 	 }
	}
	</script>
</body>
</html>