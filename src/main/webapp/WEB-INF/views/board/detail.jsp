<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
	
	
	 <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">
  
<title>상세보기</title>
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


.container{
width: 100%;
height: 100%;
}

#content-box{
box-sizing: border-box;
width: 100%;
}
#content{
width: 100%;
height: 100%;
}
#title{
background: white;
text-align: center;
font-weight: bold;
border: none;
font-size: 1.5rem
}

#written_date{
background: white;
text-align: center;
border: none;
font-size: 0.8rem
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
		<form id="boardForm" action="${pageContext.request.contextPath}/board/modifyProc.do?seq_column=${seq_column}" method="post" enctype="multipart/form-data">
		<div class="container">
		
			<div class="row">
				<div class="col d-flex justify-content-center">
					<input type="text" class="form-control" id="title" name="title" value="" readonly>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
			  		<input type="text" class="form-control" id="written_date" name="written_date" value="" readonly>
				</div>
			</div>
		
			<div class="row">
				<div class="col" id="content-box">
			  		<div class="col-12" id="content" name="content"></div>
				</div>
			</div>
			<div class="row">
				<div class="col">
			  		<input type="text" class="form-control" name="id" value="" hidden>			  		
				</div>
			</div> 
			<div class="row">
				<div class="col d-flex justify-content-end" id="detail-footer">
					<button type="button" class="btn btn-secondary" id="cancelBtn">뒤로가기</button>
					
				</div>
			</div>
		</div>
		

	</form>
    	
	<script>


	
	
	$.ajax({
		type: "post", //요청 메소드 방식
		url:"${pageContext.request.contextPath}/board/toDetail.do?seq_column=${seq_column}",
		//dataType:"json", //서버가 요청 URL을 통해서 응답하는 내용의 타입
		success : function(data){
		console.log(data);
			//console.log(data.content);
			 let date = data.written_date.replace(/,/,"")
						let written_date = date.split(" ");
						date = written_date[2]+"년 "+written_date[0]+" "+written_date[1]+"일"
			content = data.content
			$("#title").val(data.title)
			$("#written_date").val(date)
			//$("#writer_nickname").val(data.writer_nickname)
			$("#content").append(content);
					
			if( "${loginSession.id}" == data.id){
				let newBtn = "<button type='submit' class='btn btn-success' id='submitBtn'>수정</button>"
							+"<button type='button' class='btn btn-primary' id='deleteBtn'>삭제</button>"
				$('#detail-footer').append(newBtn)
			}
						

		},
		error : function(e){
			console.log(e);
		}
	});
	
		// 로그아웃 요청
		$("#logoutBtn").on("click", function(){
			location.href = "${pageContext.request.contextPath}/member/logout.do";
		});
		// 뒤로가기 
		$("#cancelBtn").on("click", function(){
			location.href = "${pageContext.request.contextPath}/board/toBoard.do";
		});
		// 삭제 페이지 요청
		document.addEventListener('click',function(e){
			console.log(e.target.id)
	        if(e.target.id == 'deleteBtn'){
	        	location.href = "${pageContext.request.contextPath}/board/delete.do?seq_column=${seq_column}";
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

	
</body>
</html>