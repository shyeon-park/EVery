<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="icon" href="/resources/images/EVery_Favicon.png"><!-- Favicon 이미지 -->
<script type="text/javascript" src="/resources/js/websocket.js"></script> <!-- 웹소켓 -->
<title>전기차의 모든것 EVery</title>
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

.infoDiv {
	width: 50vw;
	padding: 0px;
	margin: auto;
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
	border-bottom: 2px solid #333;
	padding: 30px;
	transition: 0.1s;
}
/*
   border-left: 1px solid #ccc;
   border-right: 1px solid #ccc;
   border-top: 2px solid #ccc;*/
.tabmenu:hover {
	color: #18a8f1;
	/*backgrond-color: #ccc;*/
}

.tabmenu.current {
	/*background: #333;
   color: #fff;*/
	border-top: 2px solid #333;
	border-left: 2px solid #333;
	border-right: 2px solid #333;
	border-bottom: 0;
	color: #18a8f1;
	/*
   border-left: 2px solid #ccc;
   border-right: 2px solid #ccc;*/
	font-weight: bold;
	/*border-top-left-radius: 10px;*/
	/*border-top-right-radius: 5px;*/
}

.tabContents {
	font-size: 16px; height : 50vh;
	padding: 10px;
	background-color: #fafafa;
	/*
	border-left: 1px solid #333;
	border-right: 1px solid #333;*/
	/*border-bottom: 1px solid #333;*/
	display: none;
	height: 50vh;
}

.tabContents.current {
	font-size: 16px;
	display: block;
	padding: 10px;
	background-color: #fafafa;
	/*
	border-left: 2px solid #ccc;
	border-right: 2px solid #ccc;*/
	/*border-bottom: 2px solid #333;*/
}

/* 모달창 css */
.modalRow {
	margin-top: 20px;
}

.userInfoModal {
	border: none;
	border-radius: 0;
	border-bottom: 1px solid #333;
}

.userInfoModal:focus {
	box-shadow: 0 0 0 0;
	outline: none;
	border-bottom: 2px solid #333;
}

.userInfoModal:blur {
	border-bottom: 1px solid #333;
}

.userInfoModal:disabled {
	background-color: #fff;
}

