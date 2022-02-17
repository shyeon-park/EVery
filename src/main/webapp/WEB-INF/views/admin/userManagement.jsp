<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVery 관리자</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"
   integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
   <link rel="icon" href="/resources/images/EVery_Favicon.png"><!-- Favicon 이미지 -->
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


/* 탭 영역 */
#tab {
   /*
   width: 80%;
   margin: auto;*/
}

.tabmenu {
   text-align: center;
   cursor: pointer;
   /*border-bottom: 2px solid #333;*/
   padding: 20px;
   transition: 0.1s;
}
/*
   border-left: 1px solid #ccc;
   border-right: 1px solid #ccc;
   border-top: 2px solid #ccc;*/


.tabmenu:hover {
   color: #fff;
   /*backgrond-color: #ccc;*/
}

.tabmenu.current {
   /*background: #333;
   color: #fff;*/
   /*
   border-top: 2px solid #333;
   border-left: 2px solid #333;
   border-right: 2px solid #333;
   border-bottom: 0;*/
   color: #fff;
   background: #333;
   /*
   border-left: 2px solid #ccc;
   border-right: 2px solid #ccc;*/
   font-weight: bold;
   /*border-top-left-radius: 10px;*/
   /*border-top-right-radius: 5px;*/
}


.tabContents {
	padding-top: 50px;
	padding-bottom: 50px;
   /*
   border-left: 1px solid #333;
   border-right: 1px solid #333;*/
   /*border-bottom: 1px solid #333;*/
   display: none;
}

.tabContents.current {
   display: block;
   /*
   border-left: 2px solid #ccc;
   border-right: 2px solid #ccc;*/
   border-top: 2px solid grey;
   /*border-bottom: 2px solid grey;*/
}


.page-link {
   color: #fff;
   background-color: #333;
}

.page-link:hover {
   color: grey;
   background-color: #ccc;
}

