<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<title>공지사항</title>
<style>
	li {list-style: none; float: center; text-align: center; padding: 6px;}
</style>
</head>
<body>
	<div class="container">
        <div class="row mt-4">
            <div class="col-12 main_title_div">
                <h3>공지사항</h3>
            </div>
        </div>
        <div class="row mt-4">
            <c:if test="$admin_id != null">
            	<div class="col-12" style="text-align: right;">
            		<button type="button" id="writeBtn" class="btn btn-dark">글쓰기</button>
            	</div>
            </c:if>
        </div>
    	<form id="infoForm" action="${pageContext.request.contextPath}/info/infoList.do" method="post">
	        <div class="row mt-5">
	            <div class="col-12 list_all_div" style="height: 469px;">
	                <table class="table table-hover">
	                    <thead>
	                        <tr style="text-align: center;">
	                            <th class="col-1"><input type="checkbox" id="allcheck" name="allcheck"></th>
	                            <th class="col-5">제목</th>
	                            <th class="col-3">작성자</th> 
	                            <th class="col-3">작성일</th>
	                        </tr>
	                    </thead>
	                    <tbody id="infoList">
	                    	<c:choose> 
		                    	<c:when test="${empty list}">
		                        	<tr>
		                            	<td colspan="6" style="text-align: center;">등록된 공지가 없습니다.</td>
		                        	</tr>
		                        </c:when>
		                        <c:otherwise>
			                    	<c:forEach items="${list}" var="dto">
		                        		<tr class="infoList" style="text-align: center;">
		                            		<td style="text-align: center;"><input type="checkbox" class="checkOne" name="checkOne" value="${dto.seq_info}"></td>
		                            		<td><a href="${pageContext.request.contextPath}/info/toDetail.do?seq_info=${dto.seq_info}"></a>${dto.info_title}</td>
		                            		<td>관리자</td>
		                            		<td>${dto.info_written_date}</td>
		                        		</tr>
		                        	</c:forEach>
			                    </c:otherwise>
			                </c:choose>
	                    </tbody>
	                </table>
	            </div>
	        </div>
	    </form>
		<div class="col-9 search_plus_div">
            <div class="col-12" style="text-align: center;">
            	<select>
                    <option selected>제목</option>
                </select>
            	<input type="text" placeholder="검색어를 입력해주세요." id="searchByTitle" name="searchByTitle">
            	<button type="button" id="searchBtn" class="btn btn-dark">검색</button>
            </div>
        </div>
    </div>
    <script>
	    document.getElementById("writeBtn").onclick = function() {
			location.href = "${pageContext.request.contextPath}/info/toWrite.do";
		}
    </script>
</body>
</html>