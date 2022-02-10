<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	

<title>게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
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
height: 100%}
/*
a>img {
width: 100%;
height: 220px;
border-radius: 3;

}
*/
.cardContainer{
 margin-bottom: 15px;
 padding-left: 20px;
 padding-right: 20px;

}
.atag{
width: 100%;
height: 100%;
}

.titleImg{
 width: 300px;
 height: 250px;
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
.inputBox{
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
			<div class="container">

		<div class="row">
			<div class="col d-flex justify-content-center">
				<h4 class="mb-5">칼럼</h4>
			</div>
		</div>
		<div class="row">
        <div class="col">
            <div class="searchBox w-100">
            <select class="selectBox" id="checkOption" name ="checkOption">
               
                <option value="title"  <c:if test="${checkOption eq 'title'}">selected</c:if>>제목</option>
                <option value="nickname"  <c:if test="${checkOption eq 'nickname'}">selected</c:if>>작성자</option>
            </select>
            <input type="text" class="inputBox" id="keyword" name="keyword" placeholder="검색어를 입력해주세요" value="${keyword}">
            <button class="searchBtn" id="searchBtn"><i class="bi bi-search"></i></button>
            </div>
            
        </div>
    </div>
 
	    <div class="row list">
	    </div>
		<div class="row">
			<div class="col-12 d-flex justify-content-between" id ="pagingNavi"></div>
			
		</div>
	</div>
		<script>
		
		let checkOption = $("#checkOption").val();
		let keyword = $("#keyword").val();
		
		console.log(checkOption + " : " + keyword)
		
		//검색버튼 클릭
		
		$("#searchBtn").on("click",function(){
			if($("#keyword").val() != ""){
				checkOption = $("#checkOption").val();
				keyword = $("#keyword").val();
				getBoardList(checkOption,keyword,1);
			}
		});
		
		getBoardList("${checkOption}","${keyword}",1);
		
		//리스트 출력
		function getBoardList(checkOption,keyword,currentPage){
			let url = "${pageContext.request.contextPath}/board/search.do?checkOption="+checkOption+"&keyword="+keyword+"&currentPage="+currentPage
			console.log(url)
			$.ajax({
				type: "post", //요청 메소드 방식
				url:url,
				success : function(res){
					console.log(res);
					columnList = res.columnList;
					$(".list").empty();
					$("#pagingNavi").empty();
					let data = res.list
					if(data == null || data =="" ){
						let list = "<span class='m-3'>검색결과가 존재하지 않습니다.</span> <a class='m-3' href ='${pageContext.request.contextPath }/board/toBoard.do'>전체 목록으로 돌아가기</a>"
						$("#nevi").empty();
						//let writeBtn = "<button type='button' class='btn btn-success' id='writeBtn'>글쓰기</button>";
						$(".list").append(list)
						//$("#pagingNavi").append(writeBtn)
						
					}else{
						for(var con of data){
							
							//console.log(con.profile == null)
							let content = con.content  //상세게시글 내용 변수에 담는다
							let imgRemove = /<IMG(.*?)>/gi; // 이미지  지우는 regx 
							content = content.replace(imgRemove, ''); // 이미지를 지움
							content = content.replace(/(<([^>]+)>)/ig,''); //그 외 태그 제거
							subtitle = content.substring(0,30)
							 let date = con.written_date.replace(/,/,"")
							 let written_date = date.split(" ");
							 date = written_date[2]+"년 "+written_date[0]+" "+written_date[1]+"일"
							let list = "<div class='col-12 col-md-6 col-lg-4 cardContainer d-flex justify-content-center'>"
			                			+"<div>"
										+"<div class='titleImg'>"
				                		+"<a href='${pageContext.request.contextPath}/board/detail.do?seq_column="+con.seq_column+"' class='atag'>"
				                				
				                				if(con.profile == null || con.profile==""){
				                			    list +="<img src="
				                			    	+"'${pageContext.request.contextPath}/resources/images/colum/imagedoesnot exist.png'"
				                			    	+"class='card-img-top' alt='...'>"
				                			    }else{
				                			    console.log("'${pageContext.request.contextPath}/upload/"+con.sys_name+"'");	
				                			    list +="<img src="
				                			    	+"'${pageContext.request.contextPath}/upload/"+con.sys_name+"'"
				                			       	+"class='card-img-top' alt='...'>"	
												}
												list += "</a></div>"
											
				                   				+"<div class='colum-body'>"
					                   			+"<p class='colum-title'>"
				                   				+"<a href='${pageContext.request.contextPath}/board/detail.do?seq_column="+con.seq_column+"'>"
					                     		+con.title
					                     		+"</a></p>"
					                     		+"<p class='colum-text'>"+date+"</p>"
				                      			+"<p class='colum-text'>"+subtitle+"...</p>"
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
							if(res.needPrev) pagingNavi +="<li class='page-item'><a class='page-link' onclick='getBoardList(\"" + checkOption + "\",\"" + keyword + "\"," + startNavi + "-1);'>Prev</a></li>"
							for(let i = startNavi; i<=endNavi; i++){
								pagingNavi += "<li class='page-item'><a class='page-link' onclick='getBoardList(\"" + checkOption + "\",\"" + keyword + "\"," + i + ");'>" + i + "</a></li>"
							}
							if(res.needNext) pagingNavi += "<li class='page-item'><a class='page-link' onclick='getBoardList(\"" + checkOption + "\",\"" + keyword + "\"," +endNavi+ "+1);'>Next</a></li>"
							
							
							pagingNavi +="</ul>"
							pagingNavi += "</nav>"
								for(col_id of columnList){
									if("${loginSession.id}" == col_id.id){
										pagingNavi += "<button type='button' class='btn btn-success' id='writeBtn'>글쓰기</button>";
									}
								}
							
							$("#pagingNavi").append(pagingNavi)
							
							//prev start +1
							//next end +1
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
			console.log(e.target.id)
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







