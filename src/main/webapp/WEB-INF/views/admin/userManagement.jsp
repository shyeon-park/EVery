<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVery 관리자</title>
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

/* 탭 css */
/* tap메뉴 css */
/* Style the tab */
.tab {
	/*float: left;*/
	/*border: 1px solid #ccc;*/
	/*background-color: #333;*/
	background-color: #ccc;
	/*width: 20%;
	height: 500px;*/
}

/* Style the buttons inside the tab */
.tab button {
	display: block;
	background-color: inherit;
	color: #333;
	padding: 22px 16px;
	width: 100%;
	border: none;
	outline: none;
	text-align: center;
	cursor: pointer;
	transition: 0.3s;
	font-size: 18px;
	/*height: 20%;*/
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: grey;
}

/* Create an active/current "tab button" class */
.tab button.active {
	background-color: #fff;
	border-top: 1px solid lightgrey;
	border-bottom: 1px solid lightgrey;
	border-left: 1px solid lightgrey;
}

/* Style the tab content */
.tabContent {
	/*float: left;*/
	padding: 80px;
	border: 1px solid #ccc;
	/*width: 80%;*/
	border-left: none;
	/*height: 500px;*/
}


/*
ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li {
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current {
	background: #ededed;
	color: #222;
}

.tab-content {
	display: none;
	padding: 15px 0;
	border-top: 3px solid #eee;
}

.tab-content.current {
	display: inherit;
}
*/


.page-link {
	color: #fff;
	background-color: #333;
}

