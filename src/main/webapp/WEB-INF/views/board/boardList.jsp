<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>칼럼</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script type="text/javascript" src="/resources/js/websocket.js"></script> <!-- 웹소켓 -->
<link rel="icon" href="/resources/images/EVery_Favicon.png"><!-- Favicon 이미지 -->
<link href="${pageContext.request.contextPath}/resources/css/memberModal.css" rel="stylesheet">
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

/* 로딩 */
.loadingDiv {
	position: absolute;
	transform: translate(-50%, -50%);
	top: 50%;
	left: 50%;
	display: none;
	z-index: 99999;
}

.container{
width: 100%;
height: 100%}
/*
a>img {
width: 100%;
height: 220px;
border-radius: 3;

}
*/
.cardContainer{
 margin-bottom: 10px;
 padding-left: 20px;
 padding-right: 20px;

}
.atag{
width: 100%;
height: 100%;
}

.titleImg{
 width: 400px;
 height: 300px;
 padding-bottom: 15px;
 border: none;
}
.colum-body{
margin: 0;
padding: 0;
}
.colum-title {
width: 100%;.
height: auto;
margin-bottom: 10px
}
.colum-title > a{
width: 100%;
height: auto;
text-decoration: none;
color : black;
font-size: 1.4rem;
font-weight: bold;
}
.card-img-top{
width: 100%;
height: 100%;
}
.colum-text{
margin: 0;
}


.selectBox{
  width: 20%;
  height: 100%;
  margin: 0;
  padding: 0;
  text-align: center;
  border: 3px solid rgb(138, 205, 231);
}
.searchInputBox{
  width: 55%;
  height: 100%;
  margin: 0;
  padding: 0;
  outline:none;
  border: 3px solid rgb(138, 205, 231);
}

.searchBox{
    height: 60px;
    text-align: center;
    margin-bottom: 30px    
}

.searchBtn{
    width: 10%;
    border: none;
    background-color:  rgb(138, 205, 231);
    height: 100%;
}
.searchBtn:hover{
    background-color:  rgb(68, 159, 195);
}

.container{
  width: 82.6vw;
    padding: 0px;
    margin: auto;
}

.list{
  width: 82.6vw;
    padding: 0px;
    margin: auto;
}

/* 알람 css  */
/*
 	#bell{
      position: relative;
      cursor: pointer;
 
    }
    */
	#bellBox{
	position: relative;
	}
    #bell_text{
      position: absolute;
      color: white;
      font-weight: 700;
      font-size: 10px;
      width: 18px;
      right : 40%;
      top : 20%; 
   	  transform : translate( 50%,-50% );
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
				<a href="${pageContext.request.contextPath }/admin/toClientSupport.do">고객지원</a>
			</div>
			
			<c:choose>
				<c:when test="${empty loginSession}">
				<div class="col-xl-7 col-9 navi-menu"></div>
				</c:when>
				<c:when test="${!empty loginSession}">
					<div class="col-xl-5 col-8 navi-menu"></div>
				</c:when>
			</c:choose>
			
		
			<c:choose>
				<c:when test="${empty loginSession}">
				</c:when>
				<c:when test="${!empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu">
						<a href="${pageContext.request.contextPath}/member/getMypage.do">마이페이지</a>
					</div>
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu">
						<a onclick="openLoginModal(); loginFunc();">로그인</a>
					</div>
				</c:when>
				<c:when test="${!empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu">
						<a onclick="logoutFunc();">로그아웃</a>
					</div>
				</c:when>
			</c:choose>