.memberLabel {
	font-size: 14px;
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

		<div class="row infoDiv" id="tab">
			<div class="col-6 tabmenu current" class="service" id="service01" data-tab="service">이용약관</div>
			<div class="col-6 tabmenu" class="privacy" id="privacy01" data-tab="privacy">개인정보처리방침</div>

		</div>

		<div class="tabContents infoDiv current" class="service" id="service">
			<div style="height: 100%; overflow-y: scroll;">
				제1조(목적) <br>이 약관은 EVery 회사(전자상거래
				사업자)가 운영하는 EVery 사이버 몰(이하 “에브리”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라
				한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다. <br> <br>
				※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」 <br>
				<br>
				제2조(정의) <br> <br> ① “에브리”이란
				EVery 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여
				재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다. <br>
				<br> ② “이용자”란 “에브리”에 접속하여 이 약관에 따라 “에브리”이 제공하는 서비스를 받는 회원 및
				비회원을 말합니다. <br> <br> ③ ‘회원’이라 함은 “에브리”에 회원등록을 한 자로서, 계속적으로
				“에브리”이 제공하는 서비스를 이용할 수 있는 자를 말합니다. <br> <br> ④ ‘비회원’이라 함은
				회원에 가입하지 않고 “에브리”이 제공하는 서비스를 이용하는 자를 말합니다. <br> <br>
				제3조 (약관 등의 명시와 설명 및 개정) <br> <br>
				① “에브리”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를
				포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보관리책임자등을 이용자가 쉽게 알
				수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수
				있도록 할 수 있습니다. <br> <br> ② “에브리”은 이용자가 약관에 동의하기에 앞서 약관에
				정하여져 있는 내용 중 청약철회․배송책임․환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는
				팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다. <br> <br> ③ “에브리”은 「전자상거래
				등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」,
				「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등
				관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. <br> <br> ④ “에브리”이
				약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자
				전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고
				공지합니다. 이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. <br>
				<br> ⑤ “에브리”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그
				이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관
				조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “에브리”에 송신하여 “에브리”의 동의를 받은
				경우에는 개정약관 조항이 적용됩니다. <br> <br> ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의
				해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는
				전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다. <br> <br>
				제4조(서비스의 제공 및 변경) <br> <br> ①
				“에브리”은 다음과 같은 업무를 수행합니다. <br> <br> 1. 재화 또는 용역에 대한 정보 제공 및
				구매계약의 체결 <br> 2. 구매계약이 체결된 재화 또는 용역의 배송 <br> 3. 기타 “에브리”이
				정하는 업무 <br> <br>② “에브리”은 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의
				경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는
				용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다. <br> <br>③
				“에브리”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할
				경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다. <br> <br>④ 전항의 경우
				“에브리”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “에브리”이 고의 또는 과실이 없음을 입증하는 경우에는
				그러하지 아니합니다. <br> <br>
				제5조(서비스의 중단) <br> <br> ① “에브리”은
				컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로
				중단할 수 있습니다. <br> <br> ② “에브리”은 제1항의 사유로 서비스의 제공이 일시적으로
				중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “에브리”이 고의 또는 과실이 없음을 입증하는
				경우에는 그러하지 아니합니다. <br> <br> ③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의
				이유로 서비스를 제공할 수 없게 되는 경우에는 “에브리”은 제8조에 정한 방법으로 이용자에게 통지하고 당초 “에브리”에서
				제시한 조건에 따라 소비자에게 보상합니다. 다만, “에브리”이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지
				또는 적립금 등을 “에브리”에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다. <br>
				<br>
				제6조(회원가입) <br> <br> ① 이용자는
				“에브리”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.
				<br> <br> ② “에브리”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에
				해당하지 않는 한 회원으로 등록합니다. <br> <br> 1. 가입신청자가 이 약관 제7조제3항에 의하여
				이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 “에브리”의
				회원재가입 승낙을 얻은 경우에는 예외로 한다. <br> 2. 등록 내용에 허위, 기재누락, 오기가 있는 경우 <br>
				3. 기타 회원으로 등록하는 것이 “에브리”의 기술상 현저히 지장이 있다고 판단되는 경우 <br> <br>
				③ 회원가입계약의 성립 시기는 “에브리”의 승낙이 회원에게 도달한 시점으로 합니다. <br> <br> ④
				회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “에브리”에 대하여 회원정보 수정 등의 방법으로
				그 변경사항을 알려야 합니다. <br> <br>
				제7조(회원 탈퇴 및 자격 상실 등) <br> <br>
				① 회원은 “에브리”에 언제든지 탈퇴를 요청할 수 있으며 “에브리”은 즉시 회원탈퇴를 처리합니다. <br> <br>
				② 회원이 다음 각 호의 사유에 해당하는 경우, “에브리”은 회원자격을 제한 및 정지시킬 수 있습니다. <br>
				<br> 1. 가입 신청 시에 허위 내용을 등록한 경우 <br> 2. “에브리”을 이용하여 구입한 재화
				등의 대금, 기타 “에브리”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우 <br> 3. 다른
				사람의 “에브리” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우 <br> 4.
				“에브리”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우 <br> <br>
				③ “에브리”이 회원 자격을 제한․정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지
				아니하는 경우 “에브리”은 회원자격을 상실시킬 수 있습니다. <br> <br> ④ “에브리”이 회원자격을
				상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의
				기간을 정하여 소명할 기회를 부여합니다. <br> <br>
				제8조(회원에 대한 통지) <br> <br> ①
				“에브리”이 회원에 대한 통지를 하는 경우, 회원이 “에브리”과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다. <br>
				<br> ② “에브리”은 불특정다수 회원에 대한 통지의 경우 1주일이상 “에브리” 게시판에 게시함으로서 개별
				통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.
				<br> <br>
				제9조(구매신청 및 개인정보 제공 동의 등) <br> <br>
				① “에브리”이용자는 “에브리”상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “에브리”은 이용자가
				구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. <br> 1. 재화 등의 검색 및 선택 <br>
				2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력 <br> 3. 약관내용,
				청약철회권이 제한되는 서비스, 배송료․설치비 등의 비용부담과 관련한 내용에 대한 확인 <br> 4. 이 약관에
				동의하고 위 3.호의 사항을 확인하거나 거부하는 표시 <br> (예, 마우스 클릭) <br> 5.
				재화등의 구매신청 및 이에 관한 확인 또는 “에브리”의 확인에 대한 동의 <br> 6. 결제방법의 선택 <br>
				<br> ② “에브리”이 제3자에게 구매자 개인정보를 제공할 필요가 있는 경우 1) 개인정보를 제공받는 자,
				2)개인정보를 제공받는 자의 개인정보 이용목적, 3) 제공하는 개인정보의 항목, 4) 개인정보를 제공받는 자의 개인정보
				보유 및 이용기간을 구매자에게 알리고 동의를 받아야 합니다. (동의를 받은 사항이 변경되는 경우에도 같습니다.) <br>
				<br> <br> ③ “에브리”이 제3자에게 구매자의 개인정보를 취급할 수 있도록 업무를 위탁하는
				경우에는 1) 개인정보 취급위탁을 받는 자, 2) 개인정보 취급위탁을 하는 업무의 내용을 구매자에게 알리고 동의를 받아야
				합니다. (동의를 받은 사항이 변경되는 경우에도 같습니다.) 다만, 서비스제공에 관한 계약이행을 위해 필요하고 구매자의
				편의증진과 관련된 경우에는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」에서 정하고 있는 방법으로 개인정보 취급방침을
				통해 알림으로써 고지절차와 동의절차를 거치지 않아도 됩니다. <br> <br> <br>
				제10조 (계약의 성립) <br> <br> ① “에브리”은
				제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는
				경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야
				합니다. <br> <br> 1. 신청 내용에 허위, 기재누락, 오기가 있는 경우 <br> 2.
				미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우 <br> 3. 기타 구매신청에
				승낙하는 것이 “에브리” 기술상 현저히 지장이 있다고 판단하는 경우 <br> <br> ② “에브리”의
				승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다. <br> <br>
				③ “에브리”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한
				정보 등을 포함하여야 합니다. <br> <br>
				제11조(지급방법)<br> “에브리”에서 구매한 재화 또는 용역에
				대한 대금지급방법은 다음 각 호의 방법중 가용한 방법으로 할 수 있습니다. 단, “에브리”은 이용자의 지급방법에 대하여
				재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다. <br> <br> 1. 폰뱅킹,
				인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체 <br> 2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제 <br>
				3. 온라인무통장입금 <br> 4. 전자화폐에 의한 결제 <br> 5. 수령 시 대금지급 <br>
				6. 마일리지 등 “에브리”이 지급한 포인트에 의한 결제 <br> 7. “에브리”과 계약을 맺었거나 “에브리”이
				인정한 상품권에 의한 결제 <br> 8. 기타 전자적 지급 방법에 의한 대금 지급 등 <br> <br>
				제12조(수신확인통지․구매신청 변경 및 취소)<br> <br>
				① “에브리”은 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다. <br> <br> ②
				수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를
				요청할 수 있고 “에브리”은 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만
				이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다. <br> <br>
				제13조(재화 등의 공급) <br> <br> ①
				“에브리”은 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화
				등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, “에브리”이 이미 재화 등의 대금의 전부
				또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를 취합니다. 이때 “에브리”은
				이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다. <br> <br>
				② “에브리”은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약
				“에브리”이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 “에브리”이 고의․과실이
				없음을 입증한 경우에는 그러하지 아니합니다. <br> <br>
				제14조(환급) <br>“에브리”은 이용자가 구매신청한 재화 등이
				품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을
				받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다. <br> <br>
				제15조(청약철회 등) <br> <br> ① “에브리”과
				재화등의 구매에 관한 계약을 체결한 이용자는 「전자상거래 등에서의 소비자보호에 관한 법률」 제13조 제2항에 따른
				계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게 이루어진 경우에는 재화 등을 공급받거나 재화
				등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 청약의 철회를 할 수 있습니다. 다만, 청약철회에 관하여 「전자상거래
				등에서의 소비자보호에 관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다. <br> <br>
				② 이용자는 재화 등을 배송 받은 경우 다음 각 호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다. <br>
				<br> 1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기
				위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다) <br> 2. 이용자의 사용 또는 일부 소비에
				의하여 재화 등의 가치가 현저히 감소한 경우 <br> 3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의
				가치가 현저히 감소한 경우 <br> 4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의
				포장을 훼손한 경우 <br> <br> ③ 제2항제2호 내지 제4호의 경우에 “에브리”이 사전에 청약철회
				등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의
				청약철회 등이 제한되지 않습니다. <br> <br> ④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화
				등의 내용이 표시·광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그
				사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다. <br> <br>
				제16조(청약철회 등의 효과) <br> <br> ①
				“에브리”은 이용자로부터 재화 등을 반환받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우
				“에브리”이 이용자에게 재화등의 환급을 지연한때에는 그 지연기간에 대하여 「전자상거래 등에서의 소비자보호에 관한 법률
				시행령」제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다. <br> <br> ②
				“에브리”은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는
				지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다. <br>
				<br> ③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. “에브리”은
				이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시·광고 내용과
				다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “에브리”이 부담합니다. <br>
				<br> ④ 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 “에브리”은 청약철회 시 그 비용을 누가
				부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다. <br> <br>
				제17조(개인정보보호) <br> <br> ① “에브리”은
				이용자의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를 수집합니다. <br> <br>
				② “에브리”은 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여
				구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다. <br>
				<br> ③ “에브리”은 이용자의 개인정보를 수집·이용하는 때에는 당해 이용자에게 그 목적을 고지하고 동의를
				받습니다. <br> <br> ④ “에브리”은 수집된 개인정보를 목적외의 용도로 이용할 수 없으며, 새로운
				이용목적이 발생한 경우 또는 제3자에게 제공하는 경우에는 이용·제공단계에서 당해 이용자에게 그 목적을 고지하고 동의를
				받습니다. 다만, 관련 법령에 달리 정함이 있는 경우에는 예외로 합니다. <br> <br> ⑤
				“에브리”이 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및
				전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할
				정보의 내용) 등 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 제22조제2항이 규정한 사항을 미리 명시하거나
				고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다. <br> <br> ⑥ 이용자는 언제든지
				“에브리”이 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 “에브리”은 이에 대해 지체 없이
				필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 “에브리”은 그 오류를 정정할 때까지 당해
				개인정보를 이용하지 않습니다. <br> <br> ⑦ “에브리”은 개인정보 보호를 위하여 이용자의
				개인정보를 취급하는 자를 최소한으로 제한하여야 하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난,
				유출, 동의 없는 제3자 제공, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다. <br> <br>
				⑧ “에브리” 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해
				개인정보를 지체 없이 파기합니다. <br> <br> ⑨ “에브리”은 개인정보의 수집·이용·제공에 관한
				동의 란을 미리 선택한 것으로 설정해두지 않습니다. 또한 개인정보의 수집·이용·제공에 관한 이용자의 동의거절시 제한되는
				서비스를 구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집·이용·제공에 관한 이용자의 동의 거절을 이유로 회원가입
				등 서비스 제공을 제한하거나 거절하지 않습니다. <br> <br>
				제18조(“에브리“의 의무) <br> <br> ①
				“에브리”은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고,
				안정적으로 재화․용역을 제공하는데 최선을 다하여야 합니다. <br> <br> ② “에브리”은 이용자가
				안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다. <br>
				<br> ③ “에브리”이 상품이나 용역에 대하여 「표시․광고의 공정화에 관한 법률」 제3조 소정의 부당한
				표시․광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다. <br> <br> ④
				“에브리”은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다. <br> <br>
				제19조(회원의 ID 및 비밀번호에 대한 의무) <br> <br>
				① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다. <br> <br> ②
				회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다. <br> <br> ③ 회원이
				자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “에브리”에 통보하고 “에브리”의
				안내가 있는 경우에는 그에 따라야 합니다. <br> <br>
				제20조(이용자의 의무)<br> 이용자는 다음 행위를 하여서는 안
				됩니다. <br> <br> 1. 신청 또는 변경시 허위 내용의 등록 <br> 2. 타인의 정보
				도용 <br> 3. “에브리”에 게시된 정보의 변경 <br> 4. “에브리”이 정한 정보 이외의
				정보(컴퓨터 프로그램 등) 등의 송신 또는 게시 <br> 5. “에브리” 기타 제3자의 저작권 등 지적재산권에
				대한 침해 <br> 6. “에브리” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위 <br> 7.
				외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위 <br>
				<br>
				제21조(연결“에브리”과 피연결“에브리” 간의 관계) <br> <br>
				① 상위 “에브리”과 하위 “에브리”이 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식
				등으로 연결된 경우, 전자를 연결 “에브리”(웹 사이트)이라고 하고 후자를 피연결 “에브리”(웹사이트)이라고 합니다. <br>
				<br> ② 연결“에브리”은 피연결“에브리”이 독자적으로 제공하는 재화 등에 의하여 이용자와 행하는 거래에 대해서
				보증 책임을 지지 않는다는 뜻을 연결“에브리”의 초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한
				보증 책임을 지지 않습니다. <br> <br>
				제22조(저작권의 귀속 및 이용제한) <br> <br> ①
				“몰“이 작성한 저작물에 대한 저작권 기타 지적재산권은 ”몰“에 귀속합니다. <br> <br> ②
				이용자는 “에브리”을 이용함으로써 얻은 정보 중 “에브리”에게 지적재산권이 귀속된 정보를 “에브리”의 사전 승낙 없이
				복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다. <br>
				<br> ③ “에브리”은 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.
				<br> <br>
				제23조(분쟁해결) <br> <br> ① “에브리”은
				이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치․운영합니다. <br>
				<br> ② “에브리”은 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한
				처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다. <br> <br> ③
				“에브리”과 이용자 간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는
				시·도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다. <br> <br>
				제24조(재판권 및 준거법) <br> <br> ①
				“에브리”과 이용자 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는
				거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의
				경우에는 민사소송법상의 관할법원에 제기합니다. <br> <br> ② “에브리”과 이용자 간에 제기된
				전자상거래 소송에는 한국법을 적용합니다.
			</div>
		</div>

		<div class="tabContents infoDiv" class="privacy" id="privacy">
			<div style="height: 100%; overflow-y: scroll;">
				<p class="ls2 lh6 bs5 ts4">
					<em class="emphasis">&lt; EVery &gt;('www.EVery.com'이하 '에브리')</em>은(는)
					「개인정보 보호법」 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록
					하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.
				</p>
				<p class="ls2">
					○ 이 개인정보처리방침은 <em class="emphasis">2022</em>년 <em class="emphasis">1</em>월
					<em class="emphasis">1</em>부터 적용됩니다.
				</p>
				<br>
				<p class="lh6 bs4">
					<strong>제1조(개인정보의 처리 목적)<br>
					<br>
					<em class="emphasis">&lt; EVery &gt;('www.EVery.com'이하 '에브리')</em>은(는)
						다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용
						목적이 변경되는 경우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
					</strong>
				</p>
				<ul class="list_indent2 mgt10">
					<p class="ls2">1. 홈페이지 회원가입 및 관리</p>
					<p class="ls2">회원 가입의사 확인 목적으로 개인정보를 처리합니다.</p>
					<br>
				</ul>
				<br>
				<br>
				<p class="lh6 bs4">
					<strong>제2조(개인정보의 처리 및 보유 기간)</strong><br>
					<br>① <em class="emphasis">&lt; EVery &gt;</em>은(는) 법령에 따른
					개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의받은 개인정보 보유·이용기간 내에서 개인정보를
					처리·보유합니다.<br>
					<br>② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
				</p>
				<ul class="list_indent2 mgt10">
					<li class="tt">1.&lt;홈페이지 회원가입 및 관리&gt;</li>
					<li class="tt">&lt;홈페이지 회원가입 및 관리&gt;와 관련한 개인정보는 수집.이용에 관한
						동의일로부터&lt;3년&gt;까지 위 이용목적을 위하여 보유.이용됩니다.</li>
					<li>보유근거 :</li>
					<li>관련법령 : 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년</li>
					<li>예외사유 :</li>
				</ul>
				<br>
				<br>
				<p class="lh6 bs4">
					<strong>제3조(정보주체와 법정대리인의 권리·의무 및 그 행사방법)</strong>
				</p>
				<p class="ls2">
					<br>
					<br>① 정보주체는 EVery에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수
					있습니다.
				</p>
				<p class="sub_p">② 제1항에 따른 권리 행사는EVery에 대해 「개인정보 보호법」 시행령
					제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 EVery은(는) 이에 대해 지체
					없이 조치하겠습니다.</p>
				<p class="sub_p">③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을
					통하여 하실 수 있습니다.이 경우 “개인정보 처리 방법에 관한 고시(제2020-7호)” 별지 제11호 서식에 따른
					위임장을 제출하셔야 합니다.</p>
				<p class="sub_p">④ 개인정보 열람 및 처리정지 요구는 「개인정보 보호법」 제35조 제4항, 제37조
					제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.</p>
				<p class="sub_p">⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로
					명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.</p>
				<p class="sub_p">⑥ EVery은(는) 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구,
					처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.</p>
				<br>
				<br>
				<p class="lh6 bs4">
					<strong>제4조(처리하는 개인정보의 항목 작성) </strong><br>
					<br> ① <em class="emphasis">&lt; EVery &gt;</em>은(는) 다음의 개인정보
					항목을 처리하고 있습니다.
				</p>
				<ul class="list_indent2 mgt10">
					<li class="tt">1&lt; 홈페이지 회원가입 및 관리 &gt;</li>
					<li>필수항목 : 휴대전화번호, 비밀번호, 로그인ID, 성별, 생년월일, 이름, 서비스 이용 기록, 접속
						로그, 쿠키, 접속 IP 정보</li>
					<li>선택항목 :</li>
				</ul>
				<br>
				<br>
				<p class="lh6 bs4">
					<strong>제5조(개인정보의 파기)<em class="emphasis"></em></strong>
				</p>
				<p class="ls2">
					<em class="emphasis"><br>① &lt; EVery &gt; 은(는) 개인정보
						보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.<br>
					<br>② 정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에
						따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를
						달리하여 보존합니다.<br>1. 법령 근거 :<br>2. 보존하는 개인정보 항목 : 계좌정보,
						거래날짜<br>
					<br>③ 개인정보 파기의 절차 및 방법은 다음과 같습니다.<br>1. 파기절차<br>
						&lt; EVery &gt; 은(는) 파기 사유가 발생한 개인정보를 선정하고, &lt; EVery &gt; 의 개인정보
						보호책임자의 승인을 받아 개인정보를 파기합니다.<br></em>
				</p>
				<p class="sub_p mgt10">
					<em class="emphasis">2. 파기방법</em>
				</p>
				<p class="sub_p">
					<em class="emphasis">전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다</em>
				</p>
				<em class="emphasis"><br>
				<br>
				<p class="lh6 bs4">
						<strong>제6조(개인정보의 안전성 확보 조치)<em class="emphasis"><br>
							<br>&lt; EVery &gt;</em>은(는) 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고
							있습니다.
						</strong>
					</p>
					<p class="sub_p mgt10">
						1. 정기적인 자체 감사 실시<br> 개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체
						감사를 실시하고 있습니다.<br>
						<br>2. 개인정보 취급 직원의 최소화 및 교육<br> 개인정보를 취급하는 직원을 지정하고 담당자에
						한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.<br>
						<br>3. 내부관리계획의 수립 및 시행<br> 개인정보의 안전한 처리를 위하여 내부관리계획을
						수립하고 시행하고 있습니다.<br>
						<br>4. 해킹 등에 대비한 기술적 대책<br> &lt;<em class="emphasis">EVery</em>&gt;('<em
							class="emphasis">에브리</em>')은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기
						위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고
						기술적/물리적으로 감시 및 차단하고 있습니다.<br>
						<br>5. 개인정보의 암호화<br> 이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고
						있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의
						별도 보안기능을 사용하고 있습니다.<br>
						<br>6. 접속기록의 보관 및 위변조 방지<br> 개인정보처리시스템에 접속한 기록을 최소 1년 이상
						보관, 관리하고 있으며,다만, 5만명 이상의 정보주체에 관하여 개인정보를 추가하거나, 고유식별정보 또는 민감정보를
						처리하는 경우에는 2년이상 보관, 관리하고 있습니다.<br>또한, 접속기록이 위변조 및 도난, 분실되지 않도록
						보안기능을 사용하고 있습니다.<br>
						<br>7. 개인정보에 대한 접근 제한<br> 개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의
						부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여
						외부로부터의 무단 접근을 통제하고 있습니다.<br>
						<br>
					</p>
					<br>
				<br>
				<p class="lh6 bs4">
						<strong>제7조(개인정보 자동 수집 장치의 설치•운영 및 거부에 관한 사항)</strong>
					</p>
					<p class="ls2">
						<br>
						<br>① EVery 은(는) 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로
						불러오는 ‘쿠키(cookie)’를 사용합니다.<br>② 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가
						이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br>가.
						쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부,
						등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.<br>나. 쿠키의 설치•운영 및 거부 :
						웹브라우저 상단의 도구&gt;인터넷 옵션&gt;개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다.<br>다.
						쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.
					</p>
					<p class="sub_p mgt30">
						<strong>제8조 (개인정보 보호책임자) </strong>
					</p>
					<p class="sub_p mgt10">
						① <span class="colorLightBlue">EVery</span> 은(는) 개인정보 처리에 관한 업무를
						총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보
						보호책임자를 지정하고 있습니다.
					</p>
					<ul class="list_indent2 mgt10">
						<li class="tt">▶ 개인정보 보호책임자</li>
						<li>성명 :이수희</li>
						<li>직책 :보호책임자</li>
						<li>직급 :대리</li>
						<li>연락처 :010-2403-9475, privacy@every.com,</li>
					</ul>
					<p class="sub_p">※ 개인정보 보호 담당부서로 연결됩니다.</p>
					<p></p>
					<ul class="list_indent2 mgt10">
						<li class="tt">▶ 개인정보 보호 담당부서</li>
						<li>부서명 :개인정보보호</li>
						<li>담당자 :이수희</li>
						<li>연락처 :010-2403-9475, privacy@every.com,</li>
					</ul>
					<p class="sub_p">② 정보주체께서는 EVery 의 서비스(또는 사업)을 이용하시면서 발생한 모든
						개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수
						있습니다. EVery 은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.</p>
					<p class="sub_p mgt30">
						<strong>제9조(개인정보 열람청구)<br> 정보주체는 ｢개인정보 보호법｣ 제35조에 따른
							개인정보의 열람 청구를 아래의 부서에 할 수 있습니다.<br>&lt; EVery &gt;은(는) 정보주체의
							개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.
						</strong>
					</p>
					<ul class="list_indent2 mgt10">
						<li class="tt">▶ 개인정보 열람청구 접수·처리 부서</li>
						<li>부서명 : 개인정보보호</li>
						<li>담당자 : 이수희</li>
						<li>연락처 : 010-2403-9475, privacy@every.com,</li>
					</ul>
					<br>
				<br>
				<p class="lh6 bs4">
						<strong>제10조(권익침해 구제방법)<em class="emphasis"></em></strong>
					</p>
					<br>
				<br>정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원
					개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는
					아래의 기관에 문의하시기 바랍니다.<br>
				<br> 1. 개인정보분쟁조정위원회 : (국번없이) 1833-6972 (www.kopico.go.kr)<br>

					2. 개인정보침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)<br> 3. 대검찰청 :
					(국번없이) 1301 (www.spo.go.kr)<br> 4. 경찰청 : (국번없이) 182
					(ecrm.cyber.go.kr)<br>
				<br> 「개인정보보호법」제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의
					처리정지 등)의 규정에 의한 요구에 대 하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익의 침해를
					받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.<br>
				<br> ※ 행정심판에 대해 자세한 사항은 중앙행정심판위원회(www.simpan.go.kr) 홈페이지를 참고하시기
					바랍니다.<br>
				<br>
				<p class="lh6 bs4">
						<strong>제11조(개인정보 처리방침 변경)<em class="emphasis"></em></strong>
					</p>
					<br>
				<p></p>
					<p class="sub_p">① 이 개인정보처리방침은 2022년 1월 1부터 적용됩니다.</p> </em>
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
			<div class="col-12">ⓒ EVery Inc. All Rights Reserved.</div>
		</div>
	</div>


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
	
	
	<!-- 로그인 모달 스크립트 영역 -->
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
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
	//let hostPort = "http://" + location.host;

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
	<script>
   $(document).ready(function() {
	   $('.tabmenu').removeClass('current');
       $('.tabContents').removeClass('current');
       if("${view}" == "service"){
    	   $('#service01').addClass('current');
    	   $('#service').addClass('current');
       }else if("${view}" == "privacy"){
    	   $('#privacy01').addClass('current');
    	   $('#privacy').addClass('current');
       }
	   
      $('.tabmenu').click(function() {
         var tab_id = $(this).attr("data-tab");

         $('.tabmenu').removeClass('current');
         $('.tabContents').removeClass('current');

         $(this).addClass('current');
         $("#" + tab_id).addClass('current');
      })
      
      
   })
   
   
