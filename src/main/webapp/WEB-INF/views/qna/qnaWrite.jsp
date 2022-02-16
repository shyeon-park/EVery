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
	
<!-- 서머노트 -->
<script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">

<title>QNA</title>
</head>
<body>
	<form id="qnaForm" action="${pageContext.request.contextPath}/qna/write.do" method="post" enctype="multipart/form-data">
		<div class="container">
			<div class="row">
				<div class="col d-flex justify-content-center">
					<h2>글쓰기</h2>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="title" class="form-label">제목</label>
			  		<input type="text" class="form-control" id="title" name="qna_title" placeholder="제목을 입력하세요.">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="content" class="form-label">내용</label>
			  		<textarea class="form-control" id="content" name="qna_content" rows="10" placeholder="내용을 입력하세요."></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col">
			  		<input type="text" class="form-control" name="id" value="${loginSession.id}" hidden>			  		
				</div>
			</div> 
			<div class="row">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-secondary" id="cancelBtn">취소</button>
					<button type="button" class="btn btn-primary" id="submitBtn">등록</button>
				</div>
			</div>
		</div>
	</form>
	<script>
	// 취소
	$("#cancelBtn").on("click", function(e){
		location.href = "${pageContext.request.contextPath}/qna/toMyList.do"
	});
	</script>
</body>
</html>