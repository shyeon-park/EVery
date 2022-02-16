<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전기차의 모든것 EVery</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css"><!-- 부트스트랩 icon -->
<script src="https://kit.fontawesome.com/5d169e4fe1.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/websocket.js"></script> <!-- 웹소켓 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
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


/* 알람 css  */
 	#bell{
      position: relative;
      cursor: pointer;
    }
    .fa-bell{
      position: absolute;
      font-size: 38px;
    }
    #bell_text{
      position: relative;
      color: white;
      font-weight: 700;
      font-size: large;
      width: 27px;
      left: -15px;
      top : -10px;
      display: inline-block;
      background-color: red;
      border-radius: 100%;
      text-align: center;
    }

/*메인페이지 리스트 css */
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

/*캐러셀 버튼*/
.carouselPrevIcon{
    position: absolute;
    left: 0px;
    font-size: 2rem
}
.carouselNextIcon{
    position: absolute;
    right: 0px;
    font-size: 2rem
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
				<a href="${pageContext.request.contextPath }/admin/toClientSupport.do">고객지원</a>
			</div>
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
				<div class="col-xl-5 col-8 navi-menu"></div>
				</c:when>
				<c:when test="${!empty loginSession}">
					<div class="col-xl-3 col-6 navi-menu"></div>
				</c:when>
			</c:choose>
			
			<c:choose>
			  	<c:when test="${!empty loginSession}">
					<div class="col-xl-1 d-none d-xl-block navi-menu" id = "bell">
						<!--  <div id = "bell">-->
	          			<i class="far fa-bell" data-bs-toggle="modal" data-bs-target="#bellModal" id="bell"></i>
	          			 <div id ="bell_text"></div>
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
	<!-- *********************** -->
	<!-- *******메인******** -->
	<!-- *********************** -->
	
	
	
	
	
	<div class="row">
		<div class="col-12">
			<div id="carouselExampleControls" class="carousel" data-bs-ride="carousel" data-interval="500">
			  <div class="carousel-inner">
			    <div class="carousel-item active col-12 d-flex" id = "printList">
             
                </div>
                
                <div class="carousel-item  col-12 d-flex" id = "printList2">
                    
                </div>
			
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			    <span class="carouselPrevIcon"><i class="bi bi-chevron-compact-left"></i></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next"  id = "" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
			    <span class="carouselNextIcon"><i class="bi bi-chevron-compact-right"></i></span>
			    <span class="visually-hidden">Next</span>
			    <input type="hidden" value="0" id="carousel-value">
			    <input type="hidden" value="0" id="carousel-currentPage">
			  </button>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
let mnList = null 

$("#carouselExampleControls").on('slide.bs.carousel', function(e) {
	
	  let carouselCurrentPage
	    //console.log(e.direction)
	    if(e.direction == "left"){
	        $("#carousel-value").val(1)
	        carouselCurrentPage = Number($("#carousel-currentPage").val()); 
	        remainder = (mnList.length) % 3
	        mnListLength = mnList.length - remainder
	        if(carouselCurrentPage == mnListLength -3 ){
	            carouselCurrentPage = 0
	        }else{
	            carouselCurrentPage = carouselCurrentPage + 3 
	        }
	   
	        $("#carousel-currentPage").val(carouselCurrentPage) 
	    }else{
	        $("#carousel-value").val(0)
	        carouselCurrentPage = Number($("#carousel-currentPage").val()); 
	        if(carouselCurrentPage <= 0){
	            carouselCurrentPage = 0
	        }else{
	            carouselCurrentPage = carouselCurrentPage - 3 
	        }
	        $("#carousel-currentPage").val(carouselCurrentPage)
	     
	    }
	   //console.log($("#carousel-value").val() +" : " + $("#carousel-currentPage").val())
	  	$("#printList").empty(); 
	    $("#printList2").empty(); 
	    getList(printList,printList2, carouselCurrentPage, mnList)

		
});



getBoardList()

function getList(id,printId, num, mnList){
	if((mnList.length) < 3){
		$(id).append("리스트를 3개이상 추가해주세요");
		$(printId).append("리스트를 3개이상 추가해주세요");
	}else{
		for(let i= num ; i<(num+3); i++){
			
			let content = mnList[i].content  //상세게시글 내용 변수에 담는다
			let imgRemove = /<IMG(.*?)>/gi; // 이미지  지우는 regx 
			content = content.replace(imgRemove, ''); // 이미지를 지움
			content = content.replace(/(<([^>]+)>)/ig,''); //그 외 태그 제거
			subtitle = content.substring(0,30)
			 let date =  mnList[i].written_date.replace(/,/,"")
			 let written_date = date.split(" ");
			 date = written_date[2]+"년 "+written_date[0]+" "+written_date[1]+"일"
			let list = "<div class='col-12 col-md-4 cardContainer d-flex justify-content-center'>"
	        			+"<div>"
						+"<div class='titleImg'>"
	            		+"<a href='${pageContext.request.contextPath}/board/detail.do?seq_column="+ mnList[i].seq_column+"' class='atag'>"
	            				
	            				if( mnList[i].profile == null ||  mnList[i].profile==""){
	            			    list +="<img src="
	            			    	+"'${pageContext.request.contextPath}/resources/images/colum/imagedoesnot exist.png'"
	            			    	+"class='card-img-top' alt='...'>"
	            			    }else{
	            			    //console.log("'${pageContext.request.contextPath}/upload/"+ mnList[i].sys_name+"'");	
	            			    list +="<img src="
	            			    	+"'${pageContext.request.contextPath}/upload/"+ mnList[i].sys_name+"'"
	            			       	+"class='card-img-top' alt='...'>"	
								}
								list += "</a></div>"
							
	               				+"<div class='colum-body ms-5'>"
	                   			+"<p class='colum-title ms-3'>"
	               				+"<a href='${pageContext.request.contextPath}/board/detail.do?seq_column="+ mnList[i].seq_column+"'>"
	                     		+ mnList[i].title
	                     		+"</a></p>"
	                     		+"<p class='colum-text ms-3'>"+date+"</p>"
	                  			+"<p class='colum-text ms-3'>"+subtitle+"...</p>"
	                			+"</div>"
	           				+"</div>"
	    				+"</div>"
	    				+"</div>"	

		$(id).append(list);
		$(printId).append(list);
		}
	}
	
}

	function getBoardList(){
	
		$.ajax({  
			 url : "${pageContext.request.contextPath}/board/mainList.do",  
			 type : "POST",
			 success : function(data){
			//성공시
				 //console.log(data);
				//$(printId).empty();

				let mainList= data.mainList
				if(data == null || data =="" ){
					let list = "리스트가 비어있습니다"
					$(printId).empty();
					$(printId).append(list);

				}else{
					mnList = data.mainList;
					getList(printList,printList2, 0,mnList);
				}
			 }, 
			 error : function (e){
				//실패시
				 console.log(e)
				}
			}); 
	}
</script>	
	
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
      <div class="modal-footer">
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
				
  									<input class="form-check-input" name="flexRadioDefault" type="radio" id="flexRadioDefault2 adminLogin" value="1">
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
						<div class="row memberRow" style="margin-top: 20px; margin-bottom: 20px;">
							<div class="col-12" style="text-align: center;">
								<p style="color: grey; font-size: 12px; margin-bottom: 0px;">----------------------- SNS 소셜 간편로그인 ------------------------</p>
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
				<a href="${pageContext.request.contextPath }/admin/">관리자</a>	
			</div>
		</div>
		
	</div>
	
	<!-- 회원가입, 로그인 스크립트 영역 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/member.js"></script>
	<script>
	// 로그인 모달 오픈 함수
	function openLoginModal() {
		$("#loginModal").modal("show");
	}
	
	// 로그아웃 함수
    function logoutFunc() {
        <c:choose>
            <c:when test="${loginSession.naver_num != '0'}"> // 네이버 로그인이면 네이버 로그아웃하고 로그아웃
                naverLogout();
                location.href = "${pageContext.request.contextPath}/member/logout.do";
            </c:when>
            <c:when test="${loginSession.kakao_num != '0'}">
                kakaoLogout();
                location.href = "${pageContext.request.contextPath}/member/logout.do";
            </c:when>
            <c:when test="${loginSession.kakao_num != '0' and loginSession.naver_num != '0'}">
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