<<<<<<< HEAD
    ws = new WebSocket("ws://172.30.1.60/column");
     //메세지수신
      ws.onmessage = function(e) {
         //console.log( e.data );
         let msgObj = JSON.parse(e.data);
         console.log(msgObj);
         
         notCheckedcount = msgObj.notCheckedcount
			//console.log("클라이언트가 확인 안한 메세지 개수는 "+ notCheckedcount);
			$("#bell_text").empty();
			$(".modal-footer").empty();
			$("#bell_text").append(notCheckedcount);
         
         memDTO = msgObj.memDto;
      
         console.log()
         if((memDTO.column_application == 1) && (memDTO.identification_num == 2) ){
            $("#applicationColStBtn").attr("disabled", false);
              $("#applicationColStBtn").html("컬럼리스트 신청 취소")
         }else if(memDTO.column_application == 0 && memDTO.identification_num == 1){
            $("#applicationColStBtn").attr("disabled", true);
              $("#applicationColStBtn").html("컬럼리스트 승인 대기중 ")
         }else{
            $("#applicationColStBtn").attr("disabled", false);
              $("#applicationColStBtn").html("컬럼리스트 신청")
         }
         
            notCheckedcount = msgObj.notCheckedcount
            console.log("클라이언트가 확인 안한 메세지 개수는 "+ notCheckedcount);
            $("#bell_text").empty();
            $(".modal-footer").empty();
            $("#bell_text").append(notCheckedcount);
            
            //새로운 메세지 리스트 출력
            if(msgObj.category == "getUncheckedList"){
               let uncheckedList = msgObj.uncheckedList
               $("#listPrint").empty();
               $(".modal-footer").empty();
               for(newMsg of uncheckedList){
                  let newTr = $("<tr>");
                  let aa = "<td class='text-center'><input type='checkbox' name = 'newMsg' value='"+newMsg.seq_message+"'></td>"
                          +"<td class=''>"+newMsg.written_date+"</td>"
                          + "<td class=''>"+newMsg.msg+"</td>"
                   newTr = newTr.append(aa);      
                  $("#listPrint").append(newTr);
               }   
               
               let newBtn =  "<button type='button' class='btn btn-primary' onclick='messageCheck();'>확인</button>"
               $(".modal-footer").append(newBtn);
            //확인된 목록
            }else if(msgObj.category == "getCheckedList"){
               $("#listPrint").empty();
               checkedList = msgObj.checkedList
               for(newMsg of checkedList){
                  let newTr = $("<tr>");
                  let aa = "<td class='text-center'><input type='checkbox' name = 'newMsg' value='"+newMsg.seq_message+"'></td>"
                          +"<td class=''>"+newMsg.written_date+"</td>"
                          + "<td class=''>"+newMsg.msg+"</td>"
                   newTr = newTr.append(aa);      
                  $("#listPrint").append(newTr);
               }
               
               let newBtn =  "<button type='button' class='btn btn-primary' onclick='deleteMsg()'>삭제</button>"
               $(".modal-footer").append(newBtn);
            }   
      }
