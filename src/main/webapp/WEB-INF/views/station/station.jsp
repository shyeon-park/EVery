<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전기차의 모든것 EVery</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
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
	margin: 0;
	padding: 0;
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
	z-index: 100;
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
	position: relative;
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
.loading {
	position: absolute;
	transform: translate(-50%, -50%);
	top: 50%;
	left: 50%;
}

#mainDIV {
	width: 82.6vw;
	padding: 0px;
	margin: auto;
	transition: 1s;
}

#mapDIV {
	padding: 0px;
}

#commentDIV {
	padding: 0px;
	border: 1px solid gray;
	box-shadow: 5px 0px 5px black;
	transition: 0.5s;
}

#map {
	width: 100%;
	height: 80vh;
	border: 1px solid gray;
}

#chrgtype {
	position: absolute;
	top: 0px;
	left: 0px;
}
</style>
<style>
.main-comment-container {
	
}

<<<<<<< HEAD
	textarea {
		resize: none;
		font-size:12px;
		height:100%;
		maxlength:200;
		width:100%;
		border:none;
		outline: none;
		overflow:hidden;
	}
	
	.main-comment-container{
		height:450px;
	}
	
	.paging-container{
		height:50px;
	}
	
	.cmt-container {
		background-color: white !important;
		border: 1px solid lightgrey;
		height:400px;
	}
	
	.cmt-showBox{
		height:330px;
		overflow:auto;
	}
	
	.comment-header {
		border-bottom: 1px solid rgb(214, 214, 214);
	}
	
	.comment-body {
		padding: 2px;
		border: 1px solid rgb(214, 214, 214);
	}
	
	.comment-input{
		height:50px;
		padding-bottom:5px;
	}
	
	.cmt-info {
		font-size: 12px;
		font-weight: bold;
	}
	
	.cmt-info1 {
		font-size: 11px;
		padding-top:2px;
	}
	
	.pagination{
		column-gap: 2px;
	}
	
	.page-item{
		color:black;
	}
	
=======
textarea {
	resize: none;
	font-size: 12px;
	height: 100%;
	maxlength: 200;
}

.main-comment-container {
	height: 450px;
}

.paging-container {
	height: 50px;
}

.cmt-container {
	background-color: white !important;
	border: 1px solid lightgrey;
	height: 400px;
}

.cmt-showBox {
	height: 330px;
	overflow: auto;
}

.comment-header {
	border-bottom: 1px solid rgb(214, 214, 214);
}

.comment-body {
	padding: 2px;
	border: 1px solid rgb(214, 214, 214);
}

.comment-input {
	height: 50px;
	padding-bottom: 5px;
}

.cmt-info {
	font-size: 12px;
	font-weight: bold;
}

.cmt-info1 {
	font-size: 11px;
}

.pagination {
	column-gap: 2px;
}

.page-item {
	color: black;
}
>>>>>>> 6f05c9a55880f35b35f85a3fa79d76eec4621f7e
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
		<div class="row" id="mainDIV">
			<div class="d-none" id="commentDIV">
				<div class="row">
					<div class="col-10" id="div-top-name"></div>
					<div class="col-1 bmark-container">
						<!-- 동적 즐찾 버튼 영역 -->
					</div>
					<div class="col-1">
						<button type="button" class="btn btn-primary col-12"
							id="btn_close">닫기</button>
					</div>
				</div>

				<div id="chargeList"></div>

				<div id="main-comment-container">
					<div class="cmt-container">
						<div class="cmt-inputBox">
							<form id="reviewForm" method="post">
								<div class="row comment-body m-1">
<<<<<<< HEAD
									<div class="col-10 comment-input" style="padding:0px;">
										<textarea class="review" id="review" name="review" style="resize: none; font-size:12px; height:100%;" placeholder="댓글을 입력해주세요. (80자 이내)"></textarea>
									</div>
									<div class="col-2 comment-input d-flex align-items-center justify-content-center" style="padding:0px; position:relative;">
										<button type="button" id="btnSave" style="position:absolute; bottom:0px; padding:0px; border:1px solid lightgrey; font-size: 11px; height:30px; width:100%;" class="btn btn-btnSave">등록</button>