<%-- 			<c:choose> --%>
<%-- 			  	<c:when test="${!empty loginSession}"> --%>
<!-- 					<div class="col-1 navi-menu" id = "bell"> -->
<!-- 						 <div id = "bell"> -->
<!-- 							<img src="/resources/images/alarm.png" width="24px" height="24px" data-bs-toggle="modal" data-bs-target="#bellModal" id="bell"> -->
<!-- <!-- 						<i class="fa-light fa-bell" data-bs-toggle="modal" data-bs-target="#bellModal" id="bell"></i> -->
<!-- 	          			 <div id ="bell_text"></div> -->
<!-- 					</div> -->
<%-- 				</c:when> --%>
<%-- 			</c:choose> --%>
			<c:choose>
			  	<c:when test="${!empty loginSession}">
			  		<div class="col-xl-1 col-1 navi-menu" id="bellBox">
			  		<a data-bs-toggle="modal" data-bs-target="#bellModal" id="bell" onclick="ws.send('getUncheckedList');"><img src="/resources/images/alarm.png" width="24px"
                		height="24px"></a>
                	<div id ="bell_text"></div>
			  		</div>
			  	

				</c:when>
			</c:choose>
			<c:choose>
			  	<c:when test="${!empty loginSession}">
					<div class="col-xl-0 col-1 d-xl-none navi-menu">
					<a id="btn_navi_menu"><img src="/resources/images/menu.png" width="20px"
						height="24px"></a>
					</div>
				</c:when>
			</c:choose>
			
		</div>
	</nav>
	<div class="row navi-onButtons">
		<div class="col-12">
			<a href="${pageContext.request.contextPath }/station/toGetStation">충전소 조회</a>
		</div>
		<div class="col-12">
			<a href="${pageContext.request.contextPath }/board/toBoard.do">칼럼</a>
		</div>
		<div class="col-12">
			<a href="${pageContext.request.contextPath }/admin/toClientSupport.do">고객지원</a>
		</div>
		<c:choose>
			<c:when test="${empty loginSession}">
			</c:when>
			<c:when test="${!empty loginSession}">
				<div class="col-12">
					<a href="${pageContext.request.contextPath}/member/getMypage.do">마이페이지</a>
				</div>
			</c:when>
		</c:choose>
		
		<c:choose>
			<c:when test="${empty loginSession}">
				<div class="col-12">
					<a onclick="openLoginModal(); loginFunc();">로그인</a>
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
		<div class="loadingDiv">
			<img src="/resources/images/loading.gif">
		</div>	

		<div class="row">
			<div class="col d-flex justify-content-center">
				<h4 class="mb-5">칼럼</h4>
			</div>
		</div>
		<div class="row">
        <div class="col">
            <div class="searchBox w-100">
            <select class="selectBox" id="checkOption" name ="checkOption">
                <option value="title" selected>제목</option>
                <option value="nickname">작성자</option>
            </select>
            <input type="text" class="searchInputBox" id="keyword" name="keyword" placeholder="검색어를 입력해주세요">
            <button class="searchBtn" id="searchBtn"><i class="bi bi-search"></i></button>
            </div>
            
        </div>
    </div>
 
	    <div class="row list">
	    
	    </div>
		<div class="row">
			<div class="col-12 d-flex justify-content-between" id ="pagingNavi"></div>
			
		</div>
	
		<script>
		let keyword = $("#keyword").val("");
		//검색버튼 클릭
		$("#searchBtn").on("click",function(){
			if($("#keyword").val() != ""){
				let checkOption = $("#checkOption").val();
				let keyword = $("#keyword").val();
				//console.log(checkOption + " : "+ keyword);
				let url = "${pageContext.request.contextPath}/board/searchProc.do?checkOption="+checkOption+"&keyword="+keyword
				$(location).attr("href",url);		
			
				}
			
		});
		
		getBoardList(1)
		function getBoardList(currentPage){
			$.ajax({
				type: "post", //요청 메소드 방식
				url:"${pageContext.request.contextPath}/board/boardlist.do?currentPage="+currentPage,
				success : function(res){
					//console.log(res);
					columnList = res.columnList;
					$(".list").empty();
					$("#pagingNavi").empty();
					let data = res.list
					if(data == null || data =="" ){
						let list = "리스트가 비어있습니다"
							let writeBtn = ""
								 if(("${loginSession}" != "") && columnList != null){
								for(col_id of columnList){
									//console.log("아이디는" + col_id)
									if("${loginSession.id}" == col_id.id){
										writeBtn = "<button type='button' class='btn btn-success' id='writeBtn'>글쓰기</button>";
									}else{
										writeBtn = "";
									}
								   }
								}
						$("#pagingNavi").append(writeBtn)
						
					}else{
						for(var con of data){
							let listTitle = con.title;
							subStringTitle = listTitle.substring(0, 20)
							console.log(listTitle)
						
							 let date = con.written_date.replace(/,/,"")
							 let written_date = date.split(" ");
							 date = written_date[2]+"년 "+written_date[0]+" "+written_date[1]+"일"
							let list = "<div class='col-12 col-md-6 col-xl-4 cardContainer d-flex justify-content-center'>"
			                			+"<div>"
										+"<div class='titleImg'>"
				                		+"<a href='${pageContext.request.contextPath}/board/detail.do?seq_column="+con.seq_column+"' class='atag'>"
				                				
				                				if(con.profile == null || con.profile==""){
				                			    list +="<img src="
				                			    	+"'${pageContext.request.contextPath}/resources/images/colum/imagedoesnot exist.png'"
				                			    	+"class='card-img-top' alt='...'>"
				                			    }else{
				                			    //console.log("'${pageContext.request.contextPath}/upload/"+con.sys_name+"'");	
				                			    list +="<img src="
				                			    	+"'${pageContext.request.contextPath}/upload/"+con.sys_name+"'"
				                			       	+"class='card-img-top' alt='...'>"	
												}
												list += "</a></div>"
											
				                   				+"<div class='colum-body'>"
					                   			+"<p class='colum-title'>"
				                   				+"<a href='${pageContext.request.contextPath}/board/detail.do?seq_column="+con.seq_column+"'>"
				                   				if(listTitle.length < 20){
					               					list +=	subStringTitle
					               					list += "</a></p>"
					               				}else{
					               					list +=	subStringTitle
					               					list += "...</a></p>"
					               				}
				                   				list +="<p class='colum-text'>"+date+"</p>"
				                      			+"<p class='colum-text'> 칼럼리스트 : "+con.nickname+"</p>"
				                    			+"</div>"
			                   				+"</div>"
			            				+"</div>"
			            				+"</div>"
			
		            					$(".list").append(list)
						  } // LIST 출력
						  
						  let startNavi = res.startNavi
						  let endNavi = res.endNavi
						  let pagingNavi = "<nav aria-label='Page navigation example'>"
							  		+"<ul class='pagination d-flex justify-content-center m-0'>"
							if(res.needPrev) pagingNavi +="<li class='page-item'><a class='page-link' onclick='getBoardList(" + startNavi + "-1);'>Prev</a></li>"
							for(let i = startNavi; i<=endNavi; i++){
								pagingNavi += "<li class='page-item'><a class='page-link' onclick='getBoardList(" + i + ");'>" + i + "</a></li>"
							}
							if(res.needNext) pagingNavi += "<li class='page-item'><a class='page-link' onclick='getBoardList(" +endNavi+ "+1);'>Next</a></li>"
							
							
							pagingNavi +="</ul>"
							pagingNavi += "</nav>"
							console.log(columnList)
							 if(("${loginSession}" != "") && columnList != null){
								for(col_id of columnList){
									if("${loginSession.id}" == col_id.id) pagingNavi += "<button type='button' class='btn btn-success' id='writeBtn'>글쓰기</button>";
								}	
							 }

							$("#pagingNavi").append(pagingNavi)
					}
				},
				error : function(e){
					console.log(e);
				}
			});
		}
		
		
		// 로그아웃 요청
		$("#logoutBtn").on("click", function(){
			location.href = "${pageContext.request.contextPath}/member/logout.do";
		});
		// 글쓰기 페이지 요청
		document.addEventListener('click',function(e){
			//console.log(e.target.id)
	        if(e.target.id == 'writeBtn'){
	        	location.href = "${pageContext.request.contextPath}/board/toWrite.do";
	     }});
		
		
	</script>
	
	</div>
	<div class="footer">
		
		<div class="row footer-body">
			<div class="col-12 col-xl-6 footer-body-left">
				<p>EVery | 사업자번호: 350-12-43123 | 대표: 이동훈</p>
				<p>개인정보취급담당자: 이수희</p>
				<p>통신판매업신고: 제 2021-서울강남-03823 호</p>
				<div class="row footer-top">
					<ul>
						<li><a href="${pageContext.request.contextPath }/terms?view=service">이용약관</a></li>
						<li><a href="${pageContext.request.contextPath }/terms?view=privacy">개인정보처리방침</a></li>
						<li><a href="${pageContext.request.contextPath }/admin/toClientSupport.do">고객지원</a></li>
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
	
	<!-- 회원 관련 모달 -->
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
				
  									<input class="form-check-input" name="flexRadioDefault" type="radio" id="flexRadioDefault2 adminLogin" value="1" style="margin-left: 8px;">
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
						<div class="row memberRow" style="margin-top: 10px; margin-bottom: 10px;">
							<div class="col-12" style="text-align: center;">
								<span style="color: grey; font-size: 12px; margin-bottom: 0px;">SNS 소셜 로그인</span>
							</div>
						</div>
						<div class="row memberRow">
							<div class="col-12" style="text-align: center;">
							<!-- <button type="button" id="naverIdLogin_loginButton" style="border:none; background-color:#fff;" onclick="naverLogout()">
										<img src="https://static.nid.naver.com/oauth/button_g.PNG?version=js-2.0.1" height="40">
								</button> -->
								
								<!-- 네이버 로그인 버튼 -->
								<div id="naverIdLogin" style="display:none;"></div>
								<a type="button" id="naverLogin">
									<img src="/resources/images/naver_login.png" width="50" height="50">
								</a>
								<!-- 카카오 로그인 버튼 -->
								<a type="button" id="kakao_login" onclick="kakaoLogin();">
									<img src="/resources/images/kakao_login.png" width="50" height="50">
								</a>
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
		
