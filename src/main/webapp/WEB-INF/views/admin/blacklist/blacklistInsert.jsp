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
	<link rel="icon" href="/resources/images/EVery_Favicon.png"><!-- Favicon 이미지 -->
<title>블랙리스트 추가</title>
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
			<div class="col-12">
				<h3>블랙리스트 추가</h3>
			</div>
			<div class="col-9" style="text-align: right;">
				<button type="button" class="btn btn-dark" id="insertBtn">선택
					추가</button>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-12">
				<table class="table table-hover">
					<thead>
						<tr style="text-align: center;">
							<th class="col-1"><input type="checkbox" name="checkAll" id="checkAll"></th>
							<th class="col-3">아이디</th>
							<th class="col-3">닉네임</th>
							<th class="col-3">가입일</th>
						</tr>
					</thead>
					<tbody id="memberList">
						<c:choose>
							<c:when test="${empty list}">
								<tr>
									<td colspan="6" style="text-align: center;">회원이 존재하지 않습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="dto">
									<tr class="memberList" style="text-align: center;">
										<td><input type="checkbox" class="checkOne"
											name="checkOne" value="${dto.id}"></td>
										<td>${dto.id}</td>
										<td>${dto.nickname}</td>
										<td>${dto.signup_date}</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			<div class="row">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-secondary" id="backBtn">뒤로가기</button>
				</div>
			</div>
		</div>
	</div>
	<script>
	// 전체 선택
	$("#checkAll").on('click', function() {
		if($("#checkAll").prop("checked")) {
			$("input[name=checkOne]").prop("checked", true)
		}else {
			$("input[name=checkOne]").prop("checked", false)
		}
	});
	
	// 선택 추가
	$(document).on("click", '#insertBtn', function() {
		var cnt = $("input[name='checkOne']:checked").length;
		var list = [];
		$("input[name='confirm']:checked").each(function(i) {
			list.push($(this).val());
		});

		if (cnt == 0) {
			alert("추가할 항목을 선택해주세요.");
		}else {
			var confirm = confirm("블랙리스트에 추가하시겠습니까?");
			if(confirm) {
				$.ajax({
					url : "/blacklist/insert.do",
					type : "post",
					data : ,
					success : function(jdata) {
						if(jdata = 1) {
							alert("블랙리스트에 추가되었습니다.");
							location.replace("list");
						}else {
							alert("추가에 실패하였습니다. 다시 시도해 주세요.");
						}
					}
				});
			}
		}
	});
	
	// 뒤로가기
	$("#backBtn").on("click", function(){
		location.href = "${pageContext.request.contextPath}/blacklist/toBlacklist.do";
	});
	</script>
</body>

</html>