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
</head>
<body>
	<form id="infoForm" action="${pageContext.request.contextPath}/info/modify.do" method="post" enctype="multipart/form-data">
		<div class="container">
			<div class="row">
				<div class="col d-flex justify-content-center">
					<h2>공지사항</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label for="title" class="form-label">제목</label>
			  		<input type="text" class="form-control" id="title" name="title" value="${infoDTO.info_title}" readonly>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="content" class="form-label">내용</label>
			  		<textarea class="form-control" id="content" name="content" rows="10" readonly>${infoDTO.info_content}</textarea>
				</div>
			</div>
			<div class="row">
				<div class="col">
			  		<input type="text" class="form-control" name="writer_id" value="${infoDTO.admin_id}" hidden>			  		
				</div>
			</div> 
			<div class="row">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-secondary" id="backBtn">뒤로가기</button>
					<button type="submit" class="btn btn-primary" id="submitBtn">수정</button>
				</div>
			</div>
		</div>
	</form>
	<script>
		// 뒤로가기 
		$("#backBtn").on("click", function(){
			location.href = "${pageContext.request.contextPath}/info/toInfoList.do";
		});
	</script>
</body>
</html>