=======
									<div class="col-10 comment-input" style="padding: 0px;">
										<textarea class="form-control" id="review" name="review"
											style="font-size: 12px; height: 100%;"
											placeholder="댓글을 입력해주세요."></textarea>
									</div>
									<div
										class="col-2 comment-input d-flex align-items-center justify-content-center"
										style="padding: 0px;">
										<button type="button" id="btnSave"
											style="padding: 0px; font-size: 11px; height: 30px; width: 50px;"
											class="btn btn-secondary">등록</button>
>>>>>>> 6f05c9a55880f35b35f85a3fa79d76eec4621f7e
									</div>
								</div>
								<input id="station" type="text" name="station" value="" hidden>
							</form>
						</div>

						<div class="cmt-showBox">
							<!-- 동적 댓글 영역 -->
						</div>
					</div>
					<div class="paging-container">
						<div class="cmt-paging">
							<!-- 동적 페이징 영역 -->
						</div>
					</div>
				</div>
			</div>
			<div class="col-12" id="mapDIV">
				<div id="map"></div>
			</div>
		</div>
		<div class="loading">
			<img src="/resources/images/loading.gif">
		</div>
		<div id="chrgtype">
			<!-- fastChrstnType -->
			<p>충전타입</p>
			<label><input type="checkbox" id="chrgtype_1"
				name="chrgtype_1" checked>전체</label> <label><input
				type="checkbox" id="chrgtype_2" name="chrgtype_2" disabled>DC콤보</label>
			<label><input type="checkbox" id="chrgtype_3"
				name="chrgtype_3" disabled>DC차데모</label> <label><input
				type="checkbox" id="chrgtype_4" name="chrgtype_4" disabled>AC3상</label>
			<label><input type="checkbox" id="chrgtype_5"
				name="chrgtype_5" disabled>완속</label>
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
			<div class="col-6">ⓒ EVery Inc. All Rights Reserved.</div>
			<div class="col-6 foot-bottom-right">
				<a href="">관리자</a>
			</div>
		</div>

	</div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9cb655cdc9169e09018321558636d28d"></script>

	<script>
	/* 댓글 스크립트 영역 */
	
	/* 페이지 로드되자마자 댓글도 ajax 로 로드 */
	/* $(document).ready(function(){
		getBookmark();
		getCommentList(1);
	}) */
	
	/* 댓글 등록 */ 
	$("#btnSave").on("click", function(){
		let id = "${loginSession.id}"
            console.log(id);
		// 로그인이 안되어있다면 alert을 띄워주게 만들어야함.
		if(id == null || id == ""){
			alert("로그인 후 댓글을 남겨주세요.");
			$("#review").val("");
			return;
		}
		
		if($("#review").val() == ""){
			alert("댓글을 입력하세요.");
			return;
		}
		
		let data = $("#reviewForm").serialize(); // 댓글 form 안의 데이터 직렬화
		console.log(data);
		$("#review").val("");
		
		$.ajax({
			url : "${pageContext.request.contextPath}/review/insert.do"
			, type : "post"
			, data : data				
		}).done(function(rs){
			if(rs == "success"){
				console.log("성공");
				getCommentList(1, $("#station").val());// 댓글 동록에 성공하면 댓글 리스트 리로드
			}else if(rs == "fail"){
				alert("댓글 등록에 실패했습니다."); // 댓글 등록에 실패하면 alert 
			}				
		}).fail(function(e){
			console.log(e);
		});
		
	});	
	
	/* 댓글 수정 */ 
	$(document).on("click",".btn-modifyCmt", function(e){ 
		$(e.target).parent().next().next().children().attr("readonly", false); //선택자를 따라서 댓글의 리드온리 속성이 풀린다.
		
		// 버튼의 상태가 수정한 후이기 때문에 완료와 취소로 바뀌게 된다.
		$(e.target).html("완료"); 
		$(e.target).parent().next().children().html("취소");
		
		// 바뀐 버튼을 다시 누르면 ajax를 통해 수정되게 만든다.
		$(".btn-modifyCmt").on("click", function(e){
			let seq_review = $(e.target).val();
			let review = $(e.target).parent().next().next().children().val();
			if(review == ""){
				alert("내용을 입력하세요.");	
				return;
			}
			
			console.log("댓글 번호 : " + seq_review + "수정 내용 : " + review);
			let data = {"seq_review" : seq_review, "review" : review}
			console.log(data);
			if($(e.target).html() == "완료"){
				$.ajax({
					type : "post"
					,url : "${pageContext.request.contextPath}/review/update.do"
					,data : data
				}).done(function(rs){
					if(rs == "success"){
						alert("댓글이 수정되었습니다.");
						getCommentList(1, $("#station").val());
					}else if(rs == "fail"){
						alert("수정에 실패하였습니다.");
					}
				}).fail(function(e){
					console.log(e);
				});
			}
		}); 
		
	});
	
	/* 댓글 삭제, 취소를 눌렀을 때 */
	$(document).on("click",".btn-deleteCmt", function(e){
		console.log($(e.target).val()); //의 값을 가지고 그 시퀀스만 삭제되게 요청한 후 
		//getCommentList(); // 를 시켜서 리로드 시킨다.
		
		if($(e.target).html() == "삭제"){
			let rs = confirm("삭제하시겠습니까?");
			if(!rs){
				return;
			}
			$.ajax({
				type : "get"
				,url : "${pageContext.request.contextPath}/review/delete.do?seq_review=" + $(e.target).val()
			}).done(function(rs){
				if(rs == "success"){
					getCommentList(1, $("#station").val());
				}else if(rs == "fail"){
					alert("삭제에 실패하였습니다.");
				}
			}).fail(function(e){
				console.log(e);
			});
		}else if($(e.target).html() == "취소"){
			//getCommentList();
			$(e.target).parent().next().children().attr("readonly", true);
			$(e.target).parent().prev().children().html("수정");
			$(e.target).html("삭제");
		}
	});
	
	/* 즐겨찾기 추가 삭제 */ 
	$(document).on("click", "#btn_navi_menu", function(e){
		let id = "${loginSession.id}"
            console.log(id);
		// 로그인이 안되어있다면 alert을 띄워주게 만들어야함.
		if(id == null || id == ""){
			alert("로그인 후 즐겨찾기를 추가해 주세요.");
			return;
		}
		
		$.ajax({
			type : "get"
			, url : "${pageContext.request.contextPath}/bookmark/setBookmark.do?station=" + $("#station").val()
		}).done(function(data){
			getBookmark($("#station").val());
		}).fail(function(e){
			console.log(e);
		})
	});
	
	
	/* 즐겨찾기 여부를 불러오는 함수 */ 
	function getBookmark(station){
		$.ajax({
			type : "get"
			, url : "${pageContext.request.contextPath}/bookmark/getBookmark.do?station=" + station
		}).done(function(data){
			$(".bmark-container").empty();
			if(data == "ok"){
				let mark = "<div><a id='btn_navi_menu'><img src='/resources/images/favorite -fill.png' width='24px'height='24px'></a></div>";
				$(".bmark-container").append(mark);
			}else if(data == "no"){
				let mark = "<div><a id='btn_navi_menu'><img src='/resources/images/favorite.png' width='24px'height='24px'></a></div>";
				$(".bmark-container").append(mark);
			}
		}).fail(function(e){
			console.log(e);
		})
	}
	
	/* ajax를 이용해 댓글을 불러오는 함수 */ 
	function getCommentList(currentPage, station){	
		console.log(currentPage);
		console.log(station);
		
		$.ajax({
			type : "get"
			, url : "${pageContext.request.contextPath}/review/getReview.do", 
			data: {"station" : station, "currentPage" : currentPage}, async: false
			
		}).done(function(data1){
			// 기존에 댓글이 있다면 모두 비워주는 작업 
			// 페이징도 다시 해주어야 하기때문에 비워줌
			$(".cmt-showBox").empty();
			$(".cmt-paging").empty();
			console.log(data1);
			console.log(station);
			if(data1.reviewList == ""){
				let commentNull = "<div style='text-align:center; height:100px; padding-top:40px;'><h5>댓글을 등록해보세요.</h5></div>";
				$(".cmt-showBox").append(commentNull);
			}else{
				for(let dto of data1.reviewList){
				
				let comment = "<div class='row comment-header m-1' style='height:outo;'>"
				 + "<div class='col-3 cmt-info'>"
				 +  dto.id
				 + "</div>"
	             + "<div class='col-7 plusBtn cmt-info1'>"
	             + dto.written_date
	             + "</div>"
	             + "<div class='col-12 contentDiv-cmt' style='height:80px; padding-bottom:5px;'>"
	             + "<textarea class='content-cmt' style='font-size:12px; height:100%; width:100%;' name='comment' readonly>"
	             + dto.review
	             + "</textarea>"
	             + "</div>"
	             + "</div>"
	             // 댓글 동적 요소 추가
	             $(".cmt-showBox").append(comment);
	             
	          	// 수정 삭제 버튼 영역	 
	          	if("${loginSession.id}" == dto.id){ // 작성자와 로그인 아이디가 같을 경우에만 수정삭제 버튼 추가 
	          		let btns = "<div class='col-1 d-flex justify-content-center' style='padding:0px;'>"
	          		 + "<button type='button' class='btn btn-modifyCmt' style='color:grey; padding:0px; font-size: 11px; font-weight: bold; width:30px;' value='" + dto.seq_review +"'>수정</button>"
	          		 + "</div>"
	          		 + "<div class='col-1 d-flex justify-content-center' style='padding:0px;'>"
	          		 + "<button type='button' class='btn btn-deleteCmt' style='color:grey; padding:0px; font-size: 11px; font-weight: bold; width:30px;' value='" + dto.seq_review + "'>삭제</button>"
	          		 + "</div>";
	          		 // 가장 최신에 만들어진 댓글 영역 옆에 버튼 추가
	          		$(".plusBtn:last").after(btns);
	          	}
			}
			
			let startNavi = data1.settingMap.startNavi;
			let endNavi = data1.settingMap.endNavi;
			console.log(data1.settingMap.station);
			let paging = "<nav class='col' aria-label='Page navigation example'>"
						+ "<ul class='pagination justify-content-center'>";
						
						if(data1.settingMap.needPrev == true){
							paging += "<li class='page-item'><a class='page-link' onclick='getCommentList(" + startNavi + "- 1, \"" + data1.settingMap.station + "\");'><<</a></li>";
						}
						
						for(var i= startNavi; i<= endNavi; i++){
							paging += "<li class='page-item'><a class='page-link' onclick='getCommentList(" + i + ", \"" + data1.settingMap.station + "\");'>" + i + "</a></li>";
						}
						
						if(data1.settingMap.needNext == true){
							paging += "<li class='page-item'><a class='page-link' onclick='getCommentList(" + endNavi + "+ 1, \"" + data1.settingMap.station + "\");'>>></a></li>";
						}
						
				paging += "</ul>" + "</nav>";		
						
				$(".cmt-paging").append(paging);
			}
			
						
		}).fail(function(e){
			console.log(e);
		});
	} 
	
	$(document).ready(function() {
	    $('.review').on('keyup', function() {
	        if($(this).val().length > 80) {
	            $(this).val($(this).val().substring(0, 80));
	        }
	    });
	});

	
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
	<script type="application/javascript">
		
			showLoading();
			
			let cmtDivStatus = false;
			let latitude = null;
			let longitude = null;
			let selectStations = null;

	
			function showLoading(){ // 로딩이 보여지는 함수
				$(".loading").css({"display":"block","z-index":"10000"});
				$("#mainDIV").css({"opacity":"0.2"});
				$('#commentDIV').css({"opacity":"0.2"});
			}
			
			function hideLoading(){ // 로딩이 지워지는 함수
				$(".loading").css({"display":"none","z-index":"-9999"});
				$("#mainDIV").css({"opacity":"1"});
				$('#commentDIV').css({"opacity":"1"});
			}
			
			
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			  mapOption = { 
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 6 // 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

			// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
			var mapTypeControl = new kakao.maps.MapTypeControl();

			// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
			// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			
			function getIP(json) {
			    var pubIP = json.ip;
// 			    console.log(pubIP); // 클라이언트 공인 IP
			    $.ajax({
			    	url:"/station/getIP",
			    	data:{"pubIP":pubIP},
			    	tryp:"json"
			    }).done(function(rs){
			    	latitude = rs.latitude; 
			    	longitude = rs.longitude;
			    	
// 			    	console.log(latitude+" : "+longitude)
					
					  // 이동할 위도 경도 위치를 생성합니다 
				    var moveLatLon = new kakao.maps.LatLng(latitude, longitude);
				    
				    // 지도 중심을 이동 시킵니다
				    map.setCenter(moveLatLon);
			    }).fail(function(e){
			    	console.log(e);
			    });
			}
			
			
			// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
			var markers = [];
			
			// 마커를 생성하고 지도위에 표시하는 함수입니다
			function addMarker(datas) {
				let temp = [];
				
				for(let i=0; i<datas.length;i++){
					temp.push({"chrstnNm":datas[i].chrstnNm,"fastChrstnType":datas[i].fastChrstnType});
					
					if(!((i+1)==datas.length)){
						if(datas[i].chrstnNm != datas[i+1].chrstnNm){
						
	 						if(datas[i].institutionNm == '한국전력공사'){
								var markerImageUrl = '/resources/images/markers/한국전력공사.png', 
							    markerImageSize = new kakao.maps.Size(40, 42), // 마커 이미지의 크기
							    markerImageOptions = { 
							        offset : new kakao.maps.Point(20, 42)// 마커 좌표에 일치시킬 이미지 안의 좌표
							    };
							}else{
								var markerImageUrl = 'https://t1.daumcdn.net/localimg/localimages/07/2012/img/marker_p.png', 
							    markerImageSize = new kakao.maps.Size(40, 42), // 마커 이미지의 크기
							    markerImageOptions = { 
							        offset : new kakao.maps.Point(20, 42)// 마커 좌표에 일치시킬 이미지 안의 좌표
							    };
							}
							// 마커 이미지를 생성한다
							var markerImage = new kakao.maps.MarkerImage(markerImageUrl, markerImageSize, markerImageOptions);
							
							// 마커를 생성합니다
						    var marker = new kakao.maps.Marker({
						        position: new kakao.maps.LatLng(datas[i].latitude, datas[i].longitude),
							    image : markerImage // 마커의 이미지
						    });
	
						    // 마커가 지도 위에 표시되도록 설정합니다
						    marker.setMap(map);					 
						    // 생성된 마커를 배열에 추가합니다
						    markers.push(marker);
						    
						    addMarkerEvent(temp, marker);
						   // console.log(temp);
						    
						    temp = [];
						}
					}
				}
			}
			
			function addMarkerEvent(temp, marker){
			    kakao.maps.event.addListener(marker, 'click', function() {
			    	console.log(temp);
			    	let seq = 1;
			    	$('#station').val(temp[0].chrstnNm);
			    	let station = temp[0].chrstnNm;
			    	showStation();
				    getCommentList(1,station);
					getBookmark(station);
			    	// 마커 클릭시 중앙좌표 추가해야됌
			    	
			    	
			    	$('#chargeList').html("");
			    	
			    	$('#div-top-name').html("<h5>"+temp[0].chrstnNm+"<h5>");
			    	
    				  for(let j=0;j<temp.length;j++){
    					  let tempDiv = "<div class='row'>"+
	    				  "<div class='col-1' id='seq_"+seq+"'>"+
	    				  seq +
	    				  "</div>";
    					  if(temp[j].fastChrstnType=="" || temp[j].fastChrstnType=="X"){
    						  tempDiv += "<div class='col-11' id='ChrstnType"+seq+"'>정보 없음</div>";
	    				  }else{
	    					  tempDiv += "<div class='col-11' id='ChrstnType"+seq+"'>"+
		    				  temp[j].fastChrstnType +
		    				  "</div>";
	    				  }
    					seq++;
    					tempDiv += "</div>";
    					$('#chargeList').append(tempDiv);
    				  }
				});
			}

			// 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
			function setMarkers(map) {
			    for (var i = 0; i < markers.length; i++) {
			        markers[i].setMap(map);
			    }            
			}

			// "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
			function showMarkers() {
			    setMarkers(map)    
			}

			// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
			function hideMarkers() {
			    setMarkers(null);
			    markers = [];
			}
			
			function relayout() {    
			    
			    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
			    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
			    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
			    map.relayout();
			}
			
			function showStation(){ // 선택한 충전소가 표시됩니다.
				if(cmtDivStatus == false){
					$('#commentDIV').attr('class','col-xl-3 col-12');
					$('#mapDIV').attr('class','col-xl-9 col-12');
					cmtDivStatus = true;
				}
				relayout();
// 				showLoading();
				// 여기에 탭 내용 구성
				
			}
			function hideStation(){ // 선택되어있던 충전소가 사라집니다.
				$('#commentDIV').attr('class','d-none');
				$('#mapDIV').attr('class','col-12');
				cmtDivStatus = false;
				relayout();
			}
			
				var request= new XMLHttpRequest;
				
				request.open("GET", "/resources/chargeData.xml",true);
				request.send();
				let data = {};
				let datas = [];
				request.onload = function () {
						if (request.status == 200) {
							var xml = request.responseXML;
							var items = xml.getElementsByTagName("item");
// 							console.log(items);
							for (let i = 0; i < items.length; i++) {
								
								for(let j = 0; j < items[i].childNodes.length ; j++){
									if(items[i].childNodes[j].nodeName == 'chrstnNm') data.chrstnNm = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'chrstnLcDesc') data.chrstnLcDesc = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'instlCtprvnNm') data.instlCtprvnNm = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'restde') data.restde = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'useOpenTime') data.useOpenTime = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'useCloseTime') data.useCloseTime = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'slowChrstnYn') data.slowChrstnYn = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'fastChrstnYn') data.fastChrstnYn = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'fastChrstnType') data.fastChrstnType = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'slowChrstnCo') data.slowChrstnCo = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'fastChrstnCo') data.fastChrstnCo = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'prkplceLevyYn') data.prkplceLevyYn = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'rdnmadr') data.rdnmadr = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'lnmadr') data.lnmadr = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'institutionNm') data.institutionNm = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'phoneNumber') data.phoneNumber = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'latitude') data.latitude = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'longitude') data.longitude = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'referenceDate') data.referenceDate = items[i].childNodes[j].innerHTML;
									else if(items[i].childNodes[j].nodeName == 'insttCode') data.insttCode = items[i].childNodes[j].innerHTML;
									else{}
									}
// 								console.log(data);
								
								datas.push(data);
								data = {};
								}
							addMarker(datas);
							console.log(datas);
								hideLoading();
						} else{
							alert(request.status);
						}
				}
				
				$('#btn_close').on('click',function(){ //충전소 상세정보에서 닫기 버튼을 클릭했을때
					hideStation();
					hideLoading();
				})
	
	</script>
	<script type="application/javascript"
		src="https://api.ipify.org?format=jsonp&callback=getIP"></script>

</body>
</html>