.page-link:hover {
	color: grey;
	background-color: #ccc;
}
</style>
</head>
<body>
	<nav class="navber">
		<div class="row nav-items d-flex justify-content-center">
			<div class="col-2 col-xl-1 navi-logo">
				<a href="${pageContext.request.contextPath }/"><img
					src="/resources/images/a_logo.png" width="80px"></a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="">회원관리</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="">블랙리스트</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="${pageContext.request.contextPath}/admin/columManager.do">컬럼관리</a>
			</div>
			<div class="col-xl-1 d-none d-xl-block navi-menu">
				<a href="">고객지원</a>
			</div>
			<div class="col-xl-7 col-9 navi-menu"></div>
			<div class="col-xl-0 col-1 d-xl-none navi-menu">
				<a id="btn_navi_menu"><img src="/resources/images/menu.png"
					width="20px" height="24px"></a>
			</div>
		</div>
	</nav>
	<div class="row navi-onButtons">
		<div class="col-12">
			<a href="">회원관리</a>
		</div>
		<div class="col-12">
			<a href="">블랙리스트</a>
		</div>
		<div class="col-12">
			<a href="${pageContext.request.contextPath}/admin/columManager.do">컬럼관리</a>
		</div>
		<div class="col-12">
			<a href="">고객지원</a>
		</div>
	</div>

	<div class="main">
		<div class="row infoDiv"
				style="padding-top: 50px; padding-bottom: 50px; padding-left: 0px; paddinf-right: 0px;">
			<div class="col-12" style="text-align: center;">
				<h2>관리자 회원관리</h2>
			</div>
		</div>

		<!-- 세로 탭 -->
		<div class="row infoDiv">
			<div class="col-2 tab" style="padding: 0px;">
				<button class="tabLinks" onclick="openContent(event, 'usersInfo')" id="defaultOpen">회원관리</button>
				<button class="tabLinks" onclick="openContent(event, 'columnistManage')">컬럼니스트 관리</button>
			</div>

			<div id="usersInfo" class="col-10 tabContent">
				<div class="row">
					<div class="col-12">
						<h3 style="text-decoration: underline;">회원정보</h3>
					</div>
				</div>

				<div class="container">
					<div class="row" style="margin-top: 30px;">
						<table class="table table-hover">
							<thead>
								<tr style="text-align: center;">
									<th scope="col">체크</th>
									<th scope="col">번호</th>
									<th scope="col">아이디</th>
									<th scope="col">닉네임</th>
									<th scope="col">가입일</th>
								</tr>
							</thead>
							<tbody id="userList">
							</tbody>
						</table>
					</div>
					<div class="row">
						<div class="col-12" id="userNavi">
							
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<button type="button" id="deleteBtn" class="btn btn-dark">회원삭제</button>
						</div>
					</div>
				</div>
			</div>
			
			
			<!-- 컬럼니스트 관리 영역 -->
			<div id="columnistManage" class="col-10 tabContent">
				<div class="app_table">
				<h3>신청자 목록</h3>
					
					<div class="row mb-1">
			            <div class="col d-flex" style="border-bottom: 1px solid black;">
			                <div class = "text-center" style="width: 10%;"><input type="checkbox" name="" id="cbx_chkAll"></div>
			                <div class = "text-center" style="width: 45%;">ID</div>
			                <div class = "text-center" style="width: 45%;">닉네임</div>
			            </div>
				    </div>
					
					
					<div class="col" id="beforeAuthorization"  style="max-height: 250px; overflow-y: scroll; overflow-x: hidden;">
						
					</div>
					<div class="row">
			            <div class="col d-flex justify-content-end">
			                <div>
			                <button type='button' class='btn btn-success' id='approval'>승인</button>
			                </div>
			                 <div>
				            <button type='button' class='btn btn-danger' id='reject'>거부</button>
				             </div>
			            </div>
				    </div>
				</div>
				
				<h3>칼럼리스트 목록</h3>
				<div class="columListTable">
			        <div class="row">
			            <div class="col d-flex" style="border-bottom: 1px solid black;">
			                <div class = "text-center" style="width: 10%;"><input type="checkbox" id="cbx_roa"></div>
			                <div class = "text-center" style="width: 45%;">ID</div>
			                <div class = "text-center" style="width: 45%;">닉네임</div>
			            </div>
				    </div>
				    <div id="afterAuthorization"  style="max-height: 250px; overflow-y: scroll; overflow-x: hidden;">
				        
			        </div>
			        
			        <div class="row">
			            <div class="col d-flex justify-content-end">
			                <div>
			                <button type='button' class='btn btn-success' id='releaseOfAuthority'>권한해제</button>
			                </div>
			            </div>
				    </div>
			    </div>
			</div>
		</div>
			
		</div>	
		<!-- 가로 탭 -->
		<!-- 
		<div class="container"  style="padding-bottom: 50px;">
			<ul class="tabs row">
				<li class="tab-link current col-6" data-tab="tab-1">회원관리</li>
				<li class="tab-link col-6" data-tab="tab-2">컬럼니스트 관리</li>
			</ul>

			<div id="tab-1" class="tab-content current row" style="border-left: 3px solid #fff; border-right: 3px solid #fff; border-bottom: 3px solid #fff;">
					
				<div class="row" style="margin-top: 30px;">
					<table class="table table-hover" style="width: 90%; margin: auto;">
						<thead>
							<tr style="text-align: center;">
								<th scope="col">체크</th>
								<th scope="col">번호</th>
								<th scope="col">아이디</th>
								<th scope="col">닉네임</th>
								<th scope="col">가입일</th>
							</tr>
						</thead>
						<tbody id="userList">
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-12" id="userNavi">
						
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<button type="button" id="deleteBtn" class="btn btn-dark">회원삭제</button>
					</div>
				</div>
				
			</div>
			<div id="tab-2" class="tab-content row">ㅎㅇ</div>
		</div>  -->
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
			<div class="col">ⓒ EVery Inc. All Rights Reserved.</div>
		</div>

	</div>

	<script>
	/* 회원관리 영역 */
	$(document).ready(function(){
		getMemberList(1);	
	})
	
	// 마이페이지 content 바꾸는 함수
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
	
	// 시퀀스
	let seq = 1;
	
	// 모든 유저 불러오기
	function getMemberList(currentPage) {
		$.ajax({
			url: "${pageContext.request.contextPath}/member/selectAllUser.do?currentPage=" + currentPage,
			type: "get",
			dataType: "json"
		}).done(function(rs){
			console.log(rs);
			let userList = rs.list;
			console.log(userList);
			$("#userList").empty();
			$("#userNavi").empty();
			if(currentPage == 1) {
				seq = 1;
			}
			for(list of userList) {
				let userInfo = "<tr style='text-align: center'>" + "<td><input type='checkbox' class='form-check-input' name='checkUser' value='" + list.id + "'></td>" +
							   "<td>" + seq + "</td>" +
							   "<td>" + list.id + "</td>" +
							   "<td>" + list.nickname + "</td>" +
							   "<td>" + list.signup_date + "</td></tr>";
				$("#userList").append(userInfo);
				seq += 1;
			}
			
			let startNavi = rs.startNavi
			let endNavi = rs.endNavi
			let pagingNavi = "<nav aria-label='Page navigation example'>" + 
				  			 "<ul class='pagination d-flex justify-content-center m-0'>";
			if(rs.needPrev) pagingNavi +="<li class='page-item'><a class='page-link' onclick='getMemberList(" + startNavi + "-1);'><<</a></li>";
			for(let i = startNavi; i<=endNavi; i++){
				pagingNavi += "<li class='page-item'><a class='page-link' onclick='getMemberList(" + i + ");'>" + i + "</a></li>";
			}
			if(rs.needNext) pagingNavi += "<li class='page-item'><a class='page-link' onclick='getMemberList(" +endNavi+ "+1);'>>></a></li>";
				
			$("#userNavi").append(pagingNavi);
			
		}).fail(function(e){
			console.log(e);
		})
		
	}
	
	// 삭제버튼 클릭 시
	$("#deleteBtn").on("click", function(){
		let users = [];
		
		$("input[name=checkUser]:checked").each(function(){
			users.push(this.value);
		})
		
		console.log(users);
		
		$.ajax({
			url: "${pageContext.request.contextPath}/member/deleteMember.do",
			type: "post",
			data: {"users" : users}
		}).done(function(rs){
			console.log(rs);
			if(rs == "deleteSuccess") {
				alert("회원삭제가 완료되었습니다.");
				getMemberList(1);
			} else if(rs == "fail") {
				alert("회원삭제에 실패하였습니다. 다시 시도해주세요.");
				getMemberList(1);
			}
		}).fail(function(e){
			console.log(e);
		})
	})
	
		/*
		$(document).ready(function() {
			$('ul.tabs li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current');
			})
		})*/

		
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
	
	
		/* 컬럼니스트 관리 영역 */
		
		ws = new WebSocket("ws://13.209.64.187:8080/column");

	$('#approval').on("click",function(e){
	 	 var approvaList = new Array(); // 배열 선언
	 	 $('input:checkbox[name=columId]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
	 		approvaList.push(this.value);
	 	 });
	 	 if(approvaList.length != 0){
	 		let msg = { category: "Approval", list: approvaList };
	 		let msgToJson = JSON.stringify(msg);
	 		ws.send(msgToJson);
		 }else{
	 		 alert("승인할 사람을 선택하세요.")
	 	 }
	})
	

	
	
	
		$('#reject').on("click",function(e){
	 	
	 	 var rejectList = new Array(); // 배열 선언
	 	 $('input:checkbox[name=columId]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
	 		rejectList.push(this.value);
	 	 });
	 	 if(rejectList.length != 0){
	 		let msg = { category: "Reject", list: rejectList };
	 		let msgToJson = JSON.stringify(msg);
	 		ws.send(msgToJson);
	 	 }else{
	 		 alert("거절할 사람을 선택하세요.")
	 	 }
	})
	
	$('#releaseOfAuthority').on("click",function(e){
	 	 var releaseOfAuthorityList = new Array(); // 배열 선언
	 	 $('input:checkbox[name=getApprovalId]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
	 		releaseOfAuthorityList.push(this.value);
	 	 });
	 	 if(releaseOfAuthorityList.length != 0){
	 		let msg = { category: "releaseOfAuthority", list: releaseOfAuthorityList };
	 		let msgToJson = JSON.stringify(msg);
	 		ws.send(msgToJson);
		 }else{
	 		 alert("권한해제 할 사람을 선택하세요.")
	 	 }
	})
	
	document.addEventListener('click',function(e){
        if(e.target.id == 'cbx_chkAll'){
        if ($("#cbx_chkAll").prop("checked"))  $("input[name=columId]").prop("checked", true)
        else  $("input[name=columId]").prop("checked", false)
    }});
	
	document.addEventListener('click',function(e){
        if(e.target.id == 'cbx_roa'){
        if ($("#cbx_roa").prop("checked"))  $("input[name=getApprovalId]").prop("checked", true)
        else  $("input[name=getApprovalId]").prop("checked", false)
    }});
	
 
	
	 //메세지수신
	 ws.onmessage = function(e) {
	    		let msgObj = JSON.parse(e.data);
	    		//console.log(msgObj);
	    			notCheckedcount = msgObj.notCheckedcount
	    			//console.log("클라이언트가 확인 안한 메세지 개수는 "+ notCheckedcount);
	    			$("#bell_text").empty();
	    			//$(".modal-footer").empty();
	    			$("#bell_text").append(notCheckedcount);
	    			
	 			if(msgObj.getColumAppList != null){
	 				getColumAppList = msgObj.getColumAppList;
	 				
	 				$("#beforeAuthorization").empty();
	 				for(newList of getColumAppList){
	 				    let beforeAuthorization  ="<div class='row'>" 
	 								+"<div class='col d-flex' style='border-bottom: 1px solid gray;'>"
	 			       			 	+"<div class = 'text-center' style='width: 10%;'><input type='checkbox' name = 'columId' value='"+newList.id+"'></div>"
	 			          			+"<div class = 'text-center' style='width: 45%;'>"+newList.id+"</div>"
	 			            		+"<div class = 'text-center' style='width: 45%;'>"+newList.nickname+"</div>"
	 			          			+"</div>"
					$("#beforeAuthorization").append(beforeAuthorization);
					}	
	 			}
	 			
	 			if(msgObj.approvalColumnList != null){
	 				approvalColumnList = msgObj.approvalColumnList;
	 				//console.log(approvalColumnList)
	 				$("#afterAuthorization").empty();
	 				for(getApproval of approvalColumnList){
	 				    let afterAuthorization  ="<div class='row'>" 
	 								+"<div class='col d-flex' style='border-bottom: 1px solid gray;'>"
	 			       			 	+"<div class = 'text-center' style='width: 10%;'><input type='checkbox' name = 'getApprovalId' value='"+getApproval.id+"'></div>"
	 			          			+"<div class = 'text-center' style='width: 45%;'>"+getApproval.id+"</div>"
	 			            		+"<div class = 'text-center' style='width: 45%;'>"+getApproval.nickname+"</div>"
	 			          			+"</div>"
					$("#afterAuthorization").append(afterAuthorization);
					}	
	 			}
	}
	 
	
	</script>
</body>
</html>