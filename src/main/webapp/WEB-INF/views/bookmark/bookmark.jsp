<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전기차의 모든것 EVery</title>
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

</style>
<style>
	.bookmark-div {
		background-color: white !important;
		border: 1px solid lightgrey;
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
					<div class="col-xl-4 col-6 navi-menu"></div>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu">
						<a href="">로그인</a>
					</div>
				</c:when>
				<c:when test="${!empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu">
						<a href="">로그아웃</a>
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
		<div class="container">
        <div class="row">
            <div class="col"><h4>즐겨찾기</h4></div>
        </div>
        <div class="row">
        	<div class="col-12 mb-2 d-flex justify-content-end">
        		<button type="button" class="btn btn-deleteAll" style="border:1px solid grey;" id="btn-deleteAll">전체삭제</button>
        	</div>
            <div class="bookmark-div">
                <!-- 동적 즐겨찾기 추가 -->
            </div>
        </div>
        <div class="row">
			<div class="cmt-paging">
		
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
	<script>
	    
	    // 전체 삭제 버튼
	    $("#btn-deleteAll").on("click", function(){
	    	if($(".emptyDiv").html() == "<h4>즐겨찾기목록이 없습니다.</h4>"){
	    		alert("삭제할 항목이 없습니다.");
	    		return;
	    	}
	    	let rs = confirm("삭제하시겠습니까?");
			if(!rs){
				return;
			}
			$.ajax({
				type : "get"
				, url : "${pageContext.request.contextPath}/bookmark/deleteAll.do?id=${loginSession.id}"
			}).done(function(rs){
				if(rs == "success"){
					getBookmarkList(1);
				}else if(rs == "fail"){
					alert("삭제에 실패하였습니다.");
				}
			}).fail(function(e){
				console.log(e);
			});
	    })
	    
	    // 삭제 버튼
	    $(document).on("click",".btn-delete", function(e){
	    	if($(e.target).html() == "삭제"){
				let rs = confirm("삭제하시겠습니까?");
				if(!rs){
					return;
				}
				$.ajax({
					type : "get"
					, url : "${pageContext.request.contextPath}/bookmark/delete.do?station=" + $(e.target).val()
				}).done(function(rs){
					if(rs == "success"){
						getBookmarkList(1);
					}else if(rs == "fail"){
						alert("삭제에 실패하였습니다.");
					}
				}).fail(function(e){
					console.log(e);
				});
	    	}
	    })
	    
	 	// 페이지 로드되자마자 즐찾목록도 ajax 로 로드
		$(document).ready(function(){
			getBookmarkList(1);
		})
		
		// 즐겨찾기 목록 불러오는 함수
		function getBookmarkList(currentPage){
	 		$.ajax({
	 			type : "get"
	 			, url : "${pageContext.request.contextPath}/bookmark/getList.do?id=${loginSession.id}&currentPage=" + currentPage
	 		}).done(function(data){
	 			$(".bookmark-div").empty();
	 			$(".cmt-paging").empty();
	 			if(data.bookmarkList == ""){
	 				let bookmarkNull = "<div class='emptyDiv' style='text-align:center; height:100px; padding-top:40px;'><h4>즐겨찾기목록이 없습니다.</h4></div>";
	 				$(".bookmark-div").append(bookmarkNull);
	 			}else{
	 				for(let dto of data.bookmarkList){
	 					let bookmark = "<div class='row bookmark-header m-1' style='border-bottom:1px solid black;'>"
	 									+ "<div class='col-10 d-flex justify-content-start'>"
	 									+ "<a style='padding-top:7px;' href='${pageContext.request.contextPath}/menu/toDetail.do?station=" + dto.station + "'>" + dto.station + "</a>"
	 									+ "</div>" 
	 									+ "<div class='col-2 d-flex justify-content-center'>"
	 									+ "<button type='button' class='btn btn-delete' value='" + dto.station +"'>삭제</button>"
	 									+ "</div>"
	 									+ "</div>"
	 					$(".bookmark-div").append(bookmark);
	 				}
	 				
	 				let startNavi = data.settingMap.startNavi;
	 				let endNavi = data.settingMap.endNavi;
	 				
	 				let paging = "<nav class='col' aria-label='Page navigation example'>"
	 							+ "<ul class='pagination justify-content-center'>";
	 							
	 							if(data.settingMap.needPrev == true){
	 								paging += "<li class='page-item'><a class='page-link' onclick='getBookmarkList(" + startNavi + "- 1);'>Previous</a></li>";
	 							}
	 							
	 							for(var i= startNavi; i<= endNavi; i++){
	 								paging += "<li class='page-item'><a class='page-link' onclick='getBookmarkList(" + i + ");'>" + i + "</a></li>";
	 							}
	 							
	 							if(data.settingMap.needNext == true){
	 								paging += "<li class='page-item'><a class='page-link' onclick='getBookmarkList(" + endNavi + "+ 1);'>Next</a></li>";
	 							}
	 							
	 					paging += "</ul>" + "</nav>";		
	 							
	 					$(".cmt-paging").append(paging);
	 			}
	 		}).fail(function(e){
	 			console.log(e);
	 		})
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
</body>
</html>
