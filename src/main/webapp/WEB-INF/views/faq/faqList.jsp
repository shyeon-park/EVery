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
<title>FAQ</title>
<style>
	li {list-style: none; float: center; text-align: center; padding: 6px;}
</style>
</head>
<body>
	<div class="container">
        <div class="row mt-4">
            <div class="col-3 suv_title_div">
                <h3>FAQ</h3>
            </div>
        </div>
        <div class="row mt-4">
			<div class="col-12" style="text-align: right;">
				<button type="button" id="writeBtn" class="btn btn-dark">글쓰기</button>
			</div>
		</div>
    	<form id="faqForm" action="${pageContext.request.contextPath}/faq/faqList.do" method="post">
	        <div class="row mt-5">
	            <div class="col-12 list_all_div" style="height: 469px;">
	                <table class="table table-hover">
	                    <thead>
	                        <tr style="text-align: center;">
	                            <th class="col-1"><input type="checkbox" id="checkAll" name="checkAll"></th>
	                            <th class="col-5">제목</th>
	                            <th class="col-3">작성자</th> 
	                            <th class="col-3">작성일</th>
	                        </tr>
	                    </thead>
	                    <tbody id="faqList">
	                    	<c:choose> 
		                    	<c:when test="${empty list}">
		                        	<tr>
		                            	<td colspan="6" style="text-align: center;">등록된 질문이 없습니다.</td>
		                        	</tr>
		                        </c:when>
		                        <c:otherwise>
			                    	<c:forEach items="${list}" var="dto">
		                        		<tr class="faqList" style="text-align: center;">
		                            		<td style="text-align: center;"><input type="checkbox" class="checkOne" name="checkOne" value="${dto.seq_faq}"></td>
		                            		<td><a href="${pageContext.request.contextPath}/faq/toDetail.do?seq_faq=${dto.seq_faq}"></a>${dto.faq_title}</td>
		                            		<td>관리자</td>
		                            		<td>${dto.faq_written_date}</td>
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
			location.href = "${pageContext.request.contextPath}/faq/toWrite.do";
		}
    </script>
</body>
</html>