<!-- bell-Modal -->
<div class="modal fade" id="bellModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">알림창</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="modalcontainer">
          <div class="row">
            <div class="col-6 text-center noticeList"><a href="#" onclick="ws.send('getUncheckedList');">새소식</a></div>
            <div class="col-6 text-center noticeList"><a onclick="ws.send('getCheckedList');">이전 알림</a></div>
          </div>
          <div class="row">
           <table class="table">
                <tr class="text-center">
                  <th class=""><input type="checkbox" name="newMsgAll" id="newMsgAll"></th>
                  <th class="">시간</th>
                  <th class="">메세지</th>
                </tr>
            <tbody id="listPrint">
            </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="modal-footer" id="footerBtnAdd">
      <!--    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button> -->
      </div>
    </div>
  </div>
</div>

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
							<button type="button" class="btn btn-secondary sendAuthNumBtn" id="sendSmsBtn_find" style="width: 100%; font-size: 10px;">인증번호 전송</button>
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
							<button type="button" class="btn btn-secondary sendSmsBtn" id="snsSendSmsBtn" style="width: 100%; font-size: 10px;">인증번호 전송</button>
						</div>
						<input type="text" id="snsPhone" name="phone" class="phone" hidden>
						<p class="txtCls phoneTxt" id="snsPhoneTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
					</div>
					<div class="row auth memberRow" id="snsSignupAuth"></div>
				</div>
				<div class="modal-footer">
					<button type='button' style='background-color: #fff; border: none;' data-bs-target='#snsNicknameModal' data-bs-toggle='modal' onclick="invalidateAuthSession()">
						<i class='fas fa-arrow-left fa-lg' style='color: lightgrey;'></i>
					</button>
					<button type='button' id='snsJoinBtn' style='background-color: #fff; border: none;'>
						<i class='fas fa-check fa-lg' style='color: #18a8f1;'></i> 
					</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 네이버 연동 휴대폰인증 모달 -->
	<div class="modal fade" id="naverAuthModal" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel2">네이버연동 휴대폰 인증</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="invalidateAuthSession()"></button>
				</div>
				<div class="modal-body" id="naverLinked" style="margin-top: 30px; margin-bottom: 30px;">
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel" id="phoneLabel">핸드폰</label>
						</div>
						<div class="col-3">
							<select class="form-select signupInput selectPhone" aria-label="Default select example" id="snsPhoneAuthNum1">
								<option value="선택" selected>선택</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="012">012</option>
								<option value="017">017</option>
								<option value="019">019</option>
							</select>
						</div>
						<div class="col-3">
							<input type="text" id="snsPhoneAuthNum2" class="form-control signupInput phoneNum snsPhoneAuthNum" name="phoneNum2" maxlength="4">
						</div>
						<div class="col-3">
							<input type="text" id="snsPhoneAuthNum3" class="form-control signupInput phoneNum snsPhoneAuthNum" name="phoneNum3" maxlength="4">
						</div>
						<div class="col-3">
							<button type="button" class="btn btn-secondary sendAuthNumBtn" id="naverSendSmsBtn" style="width: 100%; font-size: 10px;">인증번호 전송</button>
						</div>
						<input type="text" id="snsPhoneAuth" name="phone" class="phone" hidden>
						<p class="txtCls phoneTxt" id="snsPhoneAuthTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
					</div>
					<div class="row auth memberRow" id="snsSignupAuth"></div>
				</div>
				<div class="modal-footer">
					<button type='button' style='background-color: #fff; border: none;' data-bs-target='#loginModal' data-bs-toggle='modal' onclick="invalidateAuthSession()">
						<i class='fas fa-arrow-left fa-lg' style='color: lightgrey;'></i>
					</button>
					<button type='button' id='naverLinkWithBtn' style='background-color: #fff; border: none;'>
						<i class='fas fa-check fa-lg' style='color: #18a8f1;'></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 카카오 휴대폰인증 모달 -->
	<div class="modal fade" id="kakaoAuthModal" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false"
		aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalToggleLabel2">카카오 휴대폰 인증</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="invalidateAuthSession()"></button>
				</div>
				<div class="modal-body" id="kakaoLinked" style="margin-top: 30px; margin-bottom: 30px;">
					<div class="row memberRow">
						<div class="col-12">
							<label class="form-check-label memberLabel">핸드폰</label>
						</div>
						<div class="col-3">
							<select class="form-select signupInput selectPhone" aria-label="Default select example" id="kakaoAuthPhoneNum1">
								<option value="선택" selected>선택</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="012">012</option>
								<option value="017">017</option>
								<option value="019">019</option>
							</select>
						</div>
						<div class="col-3">
							<input type="text" id="kakaoAuthPhoneNum2" class="form-control signupInput phoneNum kakaoPhoneAuthNum" name="phoneNum2" maxlength="4">
						</div>
						<div class="col-3">
							<input type="text" id="kakaoAuthPhoneNum3" class="form-control signupInput phoneNum kakaoPhoneAuthNum" name="phoneNum3" maxlength="4">
						</div>
						<div class="col-3">
							<button type="button" class="btn btn-secondary sendAuthNumBtn" id="kakaoSendSmsBtn" style="width: 100%; font-size: 10px;">인증번호 전송</button>
						</div>
						<input type="text" id="kakaoAuthPhone" name="phone" class="phone" hidden>
						<p class="txtCls phoneTxt" id="kakaoAuthPhoneTxt" style="font-size: 8px; margin-bottom: 0; margin-top: 4px;"></p>
					</div>
					<div class="row auth memberRow"></div>
					<input type="text" id="hiddenKakaoNum" hidden>
					<input type="text" id="hiddenKakaoId" hidden>
					<input type="text" id="hiddenKakaoNickname" hidden>
				</div>
				<div class="modal-footer">
					<button type='button' style='background-color: #fff; border: none;' data-bs-target='#loginModal' data-bs-toggle='modal' onclick="invalidateAuthSession()">
						<i class='fas fa-arrow-left fa-lg' style='color: lightgrey;'></i>
					</button>
					<button type='button' id='checkKakaoInfoBtn' style='background-color: #fff; border: none;'>
						<i class='fas fa-check fa-lg' style='color: #18a8f1;'></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 회원가입, 로그인 스크립트 영역 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	<script>
	// 로그인 모달 오픈 함수
	function openLoginModal() {
		$("#loginModal").modal("show");
	}
	
	// 로그아웃 함수
    function logoutFunc() {
        <c:choose>
            <c:when test="${loginSession.naver_num != 0}"> // 네이버 로그인이면 네이버 로그아웃하고 로그아웃
                naverLogout();
                location.href = "${pageContext.request.contextPath}/member/logout.do";
            </c:when>
            <c:when test="${loginSession.kakao_num != 0}">
                kakaoLogout();
                location.href = "${pageContext.request.contextPath}/member/logout.do";
            </c:when>
            <c:when test="${loginSession.kakao_num != 0 and loginSession.naver_num != 0}">
                naverLogout();
                kakaoLogout();
                location.href = "${pageContext.request.contextPath}/member/logout.do";
            </c:when>
            <c:otherwise>
                location.href = "${pageContext.request.contextPath}/member/logout.do";
            </c:otherwise>
        </c:choose>
        document.cookie = "ch-session-75593=;Expires=Sat, 01 Jan 2022 00:00:10 GMT";
    }
	
    /* 포트번호 */
    /*let portNum = location.port;*/
    /* "http://localhost:"
    	"http://13.209.64.187:"  */
    /*let url = "http://localhost:";*/
    /* 호스트명 + 포트번호 */
    //let hostPort = "http://3.39.10.181:8080/";
    let hostPort = "http://" + location.host;

    function showLoadingDiv(){ // 로딩이 보여지는 함수
    		$(".loadingDiv").css({"display":"block"});
    		/*$(".main").css({"opacity":"0.2"});
    		$(".navber").css({"opacity":"0.2"});
    		$(".footer").css({"opacity":"0.2"});*/
    }
    			
    function hideLoadingDiv(){ // 로딩이 지워지는 함수
    		$(".loadingDiv").css({"display":"none"});
    		/*$(".main").css({"opacity":"1"});
    		$(".navber").css({"opacity":"1"});
    		$(".footer").css({"opacity":"1"});*/
    }

    /* 카카오 스크립트 */
 	Kakao.init('291e1386943e6e2a3a90ccb0c0cb9f27'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	Kakao.isInitialized();
	//카카오로그인
	function kakaoLogin() {
		
   		Kakao.Auth.loginForm({
     		success: function (res) {
     			console.log(res);
        		Kakao.API.request({
         			url: '/v2/user/me',
          			success: function (response) {
						showLoadingDiv();
        	  			console.log(response);
        	  			console.log(response.id);
        	  			console.log(response.properties.nickname);
        	  			console.log(response.kakao_account.email);
        	  			let kakao_num = response.id;
        	  			let nickname = response.properties.nickname;
        	  			//var link = document.location.href;
        	  			
        	  			$.ajax({
        	  				url: "${pageContext.request.contextPath}/member/snsLogin.do",
        	  				type: "post",
        	  				data: {"kakao_num" : response.id}
        	  			}).done(function(rs){
        	  				console.log(rs);
        	  				hideLoadingDiv();
        	  				if(rs == "kakaoLoginOk") {
        	  					alert("카카오 로그인에 성공하였습니다.");
        	  					console.log(link);
        	  					location.href = "${pageContext.request.contextPath}/";
        	  				} else if(rs == "kakaoAuthPhone") {
        	  					alert("등록된 카카오 정보를 찾을 수 없습니다. 회원 등록여부를 확인하기 위해 인증을 진행해주세요.");
        	  					$("#loginModal").modal("hide");
        	  					phoneState = false;
        	  					authState = false;
        	  					$("#kakaoAuthPhoneNum1").val("선택").prop("selected", true);
        	  					$("#kakaoAuthPhoneNum1").attr("disabled", false);
        	  					$("#kakaoAuthPhoneNum1").css("border-bottom", "1px solid lightgrey");
        	  					$(".kakaoPhoneAuthNum").val("");
        	  					$(".kakaoPhoneAuthNum").attr("disabled", false);
        	  					$(".kakaoPhoneAuthNum").css("border-bottom", "1px solid lightgrey");
        	  					$("#kakaoAuthPhoneTxt").html("");
        	  					$("#hiddenKakaoId").val("");
        	  					$("#hiddenKakaoNickname").val("");
        	  					$("#hiddenKakaoNum").val("");
        	  					$("#kakaoAuthModal").modal("show");
        	  					phoneDynamicCss("kakaoAuthModal");
        	  					authSendAction("kakaoAuthModal");
        	  					
        	  					if(response.kakao_account.email == undefined) { // 이메일 제공을 안했으면
        	  		  				$("#hiddenKakaoId").val("");
        	  		  			} else {
        	  		  				let email = response.kakao_account.email;
        	  		  				let userEmail = email.split("@");
        	  		  				console.log(userEmail[0]);
        	  		  				$("#hiddenKakaoId").val(userEmail[0]);
        	  		  			}
        	  					$("#hiddenKakaoNickname").val(nickname);
        	  					$("#hiddenKakaoNum").val(kakao_num);
        	  				}
        	  			}).fail(function(e){
        	  				console.log(e);
        	  			})
          			},
          			fail: function (error) {
           				console.log(error)
          			},
        		})
      		},
      		fail: function (error) {
        		console.log(error)
      		},
   		})
  	}
	
	// 카카오 정보 확인 checkKakaoInfoBtn 클릭 시
	$("#checkKakaoInfoBtn").on("click", function(){
		if(phoneState == false) {
			alert("휴대폰 인증을 진행해주세요.");
			return;
		} else if(authState == false) {
			alert("전송된 인증번호를 인증해주세요.");
			return;
		}
			
		let phone = $("#kakaoAuthPhone").val();
		showLoadingDiv();
		$.ajax({
			url: "${pageContext.request.contextPath}/member/checkMember.do",
			type: "post",
			data: {"phone" : phone}
		}).done(function(rs){
			console.log(rs);
			hideLoadingDiv();
			if(rs == "avaliable"){ // 입력한 핸드폰 번호와 일치하는 정보가 없으면 회원가입 진행
				alert("등록된 사용자 정보가 존재하지 않습니다. 회원가입을 진행해주세요.");
				snsJoinInit();
				$(".snsSignupPwRow").attr("hidden", false);
				$("#naverPwInfo").remove();
				$("#snsPhoneNum1").val($("#kakaoAuthPhoneNum1").val()).prop("selected", true);
				$("#snsPhoneNum1").attr("disabled", true);
				$("#snsPhoneNum2").val($("#kakaoAuthPhoneNum2").val());
				$("#snsPhoneNum3").val($("#kakaoAuthPhoneNum3").val());
				$(".snsPhoneNum").attr("disabled", true);
				$("#snsPhone").val(phone);
				$("#snsPhoneTxt").html("이미 인증이 완료되었습니다. 바로 회원가입을 진행해주세요.");
				$("#snsPhoneTxt").css("color", "#18a8f1");
				phoneState = true;
				authState = true;
				$("#kakaoAuthModal").modal("hide");
				$("#snsIdModal").modal("show");
				let kakaoNumInput = "<input type='text' id='kakao_num' name='kakao_num' value='" + $("#hiddenKakaoNum").val() + "' style='display : none;'>";
				$("#snsJoin").append(kakaoNumInput);
				$("#hiddenKakaoNum").val("");
				$("#snsSignupId").val($("#hiddenKakaoId").val());
				$("#snsSignupNickname").val($("#hiddenKakaoNickname").val());
				snsJoinCss();
				$("#snsSendSmsBtn").attr("disabled", true);
			} else if(rs == "unavaliable"){ // 입력한 핸드폰 번호와 일치하는 정보가 있으면 연동 진행
				if(confirm("입력한 정보와 동일한 정보가 존재합니다. 연동하시겠습니까?")){
					$("#naver_num").remove();
					$("#kakao_num").remove();
					let kakaoNumInput = "<input type='text' id='kakao_num' name='kakao_num' value='" + $("#hiddenKakaoNum").val() + "' style='display : none;'>";
					$("#kakaoLinked").append(kakaoNumInput);
					getLinkWithSns("kakaoAuthModal");
				}
			}
		}).fail(function(e){
			console.log(e);
		})
	})
	
	// 카카오 로그아웃
	function kakaoLogout() {
		//Kakao.init('291e1386943e6e2a3a90ccb0c0cb9f27'); //발급받은 키 중 javascript키를 사용해준다.
		//Kakao.isInitialized();
		
    	if (!Kakao.Auth.getAccessToken()) {
		    console.log('Not logged in.');
		    return;
	    }
	    Kakao.Auth.logout(function(response) {
    		//alert(response +' logout');
		    window.location.href='/'
	    });
	};
	
	// 카카오 연결끊기
	function secession() {
		Kakao.API.request({
	    	url: '/v1/user/unlink',
	    	success: function(response) {
	    		console.log(response);
	    		//callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
	    		window.location.href='/'
	    	},
	    	fail: function(error) {
	    		console.log('탈퇴 미완료')
	    		console.log(error);
	    	},
		});
	};
	
	
	/* 네이버 스크립트 */
	// 네이버 초기화
	var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "MJ4BRMl5k9pVssgoUg87", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
				callbackUrl: "http://13.209.89.225:8080/member/getNaverPopup.do", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
				isPopup: true,
				//callbackHandle: true,
				loginButton: {color: "green", type: 1, height: 40}
			}
		);	
	naverLogin.init();
	
	// 네이버 로그인 버튼 커스텀
	$(document).on("click", "#naverLogin", function(){
		var btnNaverLogin = document.getElementById("naverIdLogin").firstChild;
		btnNaverLogin.click();
	})

	// 네이버 팝업창에서 넘어온 데이터를 받는 함수
	function setChildValue(userProfile){
		showLoadingDiv();
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
		//var link = document.location.href;			
			 		
		$.ajax({
			url: "${pageContext.request.contextPath}/member/snsLogin.do",
			type: "post",
			data: {"naver_num" : naverNum, "phone" : userPhone}
		}).done(function(rs){
			console.log(rs);
			hideLoadingDiv();
			if(rs == "naverLoginOk"){
				alert("네이버 로그인에 성공하였습니다.");
				location.href = "${pageContext.request.contextPath}/";
			} else if(rs == "naverSignup") {
				alert("등록된 사용자 정보가 존재하지않습니다. 회원가입을 진행해주세요.");
				$("#loginModal").modal("hide");
				snsJoinInit();
				$("#snsIdModal").modal("show");
				$("#naverPwInfo").remove();
				$(".snsSignupPwRow").attr("hidden", true);
				let dynamicNaverPwInfo = "<div class='memberRow' id='naverPwInfo'>" +
									   "<div class='col-12' style='text-align: center;'>" +
									   "<span style='color: #18a8f1; font-size: 20px;'>네이버 회원가입은 비밀번호를 입력받지 않습니다. 계속 회원가입을 진행해주세요.</span>" +
									   "</div>" +
									   "</div>";
				$(".snsSignupPw_body").append(dynamicNaverPwInfo);
				pwState = true;
				pwCheckState = true;
				let naverNumInput = "<input type='text' id='naver_num' name='naver_num' value='" + naverNum + "' style='display : none;'>";
				$("#snsJoin").append(naverNumInput);
				$("#snsSignupId").val(userId[0]);
				$("#snsSignupNickname").val(userNickname);
				//idDynamicCss("snsIdModal");
				$("#snsPhoneNum1").val(phoneArr[0]).prop("selected", true);
				$("#snsPhoneNum1").attr("disabled", true);
				$("#snsPhoneNum2").val(phoneArr[1]);
				$("#snsPhoneNum3").val(phoneArr[2]);
				$(".snsPhoneNum").attr("disabled", true);
				snsJoinCss();
				authSendAction("snsPhoneModal");
				phoneState = false;
				authState = false;
			} else if(rs == "linkWithNaver") {
				if(confirm("이미 가입된 사용자 중 동일한 정보가 존재합니다. 연동하시겠습니까?")) {
					//$(".snsPhoneBtnCls").empty();
					$("#loginModal").modal("hide");
					$("#naver_num").remove();
					$("#kakao_num").remove();
					phoneState = false;
					authState = false;
					$("#naverAuthModal").modal("show");
					let naverNumInput = "<input type='text' id='naver_num' name='naver_num' value='" + naverNum + "' style='display : none;'>";
					$("#naverLinked").append(naverNumInput);
					$("#snsPhoneAuthNum1").val(phoneArr[0]).prop("selected", true);
					$("#snsPhoneAuthNum1").attr("disabled", true);
					$("#snsPhoneAuthNum2").val(phoneArr[1]);
					$("#snsPhoneAuthNum3").val(phoneArr[2]);
					$(".snsPhoneAuthNum").attr("disabled", true);
					authSendAction("snsPhoneModal");
				}
			}
		}).fail(function(e){
			console.log(e);
		}) 
	}
		
	// 네이버 로그아웃 
 	var testPopUp;
	// 네이버 로그아웃 팝업 띄우기
	function openPopUp() {
	    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=no,resizable=yes, width=1,height=1");
	}
	
	// 네이버 로그아웃 팝업 닫기
	function closePopUp(){
	 	testPopUp.close();
	}
	
	// 네이버 로그아웃 요청
	function naverLogout() {
	 	openPopUp();
	 	setTimeout(function() {
	 		closePopUp();
	 	}, 400);
	 }
	
	
	/* 세션 비우기 */
	function invalidateAuthSession() {
		showLoadingDiv();
 		//$("#phoneDiv").empty();
 		$(".auth").empty();
 			
		$.ajax({
			url: "${pageContext.request.contextPath}/member/invalidateSession.do"
		}).done(function(rs){
			hideLoadingDiv();
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
    	     	//$(".selectPhone").attr("disabled", false);
    	     	//$(".phoneNum").attr("disabled", false);
    	     	//$(".sendSmsBtn").attr("disabled", false);
    	     	let authResendBtn = "<button type='button' class='btn btn-dark' id='authResendBtn'>재전송</button>";
    	     	$(".authBtnCls").append(authResendBtn);
    	     	$("#authResendBtn").css("margin-left", "4px");
    	     	isRunning = false;
            }
        }, 1000);
           isRunning = true;
	}
	
	
	/* 로그인 스크립트 */
	// 로그인 버튼 클릭 시
	function loginFunc(){
		if(document.cookie != "") {
			$("#loginPw").val("");
		} else {
			$("#loginId").val("");
			$("#loginPw").val("");	
		}
	}
		
	// 일반 로그인 요청
	$("#loginBtn").on("click", function(){
		let loginForm = $("#loginForm").serialize();
		
		/*
		console.log(document.cookie);
		let regex = /rememberId=(.*)/g;
		console.log(regex.test(document.cookie));
		console.log(RegExp.$1);
		console.log(loginForm);
		let cookieRememberId = RegExp.$1;
		console.log(rememberId); */
		
		let cookieRememberId = getCookie("rememberId");
		console.log(cookieRememberId);
		
		//var link = document.location.href;
			
		if($("#loginId").val() == "" || $("#loginPw").val() == "") {
			alert("로그인 정보를 정확히 입력해주세요.");
			return;
		}
			
		console.log($('input[name=flexRadioDefault]:checked').val());
		let checked = $("input[name=flexRadioDefault]:checked").val();
		
		showLoadingDiv();	
		if(checked == 0) {
			$.ajax({
				url: "${pageContext.request.contextPath}/member/login.do",
				type: "post",
				data: loginForm
			}).done(function(rs){
				console.log(rs);
				hideLoadingDiv();
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
				hideLoadingDiv();
				console.log(rs);
				if(rs == "loginSuccess") {
					alert("관리자 로그인에 성공하였습니다.");
					location.href = "${pageContext.request.contextPath}/admin/getAdminUser.do";
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
		
	// 관리자 로그아웃
	$("#adminLogoutBtn").on("click", function(){
		location.href = "${pageContext.request.contextPath}/admin/adminLogout.do";
	})
		
		
	/* 전역변수 */
	// 회원가입, 인증, 연동을 위한 상태변수
	// true면 체크가 된 상태, false면 체크가 되지 않은 상태
	let idState = false; // 아이디 중복확인 체크
	let pwState = false; // 비밀번호 체크
	let pwCheckState = false; // 비밀번호 확인 체크
	let nickState = false; // 닉네임 중복확인 체크
	let phoneState = false; // 핸드폰 인증번호 전송 체크
	let authState = false; // 인증번호 확인 체크
	
	
	/* function */
	// sns 회원가입 초기화 함수
	function snsJoinInit() {
		$("#naver_num").remove();
		$("#kakao_num").remove();
		$("#snsSignupId").val("");
		$("#snsSignupPw").val("");
		$("#snsSignupPwCheck").val("");
		$("#snsSignupNickname").val("");
		$("#snsPhoneNum1").val("선택").prop("selected", true);
		$("#snsPhoneNum2").val("");
		$("#snsPhoneNum3").val("");
		$("#snsPhone").val("");
		idState = false;
		pwState = false;
		pwCheckState = false;
		nickState = false;
	}
		
	// sns 회원가입 css 함수
	function snsJoinCss() {
		idDynamicCss("snsIdModal");
		pwDynamicCss("snsPwModal");
		pwCheckFunc("snsPwModal");
		nicknameDynamicCss("snsNicknameModal");
		phoneDynamicCss("snsPhoneModal");
	}
		
	// 일반 회원가입 초기화 함수
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
		let regexId = RegExp(/^[a-z][a-zA-Z0-9]{5,14}$/g);
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
		let regexId = RegExp(/^[a-z][a-zA-Z0-9]{5,14}$/g);
		
		if(id !== "" && regexId.test(id)){
			showLoadingDiv();
			$.ajax({
				url: "${pageContext.request.contextPath}/member/checkMember.do",
				type: "post",
				data: {"id" : id}
			}).done(function(rs){
				hideLoadingDiv();
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
			
		if(tag.find("input[name=pw]").val() == ""){
			tag.find("input[name=pw]").css("border-bottom", "1px solid lightgrey");
			tag.find(".pwTxt").html("비밀번호는 영문,숫자,특수문자를 조합하여 10자리 이상으로 설정해주세요.");
			tag.find(".pwTxt").css("color", "grey");
			tag.find("input[name=pw]").focus(function(){
				tag.find("input[name=pw]").css("border-bottom", "2px solid grey");
			})	
			tag.find("input[name=pw]").blur(function(){
				tag.find("input[name=pw]").css("border-bottom", "1px solid lightgrey");
			})
			tag.find("input[name=pwCheck]").css("border-bottom", "1px solid lightgrey");
			tag.find(".pwCheckTxt").html("");
			tag.find(".pwCheckTxt").css("color", "grey");
		} 
			
		// 회원가입 pw 입력창에 focus 했을 때
		tag.find("input[name=pw]").focus(function(e){
			pwCheckDynamicCss(selectors);
		})
			
		// 회원가입 pw 입력창에 keyup 했을 때
		tag.find("input[name=pw]").keyup(function(e){
			pwState = false;
			tag.find(".pwTxt").html("");
			tag.find("input[name=pwCheck]").val("");
			let regexPw = RegExp(/^[a-zA-Z0-9!@#^&*%$/?~]{10,}$/g);
				
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
		console.log(tag);
	
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
		let regexNickname = RegExp(/^[a-zA-Zㄱ-힣0-9]{3,}$/g);
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
			let regexNickname = RegExp(/^[a-zA-Zㄱ-힣0-9]{3,}$/g);
				
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
		let regexNickname = RegExp(/^[a-zA-Zㄱ-힣0-9]{3,}$/g);
		
		if(nickname !== "" && regexNickname.test(nickname)){
			showLoadingDiv();
			$.ajax({
				url: "${pageContext.request.contextPath}/member/checkMember.do",
				type: "post",
				data: {"nickname" : nickname}
			}).done(function(rs){
				hideLoadingDiv();
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
	
	// 인증번호 전송 성공 함수
	function sendAuthSuccess(selectors) {
		let tag = $('#' + selectors);	
	
		tag.find(".auth").empty();
		let authNumInput = "<div class='col-4'>" + 
		"<input type='text' class='form-control signupInput authNum'>" +
		"</div>" +
		"<div class='col-2' style='position: relative;'>" +
		"<div id='timeDiv' style='position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%); color: grey; font-size: 14px;'></div>" +
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
	
	// 일반 회원가입, sns 회원가입 인증번호 전송 함수
	function getRequestAuthNum1(selectors) {
	//$("#sendSmsBtn").on("click", function(e){
		let tag = $('#' + selectors);	
	
		let regexPhone1 = /[0-9]{4}/g;
		let regexPhone2 = /[0-9]{4}/g;
		
		if(tag.find(".selectPhone").val() !== "선택" && tag.find(".phoneNum").val() !== "") {
			let phone = tag.find(".selectPhone").val() + "-" + tag.find("input[name=phoneNum2]").val() + "-" + tag.find("input[name=phoneNum3]").val();
			console.log(phone);
			tag.find("input[name=phone]").val(phone);
			
			showLoadingDiv();
			//console.log($("#phone").val());
			
			$.ajax({
				url: "${pageContext.request.contextPath}/member/sendSms.do",
				type: "post",
				data: {phone : phone}
			}).done(function(rs){
				hideLoadingDiv();
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
	
	// 인증번호 확인 함수
	function getAuthCheck(selectors) {
		showLoadingDiv();
		let tag = $('#' + selectors);
		console.log(tag);
	
		let authNum = tag.find(".authNum").val();
		let phone = tag.find(".phone").val();
		//let authNum = $("#authNum").val();
		//let phone = $("#phone").val();
		console.log(authNum);
		console.log(phone);
	
		$.ajax({
			url: "${pageContext.request.contextPath}/member/authCheck.do",
			type: "post",
			data: {authNum : authNum, phone : phone}
		}).done(function(rs){
			hideLoadingDiv();
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
	
	// 인증번호 재전송 함수
	function getResend(selectors) {
		showLoadingDiv();
		let tag = $('#' + selectors);
		
		let phone = tag.find("input[name=phone]").val();
		console.log(phone);
		
		$.ajax({
			url: "${pageContext.request.contextPath}/member/getRequestAuthNum.do",
			type: "post",
			data: {phone : phone}
		}).done(function(rs){
			hideLoadingDiv();
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
	
	// 아이디 찾기/비밀번호 찾기, sns연동, 카카오인증 인증번호 전송 함수
	function getRequestAuthNum2(selectors) {
		let tag = $('#' + selectors);
		let regexPhone1 = /[0-9]{4}/g;
		let regexPhone2 = /[0-9]{4}/g;
		
		if(tag.find(".selectPhone").val() !== "선택" && tag.find(".phoneNum").val() !== "") {
			let phone = tag.find(".selectPhone").val() + "-" + tag.find("input[name=phoneNum2]").val() + "-" + tag.find("input[name=phoneNum3]").val();
			console.log(phone);
			tag.find("input[name=phone]").val(phone);
			console.log(tag.find("input[name=phone]").val());
			
			showLoadingDiv();
			
			$.ajax({
				url: "${pageContext.request.contextPath}/member/getRequestAuthNum.do",
				type: "post",
				data: {phone : phone}
			}).done(function(rs){
				hideLoadingDiv();
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
	
	// 일반 회원가입 인증번호 전송 버튼 클릭 시
	$(".sendSmsBtn").on("click", function(e){
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
	
	// 인증번호 확인버튼 클릭 시
	$(document).on("click", ".authCheckBtn", function(e){
		let selector = $(e.target).parents(".modal").attr("id");
			
		getAuthCheck(selector);
	})
	
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
			showLoadingDiv();
			let signupForm = $("#signupForm").serialize();
			console.log(signupForm);
				
			$.ajax({
				url: "${pageContext.request.contextPath}/member/signup.do",
				type: "post",
				data: signupForm
			}).done(function(rs){
				hideLoadingDiv();
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
		// 아이디/비밀번호찾기, 네이버연동, 카카오 휴대폰 인증 인증번호 요청
		$(".sendAuthNumBtn").on("click", function(e){
			let selectors = $(e.target).parents(".modal").attr("id");
			console.log(selectors);
			getRequestAuthNum2(selectors);
		})
		
		// 네이버연동(snsLinkWithBtn) 클릭 시
		$(document).on("click", "#naverLinkWithBtn", function(){
			getLinkWithSns("naverAuthModal");
		})
		
		// 연동요청 함수(네이버, 카카오)
		function getLinkWithSns(selectors) {
			let tag = $('#' + selectors);
			
			let naverNum = $("#naver_num").val();
			let phone = tag.find("input[name=phone]").val();
			let kakaoNum = $("#kakao_num").val();
			//var link = document.location.href;
			
			if(phoneState == false) {
				alert("휴대폰 인증을 진행해주세요.");
				return;
			} else if(authState == false) {
				alert("전송된 인증번호를 인증해주세요.");
				return;
			} else {
				showLoadingDiv();
				$.ajax({
					url: "${pageContext.request.contextPath}/member/getLinkWithSns.do",
					type: "post",
					data: {"naver_num" : naverNum, "phone" : phone, "kakao_num" : kakaoNum}
				}).done(function(rs){
					hideLoadingDiv();
					console.log(rs);
					if(rs == "linkWithNaverOk") {
						alert("네이버와 연동되어 로그인에 성공하였습니다.");
						location.href = "${pageContext.request.contextPath}/";
					} else if(rs == "linkWithNaverFail") {
						alert("이미 다른 네이버 정보가 등록되어 있거나 정보가 일치하지 않아 연동에 실패하였습니다.");
					} else if(rs == "linkWithKakaoOk"){
						alert("카카오와 연동되어 로그인에 성공하였습니다.");
						location.href = "${pageContext.request.contextPath}/";
					} else if(rs == "linkWithKakaoFail"){
						alert("이미 다른 카카오 정보가 등록되어 있거나 정보가 일치하지 않아 연동에 실패하였습니다.");
					}
				}).fail(function(e){
					console.log(e);
				}) 
			}
		}
		
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
			//pwDynamicCss("snsPwModal");
			//pwCheckFunc("snsPwModal");
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
			//nicknameDynamicCss("snsNicknameModal");
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
		}
		
		// sns 회원가입 버튼 클릭 시
		$(document).on("click", "#snsJoinBtn", function(){
			let naver_num = $("#naver_num").val();
			let kakao_num = $("#kakao_num").val();
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
				showLoadingDiv();
				$.ajax({
					url: "${pageContext.request.contextPath}/member/signup.do",
					type: "post",
					data: {"naver_num" : naver_num, "kakao_num" : kakao_num, "id" : id, "pw" : pw, "nickname" : nickname, "phone" : phone}
				}).done(function(rs){
					hideLoadingDiv();
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
			
			document.getElementById("loginId").value = getCookie("rememberId");
			console.log(document.getElementById("loginId").value);
			
			if(getCookie("rememberId") != "") {
				/*console.log(RegExp.$1);
				document.getElementById("loginId").value = RegExp.$1;*/
				document.getElementById("loginId").value = getCookie("rememberId");
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
			console.log("7일 뒤", expiryDate);
			
			// 쿠기 생성 -> 이름
			let key = "rememberId";
			let value = $("#loginId").val();
			
			// 쿠키 설정법
			// document.cookie = "key=value;Expires=만료일"
			document.cookie = key + "=" + value + ";Expires=" + expiryDate;
		}
		
		// 쿠키값 가져오기
		function getCookie(cookieName) {
	        cookieName = cookieName + '=';
	        var cookieData = document.cookie;
	        var start = cookieData.indexOf(cookieName);
	        console.log(start);
	        var cookieValue = '';
	        if(start != -1){
	            start += cookieName.length;
	            var end = cookieData.indexOf(';', start);
	            if(end == -1)end = cookieData.length;
	            cookieValue = cookieData.substring(start, end);
	        }
	        return cookieValue;
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
			//$("#findPw2").remove();
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
				showLoadingDiv();
				$.ajax({
					url: "${pageContext.request.contextPath}/member/getExistMember.do",
					type: "post",
					data: {phone : $("#phone_find").val()}
				}).done(function(rs){
					hideLoadingDiv();
					console.log(rs);
					if(rs == "doesntExistMem") {
						doesntExist();
					} else if (rs == "existMem") {
						showLoadingDiv();
						$.ajax({
							url: "${pageContext.request.contextPath}/member/getMemberId.do",
							type: "post",
							data: {phone : $("#phone_find").val()}
						}).done(function(data){
							hideLoadingDiv();
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
				showLoadingDiv();
				$.ajax({
					url: "${pageContext.request.contextPath}/member/getExistMember.do",
					type: "post",
					data: {id : id_find, phone : phone_find}
				}).done(function(rs){
					hideLoadingDiv();
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
				showLoadingDiv();
				$.ajax({
					url:"${pageContext.request.contextPath}/member/modifyPw.do",
					type: "post",
					data : modifyPwForm
				}).done(function(rs){
					hideLoadingDiv();
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







