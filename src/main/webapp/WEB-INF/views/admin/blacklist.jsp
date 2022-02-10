<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>블랙리스트</title>
<style>
li {
	list-style: none;
	float: center;
	text-align: center;
	padding: 6px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row mt-4">
			<div class="col-3 suv_title_div">
				<h3>블랙리스트</h3>
			</div>
		</div>
		<div class="row mt-4" id="content">
			<div class="col">
				<form id="blacklist">
					<table class="table table-hover">
						<thead>
							<tr style="text-align: center;">
								<th class="col-1"><input type="checkbox" id="checkAll"></th>
								<th class="col-2">아이디</th>
								<th class="col-2">닉네임</th>
								<th class="col-4">사유</th>
								<th class="col-3">추가일</th>
							</tr>
						</thead>
						<tbody id="blacklist">
							<c:choose>
								<c:when test="${empty list}">
									<tr>
										<td colspan="6" style="text-align: center;">등록된 블랙리스트가
											없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="dto">
										<tr class="blacklist" style="text-align: center;">
											<td><input type="checkbox" class="checkOne"
												name="checkOne" value="${dto.id}"></td>
											<td>${dto.id}</td>
											<td>${dto.nickname}</td>
											<td>${dto.reason}</td>
											<td>${dto.black_date}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</form>
			</div>
		</div>
		<div class="row mt-2">
			<div class="col-3" style="text-align: center;">
				<button type="button" id="btnToInsert" class="brn btn-dark">추가</button>
				<button type="button" id="modifyBtn" class="brn btn-dark">수정</button>
				<button type="button" id="deleteBtn" class="brn btn-dark">삭제</button>
			</div>
		</div>
	</div>
	<script>
		// 추가 페이지 이동 요청
		$('#btnToInsert')
				.on(
						"click",
						function() {
							location.href = "${pageContext.request.contextPath}/blacklist/toInsert.do";
						})

		// 전체 선택
		$(document).ready(function(){
    		$("#checkAll").click(function() {
          		if($("#checkAll").is(":checked")) $("input[name=checkOne]").prop("checked", true);
          		else $("input[name=checkOne]").prop("checked", false);
      		});
    	});

		// 선택 삭제
		$(document).on('click', '#deleteBtn', function(e) {
			var cnt = $("input[name='checkOne']:checked").length;
			var arr = new Array();

			if (cnt == 0) {
				alert("선택된 항목이 없습니다.");
				return;
			} else {
				if (confirm("정말 삭제하시겠습니까 ?") == true) {

					$.ajax({
						url : "blacklist/delete.do",
						type : "POST",
						data : {
							id : id
						},
						success : function(res) {
							alert('삭제되었습니다.');
							location.href = 'blacklist/toBlacklist.do';
						}
					})
				}
			}
		});

		// 선택 수정
		$(document).on('click', '#modifyBtn', function(e) {

			var cnt = $("input[name='checkOne']:checked").length;

			if (cnt == 0) {
				alert("선택된 항목이 없습니다.");
				return;
			} else {
				const reason = $("#reason").val().trim();

				if (reason == '') {
					alert('내용을 입력해주세요.');
					return;
				}

				//ajax 통신을 사용해 서버에 데이터를 전송하기 위해 
				//폼데이터 객체를 생성함
				//append를 통해서 프로퍼티에 바인딩이 가능하도록 세팅한다.
				var formData = new FormData();
				formData.append("reason", reason);

				//ajax로 파일전송 폼데이터를 보내기위해
				//enctype, processData, contentType 이 세가지를 반드시 세팅해야한다.
				$.ajax({
					enctype : 'multipart/form-data',
					processData : false,
					contentType : false,
					cache : false,
					url : "blacklist/modify.do",
					data : formData,
					type : "POST",
					success : function(res) {
						alert('수정되었습니다.');
						location.href = 'blacklist/toBlacklist.do';
					}
				})
			}
		});
	</script>
</body>
</html>