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
	position:relative;
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
#chrgtype{
position: absolute;
top:0px;
left: 0px;
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
		<div class="row" id="mainDIV">
			<div class="d-none" id="commentDIV">
				<div class="row">
					<div class="col-10" id="div-top-name"></div>
					<div class="col-2">
						<button type="button" class="btn btn-primary col-12"
							id="btn_close">닫기</button>
					</div>
				</div>

				<div id="chargeList"></div>

				<div id="cmt-showBox">
					<!-- 성식님 댓글부분 -->
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
			<div class="col-6">
				ⓒ EVery Inc. All Rights Reserved.	
			</div>
			<div class="col-6 foot-bottom-right">
				<a href="">관리자</a>	
			</div>
		</div>
		
	</div>
<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9cb655cdc9169e09018321558636d28d"></script>

	
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
			function addMarker(position,data) {
				
				if(data.institutionNm == '한국전력공사'){
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
			        position: position,
				    image : markerImage // 마커의 이미지
			    });

			    // 마커가 지도 위에 표시되도록 설정합니다
			    marker.setMap(map);
			    
			    kakao.maps.event.addListener(marker, 'click', function() {
			    	showStation();
			    	
			    	// 마커 클릭시 중앙좌표 추가해야됌
			    	
			    	
			    	let seq = 1;
			    	$('#chargeList').html("");
			    	
			    	$.ajax({
			    		url:"/station/getLiveStatin.do",
			    		data:{"chrstnNm":data.chrstnNm}
// 			    		timeout: 5000
			    	}).done(function(rs){
			    		selectStations = JSON.parse(JSON.stringify(rs));
			    		selectStations = selectStations.response.body.items;
			    		console.log(selectStations);
			    		hideLoading();
			    		$('#div-top-name').html("<h5>"+data.chrstnNm+"<h5>");
				    	for(selectStation of selectStations){
				    		let tempDiv = "<div class='row'>"+
					    				  "<div class='col-1' id='seq_"+seq+"'>"+
					    				  seq +
					    				  "</div>";
					    				  if(!selectStation.fastChrstnType==""){
					    					  tempDiv += "<div class='col-11' id='ChrstnType"+seq+"'>"+
									    				  selectStation.fastChrstnType +
									    				  "</div>";
					    				  }else{
					    					  tempDiv += "<div class='col-11' id='ChrstnType"+seq+"'>정보 없음</div>";
					    				  }
					    				  "</div>";
				    		$('#chargeList').append(tempDiv);
					    	seq++;
				    	}
// 				    	$('#cmt-showBox').html(댓글을 넣으시면됩니다.);
				    	//여기 성식님꺼 댓글을 불러온다.
				    	//
			    	}).fail(function(e){
			    		alert('해당 충전소의 실시간 정보를 가져오지 못했습니다.');
			    		hideLoading();
			    	});
				});
			    // 생성된 마커를 배열에 추가합니다
			    markers.push(marker);
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
				showLoading();
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
							console.log(items);
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
								addMarker(new kakao.maps.LatLng(data.latitude, data.longitude),data);
								datas.push(data);
								data = {};
								}console.log(datas);
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