=======
   
     
      //컬럼리스트 신청 클릭시 메세지 전송
      document.addEventListener('click',function(e){
           if(e.target.id == 'applicationColStBtn'){
              if($("#applicationColStBtn").html() == "컬럼리스트 신청 취소") ws.send("Cancel");
              else if($("#applicationColStBtn").html() == "컬럼리스트 승인 대기중") return;
              else if($("#applicationColStBtn").html() == "컬럼리스트 신청") ws.send("application");
              else return
       }});
      $(document).ready(function() {
         let phone = "${loginSession.phone}";
         console.log;
         let phoneArr = phone.split("-");

         $("#userPhoneNum1").val(phoneArr[0]);
         $("#userPhoneNum2").val(phoneArr[1]);
         $("#userPhoneNum3").val(phoneArr[2]);
      })

      // 마이페이지 content 바꾸는 함수
      /*
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
         if(content == "myReviews"){
            getCommentList(1);
         }else if(content == "myBookmarker"){
            getBookmarkList(1);
         }
      }

      // Get the element with id="defaultOpen" and click on it
      document.getElementById("defaultOpen").click();*/

      
      /* 내정보 스크립트 */
      // 회원탈퇴
      $("#memberWithdrawalBtn").on("click", function() {
         let id = $("#id").val();

         if (confirm("정말 회원탈퇴 하시겠습니까?")) {
            $.ajax({
               url : "${pageContext.request.contextPath}/member/getMemberWithdrawal.do",
               type : "post",
               data : {"id" : id}
            }).done(function(rs) {
               console.log(rs);
               if (rs == "deleteMem") {
                  alert("회원탈퇴가 완료되었습니다.");
                  location.href = "${pageContext.request.contextPath}/";
               } else if (rs == "fail") {
                  alert("회원탈퇴에 실패하였습니다. 다시 진행해주세요.");
               }
            }).fail(function(e) {
               console.log(e);
            })
         }
      })
      
      let pwState = false;
      let pwCheckState = false;
      let nickState = false;
      let phoneState = false;
      let authState = false;
      
      /* 닉네임 변경 관련 스크립트 */
      // 닉네임 변경 버튼 클릭 시
      $("#modifyNicknameBtn").on("click", function(){
         nickState = false;
         $("#nickname").val("");
         nicknameDynamicCss();
         $("#modifyNicknameModal").modal("show");
      })
      
      // 닉네임 css함수
      function nicknameDynamicCss() {
      let regexNickname = RegExp(/^[a-zㄱ-힣0-9]{3,}$/g);
      //console.log(tag);
         
      if($("#nickname").val() == ""){
         $("#nickname").css("border-bottom", "1px solid #ccc");
         $("#nicknameTxt").html("영문, 한글, 숫자를 조합하여 3자리 이상으로 설정해주세요.");
         $("#nicknameTxt").css("color", "#ccc");
         $("#checkNicknameBtn").attr("disabled", true);
         $("#nickname").focus(function(){
            $("#nickname").css("border-bottom", "2px solid grey");
         })   
         $("#nickname").blur(function(){
            $("#nickname").css("border-bottom", "1px solid #ccc");
         })   
      } else {
         if(regexNickname.test($("#nickname").val())) {
            $("#nicknameTxt").html("닉네임의 형식이 올바릅니다. 중복확인을 해주세요.");
            $("#nicknameTxt").css("color", "green");
            $("#nickname").css("border-bottom", "2px solid green");
            $("#checkNicknameBtn").attr("disabled", false);
            $("#nickname").blur(function(){
               $("#nickname").css("border-bottom", "2px solid green");
            })
         } else {
            $("#nicknameTxt").html("닉네임의 형식이 올바르지 않습니다.");
            $("#nicknameTxt").css("color", "red");
            $("#nickname").css("border-bottom", "2px solid red");
            $("#checkNicknameBtn").attr("disabled", true);
            $("#nickname").blur(function(){
               $("#nickname").css("border-bottom", "2px solid red");
            })
         }
      }
         
      $("#nickname").keyup(function(e){
         nickState = false;
         $("#nicknameTxt").html("");
         let regexNickname = RegExp(/^[a-zㄱ-힣0-9]{3,}$/g);
            
         if(regexNickname.test($("#nickname").val())) {
            $("#nicknameTxt").html("닉네임의 형식이 올바릅니다.");
            $("#nicknameTxt").css("color", "green");
            $("#checkNicknameBtn").attr("disabled", false);
            $("#nickname").css("border-bottom", "2px solid green");
            //$("#nicknameLabel").css("color", "green");
            $("#nickname").blur(function(){
               $("#nickname").css("border-bottom", "2px solid green");
            })
         } else {
            if($("#nickname").val() == "") {
               $("#nickname").css("border-bottom", "1px solid #ccc");
               $("#nicknameTxt").html("영문, 한글, 숫자를 조합하여 3자리 이상으로 설정해주세요.");
               $("#nicknameTxt").css("color", "#ccc");
               //$("#nicknameLabel").css("color", "grey");
               $("#checkNicknameBtn").attr("disabled", true);
               $("#nickname").focus(function(){
                  $("#nickname").css("border-bottom", "2px solid grey");
               })
               $("#nickname").blur(function(){
                  $("#nickname").css("border-bottom", "1px solid #ccc");
               })   
            } else {
               $("#nicknameTxt").html("닉네임의 형식이 올바르지 않습니다.");
               $("#nicknameTxt").css("color", "red");
               $("#checkNicknameBtn").attr("disabled", true);
               $("#nickname").css("border-bottom", "2px solid red");
               //$("#nicknameLabel").css("color", "red");
               $("#nickname").blur(function(){
                  $("#nickname").css("border-bottom", "2px solid red");
               })   
            }
         }
      })
   }
      
   // 닉네임 중복확인 버튼 클릭 시
   $("#checkNicknameBtn").on("click", function(e){
      let nickname = $("#nickname").val();
      let regexNickname = RegExp(/^[a-zㄱ-힣0-9]{3,}$/g);
      
      if(nickname !== "" && regexNickname.test(nickname)){
         $.ajax({
            url: "${pageContext.request.contextPath}/member/checkMember.do",
            type: "post",
            data: {"nickname" : nickname}
         }).done(function(rs){
            console.log(rs);
            if(rs == "avaliable"){
               $("#nicknameTxt").html("사용가능한 닉네임입니다.");
               $("#nicknameTxt").css("color", "#18a8f1");
               $(e.target).attr("disabled", true);
               $("#nickname").css("border-bottom", "2px solid #18a8f1");
               nickState = true;
            } else if(rs == "unavaliable") {
               $("#nicknameTxt").html("이미 사용중인 닉네임입니다.");
               $("#nicknameTxt").css("color", "red");
               $("#nickname").val("");
               $("#nickname").css("border-bottom", "2px solid red");
               $(e.target).attr("disabled", true);
            }
         }).fail(function(e){
            console.log(e);
         })   
      }
   })
   
   // 닉네임 변경 완료 버튼 클릭 시
   $("#modifyNickCompleteBtn").on("click", function(){
      let beforeNickname = $("#userNickname").val();
      let nickname = $("#nickname").val();
      console.log(beforeNickname);
      console.log(nickname);
      
      if(nickname == "" || nickname == null) {
         alert("닉네임을 입력해주세요.");
         return;
      } else if(nickState == false) {
         alert("닉네임 중복확인을 해주세요.");
         return;
      } else {
         $.ajax({
            url: "${pageContext.request.contextPath}/member/modifyNickname.do",
            type: "post",
            data: {"beforeNickname" : beforeNickname, "afterNickname" : nickname}
         }).done(function(rs){
            console.log(rs);
            if(rs == "success") {
               alert("닉네임이 변경되었습니다.");
               location.href = "${pageContext.request.contextPath}/member/getMypage.do";
            } else if(rs == "fail") {
               alert("닉네임이 변경되지않았습니다. 다시 시도해주세요.");
               $("#modifyNicknameModal").modal("hide");
            }
         }).fail(function(e){
            console.log(e);
         })
      }
   })
   
   
   /* 휴대폰 변경 스크립트 */
   // 핸드폰 변경 버튼 클릭 시
   $("#modifyPhoneBtn").on("click", function(){
      $("#phoneNum1").val("선택").attr("selected", true);
      $("#phoneNum1").css("border-bottom", "1px solid #333");
      $("#phoneNum1").attr("disabled", false);
      $("#phoneNum2").val("");
      $("#phoneNum3").val("");
      $(".phoneNum").css("border-bottom", "1px solid #333");
      $(".phoneNum").attr("disabled", false);
      $("#phoneTxt").html("");
      $("#auth").empty();
      phoneState = false;
      authState = false;
      phoneDynamicCss();
      $("#modifyPhoneModal").modal("show");
   })
   
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
      $("#authTxt").html("");
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
               $("#authCheckBtn").attr("disabled", true);
               $("#authTxt").html("유효시간이 초과되었습니다.");
               $("#authTxt").css("color", "red");
               let authResendBtn = "<button type='button' class='btn btn-dark' id='authResendBtn'>재전송</button>";
               $(".authBtnCls").append(authResendBtn);
               $("#authResendBtn").css("margin-left", "4px");
               isRunning = false;
            }
        }, 1000);
           isRunning = true;
   }
   
   // 인증번호 발송 버튼 활성화 함수 
   function authSendAction() {
      let regexPhone1 = /[0-9]{4}/g;
      let regexPhone2 = /[0-9]{4}/g;
      
      if($("#phoneNum1").val() !== "선택" && regexPhone1.test($("#phoneNum2").val()) && regexPhone2.test($("#phoneNum3").val())) {
         $("#sendSmsBtn").attr("disabled", false);
         $("#sendAuthNumBtn").attr("disabled", false);
      } else {
         $("#sendSmsBtn").attr("disabled", true);
         $("#sendAuthNumBtn").attr("disabled", true);
      }
   }
      
   // 휴대폰 번호 css 함수
   function phoneDynamicCss() {
      // 휴대폰 번호1 셀렉트 박스 change 시
      $("#phoneNum1").on("change", function(){
         phoneState = false;
         authState = false;
         clearInterval(timer);
         $("#auth").empty();
         $("#phoneTxt").html("");
            
         if($(this).val() !== "선택") {
            $(this).css("border-bottom", "2px solid #18a8f1");
            $(this).blur(function(){
               $(this).css("border-bottom", "2px solid #18a8f1");
            })
            $("#phoneNum2").focus();
         } else {
            $(this).css("border-bottom", "2px solid red");
            $(this).blur(function(){
               $(this).css("border-bottom", "2px solid red");
            })
            phoneState = false;
         }
         authSendAction();
      })
         
      // 휴대폰 번호2, 3 keyup 시
      $(".phoneNum").on("keyup", function(){
         let regexPhone = /[0-9]{4}/g;
         phoneState = false;
         authState = false;
         clearInterval(timer);
         $("#auth").empty();
         $("#phoneTxt").html("");
            
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
               if($(this).get(0) == $("#phoneNum2").get(0)){
                  $("#phoneNum3").focus();
               }
            } else {
               $(this).css("border-bottom", "2px solid red");
               $(this).blur(function(){
                  $(this).css("border-bottom", "2px solid red");
               })
            }   
         }
         authSendAction();
      })
   }
   
   // 인증번호 전송 성공 함수
   function sendAuthSuccess() {
      $("#auth").empty();
      let authNumInput = "<div class='col-5'>" + 
      "<input type='text' class='form-control userInfo' id='authNum'>" +
      "</div>" +
      "<div class='col-3' style='position: relative;'>" +
      "<div id='timeDiv' style='position: relative; top: 50%; left: 50%; transform: translate(-50%, -50%); color: grey; font-size: 14px;'></div>" +
      "</div>" +
      "<div class='col-4 authBtnCls'>" +
      "<button type='button' class='btn btn-dark' id='authCheckBtn'>확인</button>" +
      "</div>" +
      "<p id='authTxt' style='font-size: 8px; margin-bottom: 0; margin-top: 4px;'></p>";
      $("#auth").append(authNumInput);
      authTimer();
      $("#phoneTxt").html("인증번호가 전송되었습니다.");
      $("#phoneTxt").css("color", "green");
      $("#phoneNum1").attr("disabled", true);
      $(".phoneNum").attr("disabled", true);
      $("#authNum").val("");
      $("#authNum").css("border-bottom", "1px solid lightgrey");
      $("#authCheckBtn").attr("disabled", true);
      phoneState = true;
   }
   
   // 인증번호 전송 실패 함수
   function sendAuthFail() {   
      $("#phoneNum1").val("선택").prop("selected", true);
      $("#phoneNum1").css("border-bottom", "2px solid red");
      $(".phoneNum").val("");
      $(".phoneNum").css("border-bottom", "2px solid red");
      $("#phoneTxt").css("color", "red");
      phoneState = false;
   }
   
   // 인증번호 입력창 keyup시
   $(document).on("keyup", "#authNum", function(){
      if($("#authNum").val() !== "") {
         $("#authNum").css("border-bottom", "2px solid grey");
         $("#authCheckBtn").attr("disabled", false);
      } else {
         $("#authCheckBtn").attr("disabled", true);
      }
   })
      
   // 인증번호 입력창 focus 시
   $(document).on("focus", "#authNum", function(){
      $("#authNum").css("border-bottom", "2px solid grey");
   })
      
   // 인증번호 입력창 blur 시
   $(document).on("blur", "#authNum", function(){
      $("#authNum").css("border-bottom", "1px solid lightgrey");
   })
   
   // 인증번호 전송 버튼 클릭 시
   $("#sendSmsBtn").on("click", function(){
      let regexPhone1 = /[0-9]{4}/g;
      let regexPhone2 = /[0-9]{4}/g;
      
      if($("#phoneNum1").val() == "선택" || $(".phoneNum").val() == "") {
         alert("전화번호를 입력해주세요.");
         return;
      }
      
      $("#phone").val($("#phoneNum1").val() + "-" + $("#phoneNum2").val() + "-" + $("#phoneNum3").val());
      let phone = $("#phone").val();
      console.log;
         
      $.ajax({
         url: "${pageContext.request.contextPath}/member/sendSms.do",
         type: "post",
         data: {phone : phone}
      }).done(function(rs){
         console.log(rs);
         if(rs == "success"){
            sendAuthSuccess();
            $("#sendSmsBtn").attr("disabled", true);
         } else if(rs == "unavaliable") {
            sendAuthFail();   
            $("#phoneTxt").html("이미 가입되어 있는 핸드폰 번호입니다.");
         }
      }).fail(function(e){
         console.log(e);
      })   
   })
   
   // 인증번호 재전송 버튼 클릭 시
   $(document).on("click", "#authResendBtn", function(){
      let phone = $("#phone").val();
      console.log;
      
      $.ajax({
         url: "${pageContext.request.contextPath}/member/getRequestAuthNum.do",
         type: "post",
         data: {"phone" : phone}
      }).done(function(rs){
         if(rs == "success") {
            $("#sendSmsBtn").attr("disabled", true);
            authTimer();
            $("#phoneTxt").html("인증번호가 재전송되었습니다.");
            $("#authTxt").html("인증번호를 입력해주세요.");
            $("#authTxt").css("color", "red");
            $("#authNum").css("border-bottom", "1px solid lightgrey");
            $("#authResendBtn").remove();
         }
      }).fail(function(e){
         console.log(e);
      })
   })
   
   // 인증번호 확인 버튼 클릭 시
   $(document).on("click", "#authCheckBtn", function(){
      let authNum = $("#authNum").val();
      let phone = $("#phone").val();
      console.log(authNum);
      console.log;
   
      $.ajax({
         url: "${pageContextPath.request.contextPath}/member/authCheck.do",
         type: "post",
         data: {authNum : authNum, phone : phone}
      }).done(function(rs){
         console.log(rs);
         if(rs == "success") {
            $("#phoneTxt").html("인증이 완료되었습니다.");
            $("#phoneTxt").css("color", "#18a8f1");
            $("#auth").empty();
            authState = true;
         } else if (rs == "fail") {
            $("#authTxt").html("인증번호가 일치하지 않습니다. 다시 입력해주세요.");
            $("#authTxt").css("color", "red");
            $("#authNum").val("");
            $("#authNum").css("border-bottom", "2px solid red");
            authState = false;
         } else if (rs == "timeout") {
            $("#authTxt").html("인증번호가 유효하지 않습니다. 다시 인증해주세요.");
            $("#authTxt").css("color", "red");
            $("#authNum").val("");
            $("#authNum").css("border-bottom", "2px solid red");   
            authState = false;
         }
      }).fail(function(e){
         console.log(e);
      })
   })
   
   // 휴대폰 변경하기 버튼 클릭 시
   $("#modifyPhoneCompleteBtn").on("click", function(){
      let beforePhone = $("#userPhone").val();
      let phone = $("#phone").val();
      console.log(beforePhone);
      console.log;
      
      if(phone == "" || phone == null) {
         alert("휴대폰 번호를 입력해주세요.");
         return;
      } else if(phoneState == false) {
         alert("입력한 휴대폰 번호로 인증번호 전송을 진행해주세요.");
         return;
      } else if(authState == false) {
         alert("전송된 인증번호를 인증해주세요.");
         return;
      } else {
         $.ajax({
            url: "${pageContext.request.contextPath}/member/modifyPhone.do",
            type: "post",
            data: {"beforePhone" : beforePhone, "afterPhone" : phone}
         }).done(function(rs){
            console.log(rs);
            if(rs == "success") {
               alert("전화번호가 변경되었습니다.");
               location.href = "${pageContext.request.contextPath}/member/getMypage.do";
            } else if(rs == "fail") {
               alert("전화번호가 변경되지않았습니다. 다시 시도해주세요.");
               $("#modifyPhoneModal").modal("hide");
            }
         }).fail(function(e){
            console.log(e);
         })
      }
   })
   
   /* 회원 확인 스크립트 */
   // 비밀번호 변경 버튼 클릭 시
   $("#modifyPwBtn").on("click", function(){
      $("#userPw").val("");
      $("#userPwCheck").val("");
      $("#checkMemberModal").modal("show");   
   })
   
   // 비밀번호 확인 버튼 클릭 시
   $("#checkMemberBtn").on("click", function(){
      let id = $("#userId").val();
      let pw = $("#userPw").val();
   
      if($("#userPw").val() == "" || $("#userPwCheck").val() == "") {
         alert("비밀번호를 입력해주세요.");
         return;
      } else if ($("#userPw").val() != $("#userPwCheck").val()) {
         alert("비밀번호를 동일하게 입력해주세요.");
         $("#userPw").val("");
         $("#userPwCheck").val("");
         return;
      }
      
      $.ajax({
         url: "${pageContext.request.contextPath}/member/checkMemberByIdAndPw.do",
         type: "post",
         data: {"id" : id, "pw" : pw}
      }).done(function(rs){
         console.log(rs);
         if(rs == "checkOk") {
            alert("회원정보가 확인되었습니다. 새로운 비밀번호를 설정해주세요.");
            $("#checkMemberModal").modal("hide");
            $("#pw").val("");
            $("#pwCheck").val("");
            $("#modifyPwModal").modal("show");
            pwDynamicCss();
            pwCheckFunc();
            pwState = false;
            pwCheckState = false;
         } else if(rs == "checkFail") {
            alert("회원정보를 찾을 수 없습니다. 다시 시도해주세요.");
            $("#checkMemberModal").modal("hide");
         }
      }).fail(function(e){
         console.log(e);
      })
   })
   
   
   /* 비밀번호 변경 스크립트 */
   // 비밀번호 css 함수
   function pwDynamicCss() {
      if($("#pw").val() == ""){
         $("#pw").css("border-bottom", "1px solid lightgrey");
         $("#pwTxt").html("비밀번호는 영문,숫자,특수문자를 포함하여 10자리 이상으로 설정해주세요.");
         $("#pwTxt").css("color", "grey");
         $("#pw").focus(function(){
            $("#pw").css("border-bottom", "2px solid grey");
         })   
         $("#pw").blur(function(){
            $("#pw").css("border-bottom", "1px solid lightgrey");
         })
         $("#pwCheck").css("border-bottom", "1px solid lightgrey");
         $("#pwCheckTxt").html("");
         $("#pwCheckTxt").css("color", "grey");
      } 
         
      // 회원가입 pw 입력창에 focus 했을 때
      $("#pw").focus(function(){
         pwCheckDynamicCss();
      })
         
      // 회원가입 pw 입력창에 keyup 했을 때
      $("#pw").keyup(function(){
         pwState = false;
         $("#pwTxt").html("");
         $("#pwCheck").val("");
         let regexPw = RegExp(/^[a-z0-9!@#^&*%$/?~]{10,}$/g);
            
         if(regexPw.test($("#pw").val())) {
            $("#pwTxt").html("비밀번호의 형식이 올바릅니다.");
            $("#pwTxt").css("color", "#18a8f1");
            $("#pw").css("border-bottom", "2px solid #18a8f1");
            $("#pw").blur(function(){
               $("#pw").css("border-bottom", "2px solid #18a8f1");
            })
            pwState = true;
         } else {
            if($("#pw").val() == "") {
               $("#pw").css("border-bottom", "2px solid grey");
               $("#pwTxt").html("비밀번호는 영문,숫자,특수문자를 포함하여 10자리 이상으로 설정해주세요.");
               $("#pwTxt").css("color", "grey");
               $("#pw").focus(function(){
                  $("#pw").css("border-bottom", "2px solid grey");
               })
               $("#pw").blur(function(){
                  $("#pw").css("border-bottom", "1px solid lightgrey");
               })   
            } else {
               $("#pwTxt").html("비밀번호의 형식이 올바르지 않습니다.");
               $("#pwTxt").css("color", "red");
               $("#pw").css("border-bottom", "2px solid red");
               $("#pw").blur(function(){
                  $("#pw").css("border-bottom", "2px solid red");
               })
            }
            pwState = false;
         }
         pwCheckDynamicCss();
      })    
   }
      
   // 비밀번호 css 함수
   function pwCheckDynamicCss() {
      if($("#pwCheck").val() == $("#pw").val()) {
         //|| $("#pwCheck").val() == ""
         if($("#pw").val() == "") {
            $("#pwCheckTxt").html("");
            $("#pwCheck").css("border-bottom", "1px solid lightgrey");
            $("#pwCheck").focus(function(){
               $("#pwCheck").css("border-bottom", "2px solid grey");
            })
            $("#pwCheck").blur(function(){
               $("#pwCheck").css("border-bottom", "1px solid lightgrey");
            })
         } else {
            $("#pwCheckTxt").html("비밀번호가 일치합니다.");
            $("#pwCheckTxt").css("color", "#18a8f1");
            $("#pwCheck").css("border-bottom", "2px solid #18a8f1");
            $("#pwCheck").blur(function(){
               $("#pwCheck").css("border-bottom", "2px solid #18a8f1");
            })
            pwCheckState = true;
         }
      } else {
         $("#pwCheckTxt").html("입력한 비밀번호와 일치하지 않습니다.");
         $("#pwCheckTxt").css("color", "red");
         $("#pwCheck").css("border-bottom", "2px solid red");
         $("#pwCheck").blur(function(){
            $("#pwCheck").css("border-bottom", "2px solid red");
         })
         pwCheckState = false;
      }
   }
      
   // 비밀번호 확인 focus, keyup 함수
   function pwCheckFunc() {
      // pwCheck 입력창에 focus 했을 때
      $("#pwCheck").focus(function(){
         pwCheckDynamicCss();
      })
         
      // pwCheck 입력창에 keyup 했을 때
      $("#pwCheck").keyup(function(){
         pwCheckDynamicCss();
      })
   }
   
   // 비밀번호 변경 버튼 클릭 시
   $("#modifyPwCompleteBtn").on("click", function(){
      let id = $("#userId").val();
      let pw = $("#pw").val();
      
      if(pwState == false) {
         alert("비밀번호를 형식에 맞게 입력해주세요.");
         return;
      } else if (pwCheckState == false) {
         alert("비밀번호를 동일하게 설정해주세요.");
         return;
      }
      
      $.ajax({
         url: "${pageContext.request.contextPath}/member/modifyPw.do",
         type: "post",
         data: {"id" : id, "pw" : pw}
      }).done(function(rs){
         console.log(rs);
         if(rs == "success") {
            alert("비밀번호가 변경되었습니다. 변경된 비밀번호로 다시 로그인해주세요.");
            location.href = "${pageContext.request.contextPath}/member/logout.do";
         } else if(rs == "checkFail") {
            alert("비밀번호가 변경되지 않았습니다. 다시 시도해주세요.");
            $("#modifyPwModal").modal("hide");
         }
      }).fail(function(e){
         console.log(e);
      })
   })   
   
   
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