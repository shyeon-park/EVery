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
  
    
<title>칼럼 수정</title>

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


<style type="text/css">

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
/*
#title{
background: white;
text-align: center;
font-weight: bold;
border: none;
font-size: 1.5rem
}
*/

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
					<a onclick="logoutFunc();">로그아웃</a>
				</div>
			</c:when>
		</c:choose>
	</div>
	<div class="main">
<form id="boardForm" action="${pageContext.request.contextPath}/board/modify.do" method="post" enctype="multipart/form-data">
		<div class="container">
			<div class="row">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-danger" id="logoutBtn">로그아웃</button>
				</div>
			</div>
			<div class="row">
				<div class="col d-flex justify-content-center">
					<h2>수정페이지</h2>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="title" class="form-label">제목</label>
			  		<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요." value="${dto.title}">
			  		
			  	
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="file" class="form-label">프로필 사진첨부</label>
			  		<input type="file" class="form-control" id="files" name="files">
			  		<!-- <input type="file" class="form-control" id="files" name="files" multiple>   -->
			  		<!-- multiple 여러 사진을 업로드할 수 있게 해준다. -->
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="content" class="form-label">내용</label>
			  		<textarea class="form-control" id="content" name="content" rows="10">
			  		${dto.content}
			  		</textarea>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="text" class="form-control" name="nickname" value="${loginSession.nickname}" hidden>
			  		<input type="text" class="form-control" name="id" value="${loginSession.id}" hidden>
			  		<input type="hidden" id = "seq_column" name = "seq_column" value="${dto.seq_column}">  		
				</div>
			</div> 
			<div class="row">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-secondary" id="cancelBtn">취소</button>
					<button type="submit" class="btn btn-primary" id="submitBtn">수정완료</button>
				</div>
			</div>
		</div>
		</form>
	<script>
	
	
		// 로그아웃 요청
		$("#logoutBtn").on("click", function(){
			location.href = "${pageContext.request.contextPath}/member/logout.do";
		});
		
		// 뒤로가기 
		$("#cancelBtn").on("click", function(){
			location.href = "${pageContext.request.contextPath}/board/toBoard.do";
		});
		
		
		
		$(document).ready(function(e) {
			//console.log(e.target)
			var toolbar = [
			    // 글꼴 설정
			    ['fontname', ['fontname']],
			    // 글자 크기 설정
			    ['fontsize', ['fontsize']],
			    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    // 글자색
			    ['color', ['forecolor','color']],
			    // 표만들기
			    ['table', ['table']],
			    // 글머리 기호, 번호매기기, 문단정렬
			    ['para', ['ul', 'ol', 'paragraph']],
			    // 줄간격
			    ['height', ['height']],
			   
			    // 그림첨부, 링크만들기, 동영상첨부
			    ['insert',['picture','link','video']],
			    // 코드보기, 확대해서보기, 도움말
			    ['view', ['codeview','fullscreen', 'help']]
			  ];

		var setting = {
	            height : 300,
	            minHeight : null,
	            maxHeight : null,
	            focus : true,
	            lang : 'ko-KR',
	            toolbar : toolbar,
	            callbacks : { //여기 부분이 이미지를 첨부하는 부분
	            onImageUpload : function(files, editor,
	            welEditable) {
	            for (var i = files.length - 1; i >= 0; i--) {
	            uploadSummernoteImageFile(files[i],this);
	            		}
	            	}
	            }
	         };
		
	        $('#content').summernote(setting);
	        });
		
		 function uploadSummernoteImageFile(file, el) {
				data = new FormData();
				data.append("file", file);
				$.ajax({
					data : data,
					type : "POST",
					url : "/file/uploadSummernoteImageFile",
					contentType : false,
					enctype : 'multipart/form-data',
					processData : false,
					success : function(data) {
						//console.log(data);
						
						let img = $("<img>").attr({"src": data.url, "width" : "100%", "name" : data.url});
			            // data.sys_path 에는 서버에 업로드된 이미지 경로값
			            // data.ori_name 에는 원본 이미지 이름
			            // img 태그 요소를 만들어준 후 아래 코드에서 insertImage 가 아닌 insertNode 로 넣어 줌 
			            $("#content").summernote('insertNode', img[0]);
			            
						//$(el).summernote('editor.insertImage', data.url);
					}
				});
			}
		 
			$("#cancelBtn").on("click", function(e){
				location.href = "${pageContext.request.contextPath}/board/cancle"
			});
			
			
			
			//뒤로가기 감지코드
			history.pushState(null, null, '');
			window.onpopstate = function(event) {
				history.back();
				location.href = "${pageContext.request.contextPath}/board/cancle";
			};
			/*
			window.addEventListener('beforeunload', (event) => { 
				// 명세에 따라 preventDefault는 호출해야하며, 기본 동작을 방지합니다. 
				let i = event.preventDefault(
						location.href = "${pageContext.request.contextPath}/board/cancle"
						); // 대표적으로 Chrome에서는 returnValue 설정이 필요합니다. 
				console.log(i);
				event.returnValue = ''; });
			*/
			
			
			
			function noEvent() { // 새로 고침 방지
	            if (event.keyCode == 116) {
	                alert("새로고침을 할 수 없습니다.");
	                event.keyCode = 2;
	                return false;
	            } else if (event.ctrlKey && (event.keyCode == 78 || event.keyCode == 82)) {
	                return false;
	            }
	        }
			document.onkeydown = noEvent;
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
		
		<!-- 로그아웃 스크립트 영역 -->
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
	    }
	</script>
</body>
</html>