/* 알림 */
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
            <a href="${pageContext.request.contextPath}/admin/getAdminUser.do"><img src="/resources/images/a_logo.png" width="80px"></a>
         </div>
         <div class="col-xl-1 d-none d-xl-block navi-menu">
            <a href="${pageContext.request.contextPath}/admin/getAdminUser.do">회원관리</a>
         </div>
         <div class="col-xl-1 d-none d-xl-block navi-menu">
            <a href="${pageContext.request.contextPath }/blacklist/toBlacklist.do">블랙리스트</a>
         </div>
         <div class="col-xl-1 d-none d-xl-block navi-menu">
            <a href="${pageContext.request.contextPath}/admin/columManager.do">컬럼관리</a>
         </div>
         <div class="col-xl-1 d-none d-xl-block navi-menu">
            <a href="${pageContext.request.contextPath}/review/toAdReview.do">댓글관리</a>
         </div>
         <div class="col-xl-1 d-none d-xl-block navi-menu">
            <a href="${pageContext.request.contextPath }/admin/getClientSupport.do">고객지원</a>
         </div>
         <c:choose>
         	<c:when test="${!empty adminLoginSession}">
         		<div class="col-xl-4 col-8 navi-menu"></div>
         		<div class="col-xl-1 d-none d-xl-block navi-menu">
         			<a href="${pageContext.request.contextPath}/admin/adminLogout.do">로그아웃</a>
         		</div>
         		
        	 </c:when>
        	 <c:otherwise>
        	 	<div class="col-xl-6 col-8 navi-menu"></div>
        	 </c:otherwise>
         </c:choose>
         <c:choose>
			  	<c:when test="${!empty adminLoginSession}">
			  		<div class="col-xl-1 col-1 navi-menu" id="bellBox">
			  			<a data-bs-toggle="modal" data-bs-target="#bellModal" id="bell" onclick="ws.send('getUncheckedList');"><img src="/resources/images/alarm.png" width="24px"
                		height="24px"></a>
                		<div id ="bell_text"></div>
			  		</div>
				</c:when>
			</c:choose>
         <div class="col-xl-0 col-1 d-xl-none navi-menu">
            <a id="btn_navi_menu"><img src="/resources/images/menu.png" width="20px" height="24px"></a>
         </div>
      </div>
   </nav>
   <div class="row navi-onButtons">
      <div class="col-12">
         <a href="${pageContext.request.contextPath}/admin/getAdminUser.do">회원관리</a>
      </div>
      <div class="col-12">
         <a href="${pageContext.request.contextPath }/blacklist/toBlacklist.do">블랙리스트</a>
      </div>
      <div class="col-12">
         <a href="${pageContext.request.contextPath}/admin/columManager.do">컬럼관리</a>
      </div>
      <div class="col-12">
         <a href="${pageContext.request.contextPath }/admin/getClientSupport.do">고객지원</a>
      </div>
      <div class="col-12">
         <a href="${pageContext.request.contextPath }/admin/adminLogout.do">로그아웃</a>
      </div>
   </div>

   <div class="main">
      <div class="row infoDiv"
            style="padding-top: 50px; padding-bottom: 50px; padding-left: 0px; paddinf-right: 0px;">
         <div class="col-12" style="text-align: center;">
            <h2>관리자 회원관리</h2>
         </div>
      </div>


      <!-- 탭메뉴 -->
      <div class="row infoDiv" id="tab">
         <div class="col-6 tabmenu current" data-tab="userInfoManage">회원관리</div>
         <div class="col-6 tabmenu" data-tab="columnistManage">칼럼리스트 관리</div>
      </div>
      
      <!-- 회원관리 영역 -->
      <div class="tabContents infoDiv current" id="userInfoManage">
         <div style="width: 80%; margin: auto;">

            <div class="row">
               <div class="col-12">
                  <h3 style="text-decoration: underline;">회원관리</h3>
               </div>
            </div>

            
            <div class="userTable" style="width: 100%; overflow-x: scroll">
               <table class="table table-hover">
                  <thead>
                     <tr style="text-align: center;">
                        <th scope="col"></th>
                        <th scope="col">번호</th>
                        <th scope="col">아이디</th>
                        <th scope="col">닉네임</th>
                        <th scope="col">가입일</th>
                        <th scope="col">컬럼니스트 여부</th>
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
      <div class="tabContents infoDiv" id="columnistManage">
      	 <div style="width: 80%; margin: auto;">
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
                          <button type='button' class='btn' id='approval'>승인</button>
                      </div>
                      <div>
                         <button type='button' class='btn' id='reject'>거부</button>
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
                         <button type='button' class='btn' id='releaseOfAuthority'>권한해제</button>
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
   /* 회원관리 영역 */
   $(document).ready(function(){
      getMemberList(1);   
   })
   
   // 마이페이지 content 바꾸는 함수
   /*function openContent(evt, content) {
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
   document.getElementById("defaultOpen").click();*/
   
   $('.tabmenu').click(function() {
      var tab_id = $(this).attr("data-tab");
      console.log(tab_id);
      
      if(tab_id == "userInfoManage") {
         getMemberList(1);
      }
      
      $('.tabmenu').removeClass('current');
      $('.tabContents').removeClass('current');

      $(this).addClass('current');
      $("#" + tab_id).addClass('current');
   })
   
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
            if(list.identification_num == 0) {
               list.identification_num = "N";
            } else {
               list.identification_num = "Y";
            }
            let userInfo = "<tr style='text-align: center'>" + "<td><input type='checkbox' class='form-check-input' name='checkUser' value='" + list.id + "'></td>" +
                        "<td>" + seq + "</td>" +
                        "<td>" + list.id + "</td>" +
                        "<td>" + list.nickname + "</td>" +
                        "<td>" + list.signup_date + "</td>" +
                        "<td>" + list.identification_num + "</td></tr>";
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
   
   
      /* 컬럼리스트 관리 영역 */
      
   ws = new WebSocket("ws://13.209.89.225:8080/column");

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
   
 
   <!-- modal script -->
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
   
    //메세지수신
    ws.onmessage = function(e) {
             let msgObj = JSON.parse(e.data);
         	notCheckedcount = msgObj.notCheckedcount
			//console.log("클라이언트가 확인 안한 메세지 개수는 "+ notCheckedcount);
			$("#bell_text").empty();
			$("#footerBtnAdd").empty();
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
             
     		//새로운 메세지 리스트 출력
				if(msgObj.category == "getUncheckedList"){
					let uncheckedList = msgObj.uncheckedList
					$("#listPrint").empty();
					$("#footerBtnAdd").empty();
					for(newMsg of uncheckedList){
						let newTr = $("<tr>");
						let aa = "<td class='text-center'><input type='checkbox' name = 'newMsg' value='"+newMsg.seq_message+"'></td>"
								  +"<td class=''>"+newMsg.written_date+"</td>"
								  + "<td class=''>"+newMsg.msg+"</td>"
					    newTr = newTr.append(aa);		
						$("#listPrint").append(newTr);
					}	
					
					let newBtn =  "<button type='button' class='btn btn-primary' onclick='messageCheck();'>확인</button>"
					$("#footerBtnAdd").append(newBtn);
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
					$("#footerBtnAdd").append(newBtn);
				}
   }
    
   
   

 	
	</script>
</body>
</html>