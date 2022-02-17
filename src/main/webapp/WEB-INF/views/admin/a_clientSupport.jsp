<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVery 관리자</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script type="text/javascript" src="/resources/js/websocket.js"></script> <!-- 웹소켓 -->
<link rel="icon" href="/resources/images/EVery_Favicon.png"><!-- Favicon 이미지 -->
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
	/*    font-family: 'Do Hyeon', sans-serif; */
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

.infoDiv {
	width: 82.6vw;
	padding: 0px;
	margin: auto;
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

/* 탭 영역 */
#tab {
	/*
   width: 80%;
   margin: auto;*/
	
}

.tabmenu {
	text-align: center;
	cursor: pointer;
	/*border-bottom: 2px solid #333;*/
	padding: 20px;
	transition: 0.1s;
}
/*
   border-left: 1px solid #ccc;
   border-right: 1px solid #ccc;
   border-top: 2px solid #ccc;*/
.tabmenu:hover {
	color: #fff;
	/*backgrond-color: #ccc;*/
}

.tabmenu.current {
	/*background: #333;
   color: #fff;*/
	/*
   border-top: 2px solid #333;
   border-left: 2px solid #333;
   border-right: 2px solid #333;
   border-bottom: 0;*/
	color: #fff;
	background: #333;
	/*
   border-left: 2px solid #ccc;
   border-right: 2px solid #ccc;*/
	font-weight: bold;
	/*border-top-left-radius: 10px;*/
	/*border-top-right-radius: 5px;*/
}

.tabContents {
	padding-top: 50px;
	padding-bottom: 50px;
	/*
   border-left: 1px solid #333;
   border-right: 1px solid #333;*/
	/*border-bottom: 1px solid #333;*/
	display: none;
}

.tabContents.current {
	display: block;
	/*
   border-left: 2px solid #ccc;
   border-right: 2px solid #ccc;*/
	border-top: 2px solid grey;
	/*border-bottom: 2px solid grey;*/
}

.page-link {
	color: #fff;
	background-color: #333;
}

.page-link:hover {
	color: grey;
	background-color: #ccc;
}

/* 알림 */
#bellBox {
	position: relative;
}

