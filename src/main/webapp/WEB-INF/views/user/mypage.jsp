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

<title>마이페이지</title>
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
   width: 82.6vw;
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
	padding: 80px;
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
	/*border-bottom: 2px solid #333;*/
}


/* 내정보 css */
.userInfo {
   border: none;
   border-bottom: 2px solid lightgrey;
   border-radius: 0;
}

.userInfo:focus {
   box-shadow: 0 0 0 0;
   outline: none;
}

.userInfo:disabled {
   background-color: #fff;
}

.userPhone {
   text-align: center;
}

/* 모달창 css */
.modalRow {
   margin-top: 20px;
}

.userInfoModal{
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
            <a href="">고객지원</a>
         </div>
         <c:choose>
            <c:when test="${empty loginSession}">
            </c:when>
            <c:when test="${!empty loginSession}">
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
               <div class="col-xl-3 col-6 navi-menu"></div>
            </c:when>
         </c:choose>

         <c:choose>
            <c:when test="${!empty loginSession}">
               <div class="col-xl-1 d-none d-xl-block navi-menu" id="bell">
                  <!--  <div id = "bell">-->
                  <i class="far fa-bell" data-bs-toggle="modal"
                     data-bs-target="#bellModal" id="bell"></i>
                  <div id="bell_text"></div>
               </div>
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
            <a href="${pageContext.request.contextPath}/bookmark/toBookmark.do"
               id=""><img src="/resources/images/favorite.png" width="24px"
               height="24px"></a>
            <!--             <a href="">cart <span id="cartCount" class="badge bg-dark rounded-pill">2</span></a> -->
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
               <a href="#">로그인</a>
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
      <div class="row infoDiv" style="padding-top: 50px; padding-bottom: 50px; padding-left: 0px; paddinf-right: 0px;">
         <div class="col-12" style="text-align: center;">
            <h1>마이페이지</h1>
         </div>
      </div>
      
      <div class="row infoDiv" id="tab">
         <div class="col-4 tabmenu current" data-tab="myInfoContent">내정보</div>
         <div class="col-4 tabmenu" data-tab="myReviewsContent" onclick="getCommentList(1);">내 댓글 조회</div>
         <div class="col-4 tabmenu" data-tab="myBookmarkContent" onclick="getBookmarkList(1);">즐겨찾기 조회</div>
         
      </div>
      
      <div class="tabContents infoDiv current" id="myInfoContent">
         <div style="width: 70%; margin: auto;">
            <div class="row">
               <div class="col-12">
                  <h3 style="text-decoration: underline;">내정보</h3>
               </div>
            </div>
            
            
               <div class="row">
                  <div class="col-xl-3 col-12 mt-4" style="position: relative;">
                     <label class="form-check-label" style="position: relative; left: 50%; top: 50%; transform: translate(-50%, -50%);">아이디</label>
                  </div>
                  <div class="col-xl-6 col-12 mt-4">
                     <input type="text" class="form-control userInfo" id="userId" value="${loginSession.id}" disabled>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xl-3 col-12 mt-4" style="position: relative;">
                     <label class="form-check-label" style="position: relative; left: 50%; top: 50%; transform: translate(-50%, -50%);">닉네임</label>
                  </div>
                  <div class="col-xl-6 col-12 mt-4">
                     <input type="text" class="form-control userInfo" id="userNickname" value="${loginSession.nickname}" disabled>
                  </div>
                  <div class="col-xl-3 col-12 mt-4">
                     <button type="button" class="btn btn-dark col-12" id="modifyNicknameBtn">닉네임 변경</button>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xl-3 col-12 mt-4" style="position: relative;">
                     <label class="form-check-label" 
                     style="position: relative; left: 50%; top: 50%; transform: translate(-50%, -50%);">전화번호</label>
                  </div>
                  <div class="col-xl-2 col-12 mt-4">
                     <input type="text" class="form-control userInfo userPhone" id="userPhoneNum1" disabled>
                  </div>
                  <div class="col-xl-2 col-12 mt-4">
                     <input type="text" class="form-control userInfo userPhone" id="userPhoneNum2" disabled>
                  </div>
                  <div class="col-xl-2 col-12 mt-4">
                     <input type="text" class="form-control userInfo userPhone" id="userPhoneNum3" disabled>
                  </div>
                  <div class="col-xl-3 col-12 mt-4">
                     <button type="button" class="btn btn-dark col-12" id="modifyPhoneBtn">핸드폰 변경</button>
                  </div>
                  <input type="text" id="userPhone" value="${loginSession.phone}" hidden>
               </div>
               <div class="row mt-4">
                  <div class="col-12" style="text-align: right;">
                     <button type="button" class="btn btn-danger" id="applicationColStBtn">컬럼니스트 신청</button>
                     <c:if test="${loginSession.pw != null}">
                        <button type="button" class="btn" id="modifyPwBtn">비밀번호 변경</button>
                     </c:if>
                     <button type="button" class="btn" id="memberWithdrawalBtn">회원탈퇴</button>
                  </div>
               </div>
            
         </div>
      </div>
      
      <!-- 댓글영역  -->
      <div class="tabContents infoDiv" id="myReviewsContent">
         <div class="review-container" style="height:90%;">
            <div class="row mb-3">
               <div class="col"><h3 style="text-decoration: underline;">내 댓글 관리</h3></div>
            </div>
            <!-- 내 댓글 추가 -->
         </div> 
         <div class="paging-container" style="height:10%;">
            <!-- 페이징 추가 -->
         </div>
      </div>
      <script>
      /* 자신이 쓴 댓글 불러오기 */
      function getCommentList(currentPage){
         let data = {"searchKey" : "${loginSession.id}", "selected" : "id"};
         $.ajax({
            type : "post"
            ,data : data
            , url : "${pageContext.request.contextPath}/review/searchByKey.do?currentPage=" + currentPage
         }).done(function (data){
            // 기존에 댓글이 있다면 모두 비워주는 작업 
            $(".review-container").empty();
            $(".paging-container").empty();
            if(data.byIdList == ""){
               alert("검색 내용이 없습니다.");
               let commentNull = "<div><h4>검색 내용이 없습니다.</h4></div>";
               $(".review-container").append(commentNull);
            }else{
               let comment = "<div class='row mb-3'><div class='col'><h3 style='text-decoration: underline;'>내 댓글 관리</h3></div></div>";
               $(".review-container").append(comment);  
               
               for(let dto of data.byIdList){
               comment = "";   
               comment = "<div class='row comment-header' style='border-bottom: 2px solid lightgrey;'>"
                        + "<div class='col-5'>" + dto.written_date + "</div>"
                        + "<div class='col-5'>" + dto.station + "</div>"
                        + "<div class='col-2 d-flex justify-content-end' style='text-align:center'><button type='button' class='btn btn-dark deleteCmt' value='" + dto.seq_review + "'>삭제</button></div>"
                        + "<div class='col-12 mt-2' style='margin-bottom:5px;'>" + dto.review + "</div>"
                        + "</div>"
                  $(".review-container").append(comment);         
               }
               
               let startNavi = data.settingMap.startNavi;
               let endNavi = data.settingMap.endNavi;
               
               let paging = "<nav class='col' aria-label='Page navigation example'>"
                        + "<ul class='pagination justify-content-center'>";
                        
                        if(data.settingMap.needPrev == true){
                           paging += "<li class='page-item'><a class='page-link' style='color:black;' onclick='getCommentList(" + startNavi + "- 1)'><</a></li>";
                        }
                        
                        for(var i= startNavi; i<= endNavi; i++){
                           paging += "<li class='page-item'><a class='page-link' style='color:black;' onclick='getCommentList(" + i + ")'>" + i + "</a></li>";
                        }
                        
                        if(data.settingMap.needNext == true){
                           paging += "<li class='page-item'><a class='page-link' style='color:black;' onclick='getCommentList(" + endNavi + "+ 1)'>></a></li>";
                        }
                        
               paging += "</ul>" + "</nav>";      
                        
               $(".paging-container").append(paging);
            
         }
         }).fail(function(e){
            console.log(e);
         });
      }
      
      /* 삭제버튼을 눌렀을 때 */ 
      $(document).on("click",".deleteCmt", function(e){
         let rs = confirm("삭제하시겠습니까?");
         if(!rs){
            return;
         }
         $.ajax({
            type : "get"
            ,url : "${pageContext.request.contextPath}/review/delete.do?seq_review=" + $(e.target).val()
         }).done(function(rs){
            if(rs == "success"){
               getCommentList(1);
            }else if(rs == "fail"){
               alert("삭제에 실패하였습니다.");
            }
         }).fail(function(e){
            console.log(e);
         });
      });
      </script>
      
      
      <!-- 즐겨찾기 영역 -->
      <div class="tabContents infoDiv" id="myBookmarkContent">
         <div class="bookmark-container" style="height:90%;">
            <div class="row mb-3">
               <div class="col-12"><h3 style="text-decoration: underline;">즐겨찾기</h3></div>
            </div>
            <!-- 추가 -->
         </div>
         <div class="bookmark-paging" style="height:10%;">
            <!-- 페이징 추가 -->
         </div>
      </div>
      <script>
      // 즐겨찾기 목록 불러오는 함수
      function getBookmarkList(currentPage){
          $.ajax({
             type : "get"
             , url : "${pageContext.request.contextPath}/bookmark/getList.do?id=${loginSession.id}&currentPage=" + currentPage
          }).done(function(data){
             $(".bookmark-container").empty();
             $(".bookmark-paging").empty();
             if(data.bookmarkList == ""){
                let bookmarkNull = "<div class='emptyDiv' style='text-align:center; height:100px; padding-top:40px;'><h4>즐겨찾기목록이 없습니다.</h4></div>";
                $(".bookmark-container").append(bookmarkNull);
             }else{
               let bookmark = "<div class='row mb-3'>"
                        + "<div class='col-10'><h3 style='text-decoration: underline; margin:0px;'>즐겨찾기</h3></div>"
                        + "<div class='col-2 d-flex justify-content-center'><button type='button' class='btn btn-secondary btn-deleteAll'>전체삭제</button></div>"
                        + "</div>";
               $(".bookmark-container").append(bookmark);         
                for(let dto of data.bookmarkList){
                      bookmark = "";
                         bookmark = "<div class='row mt-3 bookmark-header' style='border-bottom:1px solid black;'>"
                               + "<div class='col-10 d-flex justify-content-start'>"
                               + "<a style='font-size:20px' href='${pageContext.request.contextPath}/station/toGetStation?station=" + dto.station + "'>" + dto.station + "</a>"
                               + "</div>"
                               + "<div class='col-2 d-flex justify-content-center'>"
                               + "<button type='button' class='btn btn-dark btn-delete' value='" + dto.station +"'>삭제</button>"
                               + "</div>"
                             
                               + "<div class='col-12'>상세주소&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;" + dto.rdnmadr + "</div>"
                               + "<div class='col-12'>운영시간&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;" + dto.useTime + "</div>"
                               + "<div class='col-6 d-flex justify-content-start'><span class='badge bg-primary mb-3'>"+dto.institutionNm+"</span></div>"
                               + "<div class='col-6 d-flex justify-content-end'><span class='badge bg-primary mb-3'>"+dto.phoneNumber+"</span></div>"
							+ "</div>"
                   $(".bookmark-container").append(bookmark);
                }
                
                let startNavi = data.settingMap.startNavi;
                let endNavi = data.settingMap.endNavi;
                
                let paging = "<nav class='col' aria-label='Page navigation example'>"
                         + "<ul class='pagination justify-content-center'>";
                         
                         if(data.settingMap.needPrev == true){
                            paging += "<li class='page-item'><a class='page-link' style='color:black;' onclick='getBookmarkList(" + startNavi + "- 1);'><</a></li>";
                         }
                         
                         for(var i= startNavi; i<= endNavi; i++){
                            paging += "<li class='page-item'><a class='page-link' style='color:black;' onclick='getBookmarkList(" + i + ");'>" + i + "</a></li>";
                         }
                         
                         if(data.settingMap.needNext == true){
                            paging += "<li class='page-item'><a class='page-link' style='color:black;' onclick='getBookmarkList(" + endNavi + "+ 1);'>></a></li>";
                         }
                         
                   paging += "</ul>" + "</nav>";      
                         
                   $(".bookmark-paging").append(paging);
             }
          }).fail(function(e){
             console.log(e);
          })
       }
      
      // 전체 삭제 버튼
       $(document).on("click",".btn-deleteAll", function(){
          if($(".emptyDiv").html() == "<h4>즐겨찾기목록이 없습니다.</h4>"){
             alert("삭제할 항목이 없습니다.");
             return;
          }
          let rs = confirm("삭제하시겠습니까?");
         if(!rs){
            return;
         }
         $.ajax({
            type : "get"
            , url : "${pageContext.request.contextPath}/bookmark/deleteAll.do?id=${loginSession.id}"
         }).done(function(rs){
            if(rs == "success"){
               getBookmarkList(1);
            }else if(rs == "fail"){
               alert("삭제에 실패하였습니다.");
            }
         }).fail(function(e){
            console.log(e);
         });
       })
       
       // 삭제 버튼
       $(document).on("click",".btn-delete", function(e){
          if($(e.target).html() == "삭제"){
            let rs = confirm("삭제하시겠습니까?");
            if(!rs){
               return;
            }
            $.ajax({
               type : "get"
               , url : "${pageContext.request.contextPath}/bookmark/delete.do?station=" + $(e.target).val()
            }).done(function(rs){
               if(rs == "success"){
                  getBookmarkList(1);
               }else if(rs == "fail"){
                  alert("삭제에 실패하였습니다.");
               }
            }).fail(function(e){
               console.log(e);
            });
          }
       })
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
         <div class="col-6">ⓒ EVery Inc. All Rights Reserved.</div>
         <div class="col-6 foot-bottom-right">
            <a href="">관리자</a>
         </div>
      </div>
   </div>
   
   
   <!-- 닉네임 변경 모달 -->
      <div class="modal fade" id="modifyNicknameModal" aria-hidden="true"
         data-bs-backdrop="static" data-bs-keyboard="false"
         aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
         <div
            class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalToggleLabel2">닉네임 변경</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body" style="margin-top: 30px; margin-bottom: 30px;">
                  <div class="container">
                     <div class="row">
                        <div class="col-12">
                           <p style="color: #333; font-size: 14px;">새로 변경할 닉네임을 입력해주세요.</p>
                        </div>
                     </div>
                     <div class="row modalRow">
                        <div class="col-8">
                           <input type="text" id="nickname" name="nickname" class="form-control userInfoModal">
                        </div>
                        <div class="col-4" style="text-align: center;">
                           <button type="button" id="checkNicknameBtn" class="btn btn-dark">중복확인</button>
                        </div>
                        <p id="nicknameTxt" style="font-size: 12px; margin-bottom: 0; margin-top: 4px; color: lightgrey;">
                        </p>
                     </div>
                  </div>
               </div>
               <div class="modal-footer">
                  <div class="col-12" style="text-align: center;">
                     <button type="button" id="modifyNickCompleteBtn" class="btn btn-primary" style="width: 80%; margin: auto;">변경하기</button>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- 회원 확인 모달 -->
      <div class="modal fade" id="checkMemberModal" aria-hidden="true"
         data-bs-backdrop="static" data-bs-keyboard="false"
         aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
         <div
            class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalToggleLabel2">회원 확인</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body" style="margin-top: 30px; margin-bottom: 30px;">
                  <div class="container">
                     <div class="row">
                        <div class="col-12">
                           <p style="color: #333; font-size: 14px;">비밀번호 변경을 위해 먼저, 회원 확인을 진행해주세요.</p>
                        </div>
                     </div>
                     <div class="row modalRow">
                        <div class="col-12">
                           <label class="form-check-label memberLabel">비밀번호</label>
                        </div>
                        <div class="col-12">
                           <input type="password" id="userPw" name="pw" class="form-control userInfoModal">
                        </div>
                     </div>
                     <div class="row modalRow">
                        <div class="col-12">
                           <label class="form-check-label memberLabel">비밀번호 확인</label>
                        </div>
                        <div class="col-12">
                           <input type="password" id="userPwCheck" name="pwCheck" class="form-control userInfoModal">
                        </div>
                     </div>
                  </div>
               </div>
               <div class="modal-footer">
                  <div class="col-12" style="text-align: center;">
                     <button type="button" id="checkMemberBtn" class="btn btn-primary" style="width: 80%; margin: auto;">회원 확인</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <!-- 비밀번호 변경 모달 -->
      <div class="modal fade" id="modifyPwModal" aria-hidden="true"
         data-bs-backdrop="static" data-bs-keyboard="false"
         aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
         <div
            class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalToggleLabel2">비밀번호 변경</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body" style="margin-top: 30px; margin-bottom: 30px;">
                  <div class="container">
                     <div class="row">
                        <div class="col-12">
                           <p style="color: #333; font-size: 14px;">새로운 비밀번호를 입력해주세요.</p>
                        </div>
                     </div>
                     <div class="row modalRow">
                        <div class="col-12">
                           <label class="form-check-label memberLabel" id="pwLabel">새 비밀번호</label>
                        </div>
                        <div class="col-12">
                           <input type="password" id="pw" class="form-control userInfoModal">
                           <p id="pwTxt" class="txtCls pwTxt" style="font-size: 10px; margin-bottom: 0; margin-top: 4px;"></p>
                        </div>
                     </div>
                     <div class="row modalRow">
                        <div class="col-12">
                           <label class="form-check-label memberLabel" id="pwCheckLabel">새 비밀번호 확인</label>
                        </div>
                        <div class="col-12">
                           <input type="password" id="pwCheck" class="form-control userInfoModal">
                           <p id="pwCheckTxt" class="txtCls pwCheckTxt" style="font-size: 10px; margin-bottom: 0; margin-top: 4px;"></p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="modal-footer">
                  <div class="col-12" style="text-align: center;">
                     <button type="button" id="modifyPwCompleteBtn" class="btn btn-primary" style="width: 80%; margin: auto;">비밀번호 변경</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <!-- 휴대폰 변경 모달 -->
      <div class="modal fade" id="modifyPhoneModal" aria-hidden="true"
         data-bs-backdrop="static" data-bs-keyboard="false"
         aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
         <div
            class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalToggleLabel2">회원 휴대폰 인증</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body" style="margin-top: 30px; margin-bottom: 30px;">
                  <div class="container">
                     <div class="row">
                        <div class="col-12">
                           <p style="color: #333; font-size: 14px;">새로 변경할 전화번호를 입력해주세요.</p>
                        </div>
                     </div>
                     <div class="row modalRow">
                        <div class="col-3">
                           <select class="form-select userInfoModal" aria-label="Default select example" id="phoneNum1">
                              <option value="선택" selected>선택</option>
                              <option value="010">010</option>
                              <option value="011">011</option>
                              <option value="012">012</option>
                              <option value="017">017</option>
                              <option value="019">019</option>
                           </select>
                        </div>
                        <div class="col-3">
                           <input type="text" id="phoneNum2" class="form-control userInfoModal phoneNum" maxlength=4>
                        </div>
                        <div class="col-3">
                           <input type="text" id="phoneNum3" class="form-control userInfoModal phoneNum" maxlength=4>
                        </div>
                        <div class="col-3" style="text-align: center;">
                           <button type="button" id="sendSmsBtn" class="btn btn-dark">전송</button>
                        </div>
                        <p id="phoneTxt" style="font-size: 12px; margin-bottom: 0; margin-top: 4px; color: #333;"></p>
                        <input type="text" id="phone" hidden>
                     </div>
                     <div class="row modalRow" id="auth"></div>
                  </div>
               </div>
               <div class="modal-footer">
                  <div class="col-12" style="text-align: center;">
                     <button type="button" id="modifyPhoneCompleteBtn" class="btn btn-primary" style="width: 80%; margin: auto;">변경하기</button>
                  </div>
               </div>
            </div>
         </div>
      </div>

   <script>
   $(document).ready(function() {
      $('.tabmenu').click(function() {
         var tab_id = $(this).attr("data-tab");

         $('.tabmenu').removeClass('current');
         $('.tabContents').removeClass('current');

         $(this).addClass('current');
         $("#" + tab_id).addClass('current');
      })
      
      
   })
   
   
    ws = new WebSocket("ws://13.209.64.187:8080/column");
     //메세지수신
      ws.onmessage = function(e) {
         //console.log( e.data );
         let msgObj = JSON.parse(e.data);
         console.log(msgObj);
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