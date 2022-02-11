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
<div class="container">
	<div class="row">
		<div class="col">
			<h3>문의 작성</h3>
		</div>
	</div>
	<form id="qnaForm" action="${pageContext.request.contextPath}/qna/write.do" method="post" enctype="multipart/form-data">
		<div class="row">
			<div class="col">
				<label for="title" class="form-label">제목</label>
		  		<input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요.">
			</div>
		</div>
		<div class="row">
			<div class="col">
					<textarea class="summernote" name="editordata"></textarea>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<input type="text" class="form-control" name="writer_nickname" value="${loginSession.nickname}" hidden>
			  	<input type="text" class="form-control" name="writer_id" value="${loginSession.id}" hidden>			  		
			</div>
		</div>
		<div class="row">
			<div class="col d-flex justify-content-end">
				<button type="button" class="btn btn-secondary" id="cancelBtn">취소</button>
				<button type="submit" class="btn btn-primary" id="submitBtn">등록</button>
			</div>
		</div>
	</form>
<div>
<script>
$(document).ready(function() {

	var toolbar = [
		    // 글꼴 설정
		    ['fontname', ['fontname']],
		    // 글자 크기 설정
		    ['fontsize', ['fontsize']],
		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // 글자색
		    ['color', ['forecolor','color']],
		    // 표만들기
		    ['table', ['table']],
		    // 글머리 기호, 번호매기기, 문단정렬
		    ['para', ['ul', 'ol', 'paragraph']],
		    // 줄간격
		    ['height', ['height']],
		    // 그림첨부, 링크만들기, 동영상첨부
		    ['insert',['picture','link','video']],
		    // 코드보기, 확대해서보기, 도움말
		    ['view', ['codeview','fullscreen', 'help']]
		  ];

	var setting = {
            height : 300,
            minHeight : null,
            maxHeight : null,
            focus : true,
            lang : 'ko-KR',
            toolbar : toolbar,
            callbacks : { //여기 부분이 이미지를 첨부하는 부분
            onImageUpload : function(files, editor,
            welEditable) {
            for (var i = files.length - 1; i >= 0; i--) {
            uploadSummernoteImageFile(files[i],
            this);
            		}
            	}
            }
         };

        $('#summernote').summernote(setting);
    });

</script>
</body>
</html>