#bell_text {
	position: absolute;
	color: white;
	font-weight: 700;
	font-size: 10px;
	width: 18px;
	right: 40%;
	top: 20%;
	transform: translate(50%, -50%);
	display: inline-block;
	background-color: red;
	border-radius: 100%;
	text-align: center;
}
</style>
</head>
<body>
	<nav class="navber">
		<div class="row nav-items d-flex justify-content-center">
			<div class="col-2 col-xl-1 navi-logo">
				<a href="${pageContext.request.contextPath}/admin/getAdminUser.do"><img
					src="/resources/images/a_logo.png" width="80px"></a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="${pageContext.request.contextPath}/admin/getAdminUser.do">회원관리</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a
					href="${pageContext.request.contextPath }/blacklist/toBlacklist.do">블랙리스트</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="${pageContext.request.contextPath}/admin/columManager.do">컬럼관리</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="${pageContext.request.contextPath}/review/toAdReview.do">댓글관리</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="${pageContext.request.contextPath }/admin/getClientSupport.do">고객지원</a>
			</div>
			<c:choose>
				<c:when test="${!empty adminLoginSession}">
					<div class="col-xl-4 col-8 navi-menu"></div>
					<div class="col-xl-1 d-none d-xl-block navi-menu">
						<a href="${pageContext.request.contextPath}/admin/adminLogout.do">로그아웃</a>
					</div>

				</c:when>
				<c:otherwise>
					<div class="col-xl-6 col-8 navi-menu"></div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${!empty adminLoginSession}">
					<div class="col-xl-1 col-1 navi-menu" id="bellBox">
						<a data-bs-toggle="modal" data-bs-target="#bellModal" id="bell"
							onclick="ws.send('getUncheckedList');"><img
							src="/resources/images/alarm.png" width="24px" height="24px"></a>
						<div id="bell_text"></div>
					</div>
				</c:when>
			</c:choose>
			<div class="col-xl-0 col-1 d-xl-none navi-menu">
				<a id="btn_navi_menu"><img src="/resources/images/menu.png"
					width="20px" height="24px"></a>
			</div>
		</div>
	</nav>
	<div class="row navi-onButtons">
		<div class="col-12">
			<a href="${pageContext.request.contextPath}/admin/getAdminUser.do">회원관리</a>
		</div>
		<div class="col-12">
			<a
				href="${pageContext.request.contextPath }/blacklist/toBlacklist.do">블랙리스트</a>
		</div>
		<div class="col-12">
			<a href="${pageContext.request.contextPath}/admin/columManager.do">컬럼관리</a>
		</div>
		<div class="col-12">
			<a href="${pageContext.request.contextPath }/admin/getClientSupport.do">고객지원</a>
		</div>
		<div class="col-12">
			<a href="${pageContext.request.contextPath }/admin/adminLogout.do">로그아웃</a>
		</div>
	</div>

	<div class="main">
		<div class="row infoDiv"
			style="padding-top: 50px; padding-bottom: 50px; padding-left: 0px; paddinf-right: 0px;">
			<div class="col-12" style="text-align: center;">
				<h2>관리자 고객지원</h2>
			</div>
		</div>


		<!-- 탭메뉴 -->
		<div class="row infoDiv" id="tab">
			<div class="col-4 tabmenu current" data-tab="adminInfo" id="a_info">공지사항</div>
			<div class="col-4 tabmenu" data-tab="faq" id="a_faq">자주묻는 질문</div>
			<div class="col-4 tabmenu" data-tab="qna" id="a_qna">문의 조회</div>
		</div>

		<!-- 공지사항 영역 -->
		<div class="tabContents infoDiv current" id="adminInfo">
			<div style="width: 80%; margin: auto;">
				<div class="row mt-4">
					<div class="col-12 main_title_div">
						<h3>공지사항</h3>
					</div>
				</div>

				<form id="infoForm"
					action="${pageContext.request.contextPath}/info/infoList.do"
					method="post">
					<div class="row mt-5">
						<div class="col-12 list_all_div" style="max-height: 450px; overflow-y: scroll;">
							<table class="table table-hover">
								<thead>
									<tr style="text-align: center;">
										<th class="col-5">제목</th>
										<th class="col-3">작성자</th>
										<th class="col-3">작성일</th>
									</tr>
								</thead>
								<tbody id="infoList">
								</tbody>
							</table>
						</div>
					</div>
				</form>
				<!-- 
			<div class="row">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-secondary" id="backBtn">뒤로가기</button>
				</div>
			</div>  -->
				<div class="row mt-4">
					<div class="col-12" style="text-align: right;">
						<button type="button" id="a_infoWriteBtn" class="btn btn-dark">글쓰기</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 자주묻는 질문 영역 -->
		<div class="tabContents infoDiv" id="faq">
			<div style="width: 80%; margin: auto;">
				<div class="row mt-4">
					<div class="col-3 suv_title_div">
						<h3>FAQ</h3>
					</div>
				</div>

				<form id="faqForm"
					action="${pageContext.request.contextPath}/faq/faqList.do"
					method="post">
					<div class="row mt-5">
						<div class="col-12 list_all_div" style="max-height: 450px; overflow-y: scroll;">
							<table class="table table-hover">
								<thead>
									<tr style="text-align: center;">
										<th class="col-5">제목</th>
										<th class="col-3">작성자</th>
										<th class="col-3">작성일</th>
									</tr>
								</thead>
								<tbody id="faqList">
								</tbody>
							</table>
						</div>
					</div>
				</form>
				<!-- 
			<div class="row">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-secondary" id="backBtn">뒤로가기</button>
				</div>
			</div>  -->
				<div class="row mt-4">
					<div class="col-12" style="text-align: right;">
						<button type="button" id="faqWriteBtn" class="btn btn-dark">글쓰기</button>
					</div>
				</div>

			</div>
		</div>
		
		
		<!-- 문의조회 영역 -->
		<div class="tabContents infoDiv" id="qna">
			<div style="width: 80%; margin: auto;">
				<div class="row mt-4">
					<div class="col-3 suv_title_div">
						<h3>Q&A</h3>
					</div>
				</div>
				
				
					<form id="qnaList">
						<div class="col" style="max-height: 450px; overflow-y: scroll;">
							<table class="table table-hover">
								<thead>
									<tr style="text-align: center;">
										<th class="col-5">제목</th>
										<th class="col-3">작성자</th>
										<th class="col-2">작성일</th>
									</tr>
								</thead>
								<tbody id="qnaList_tbl">
								</tbody>
							</table>
						</div>
					</form>
				
				<!-- 
				<div class="row">
					<div class="col d-flex justify-content-end">
						<button type="button" class="btn btn-secondary" id="backBtn">뒤로가기</button>
					</div>
				</div>  -->
			</div>
		</div>
		
		



	</div>

	<!-- bell-Modal -->
	<div class="modal fade" id="bellModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">알림창</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="modalcontainer">
						<div class="row">
							<div class="col-6 text-center noticeList">
								<a href="#" onclick="ws.send('getUncheckedList');">새소식</a>
							</div>
							<div class="col-6 text-center noticeList">
								<a onclick="ws.send('getCheckedList');">이전 알림</a>
							</div>
						</div>
						<div class="row">
							<table class="table">
								<tr class="text-center">
									<th class=""><input type="checkbox" name="newMsgAll"
										id="newMsgAll"></th>
									<th class="">시간</th>
									<th class="">메세지</th>
								</tr>
								<tbody id="listPrint">
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<!--    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button> -->
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
			<div class="col-12">ⓒ EVery Inc. All Rights Reserved.</div>
		</div>

	</div>

	<script>
	$(document).ready(function(){
		currentSelect();
		getInfoList();
	})
	
	function currentSelect() {
		if("${view}" != null || "${view}" != ""){
			let view = "${view}";
			console.log(view);
			
			if(view == "faq") {
				$('.tabmenu').removeClass('current');
			    $('.tabContents').removeClass('current');

			    $("#a_faq").addClass('current');
			    $("#faq").addClass('current');
			    
			    getFaqList();
			} else if (view == "qna") {
				$('.tabmenu').removeClass('current');
			    $('.tabContents').removeClass('current');

			    $("#a_qna").addClass('current');
			    $("#qna").addClass('current');
			    
			    getQnaList();
			} else if (view == "info") {
				$('.tabmenu').removeClass('current');
			    $('.tabContents').removeClass('current');

			    $("#a_info").addClass('current');
			    $("#adminInfo").addClass('current');
			    
			    getInfoList();
			} else {
			}
		}
	}
	
	// 공지사항 목록 불러오기
	function getInfoList() {
		$.ajax({
			url: "${pageContext.request.contextPath}/info/getInfoList.do",
			type: "get",
			dataType: "json"
		}).done(function(rs){
			console.log(rs);
			$("#infoList").empty();
			if(rs == "") {
				let infoList = "<tr><td colspan='6' style='text-align: center;'>등록된 공지가 없습니다.</td></tr>";
				$("#infoList").append(infoList);
			} else {
				for(list of rs) {
					let infoList = "<tr><td style='text-align: center;'>"+
								   "<a href='${pageContext.request.contextPath}/info/toAInfoDetail.do?seq_info=" + list.seq_info + "'>" + list.info_title + "</a></td>" +
					  			   "<td style='text-align: center;'>" + list.admin_id + "</td>" +
					  			   "<td style='text-align: center;'>" + list.info_written_date + "</td></tr>";
					$("#infoList").append(infoList);
				}
			}
		}).fail(function(e){
			
		})
	}
	
	// 자주묻는 질문 불러오기
	function getFaqList() {
		$.ajax({
			url: "${pageContext.request.contextPath}/faq/getFaqList.do",
			type: "get",
			dataType: "json"
		}).done(function(rs){
			console.log(rs);
			$("#faqList").empty();
			if(rs == "") {
				let faqList = "<tr><td colspan='6' style='text-align: center;'>등록된 자주 묻는 질문이 없습니다.</td></tr>";
				$("#faqList").append(faqList);
			} else {
				for(list of rs) {
					let faqList = "<tr><td style='text-align: center;'>"+
								   "<a href='${pageContext.request.contextPath}/faq/toAFaqDetail.do?seq_faq=" + list.seq_faq + "'>" + list.faq_title + "</a></td>" +
					  			   "<td style='text-align: center;'>" + list.admin_id + "</td>" +
					  			   "<td style='text-align: center;'>" + list.faq_written_date + "</td></tr>";
					$("#faqList").append(faqList);
				}
			}
		}).fail(function(e){
			
		})
	}
	
	// 문의 목록 불러오기
	function getQnaList() {
		$.ajax({
			url: "${pageContext.request.contextPath}/qna/getQnaList.do",
			type: "get",
			dataType: "json"
		}).done(function(rs){
			console.log(rs);
			$("#qnaList_tbl").empty();
			if(rs == "") {
				let qnaList = "<tr><td colspan='6' style='text-align: center;'>등록된 질문이 없습니다.</td></tr>";
				$("#qnaList_tbl").append(qnaList);
			} else {
				for(list of rs) {
					let qnaList = "<tr><td style='text-align: center;'>"+
								   "<a href='${pageContext.request.contextPath}/qna/toAQnaDetail.do?seq_qna=" + list.seq_qna + "'>" + list.qna_title + "</a></td>" +
					  			   "<td style='text-align: center;'>" + list.nickname + "</td>" +
					  			   "<td style='text-align: center;'>" + list.qna_written_date + "</td></tr>";
					$("#qnaList_tbl").append(qnaList);
				}
			}
		}).fail(function(e){
			
		})
	}
	
   // 탭메뉴 클릭 시
   $('.tabmenu').click(function() {
      var tab_id = $(this).attr("data-tab");
      console.log(tab_id);
      
      if(tab_id == "adminInfo") {
    	  getInfoList();
      } else if(tab_id == "faq") {
    	  getFaqList();
      }  else if(tab_id == "qna") {
    	  getQnaList();
      }
      
      $('.tabmenu').removeClass('current');
      $('.tabContents').removeClass('current');

      $(this).addClass('current');
      $("#" + tab_id).addClass('current');
   })
   
   
   /* 네비영역 */
      $(function() {
         let onNavbar = 0; // 네비 햄버거버튼 클릭했는지 아닌지 알기위한 변수
         $('#btn_navi_menu').on('click', function() { //햄버거버튼 클릭 시
            if (onNavbar == 0) {
               $('.navi-onButtons').css({
                  "height" : "auto",
                  "display" : "block"
               }); // 세로 네비영역 열기
               $('.main').css({
                  "padding-top" : "10px"
               });
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
               $('.main').css({
                  "padding-top" : "92px"
               });
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
   
   
   /* 공지사항 영역 영역 */
   // 글쓰기
	document.getElementById("a_infoWriteBtn").onclick = function() {
		location.href = "${pageContext.request.contextPath}/info/toWrite.do";
	}
   
   /* 자주묻는 질문 영역 */
   // 글쓰기
	document.getElementById("faqWriteBtn").onclick = function() {
		location.href = "${pageContext.request.contextPath}/faq/toWrite.do";
	}
   
   /* 문의조회 영역 */

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