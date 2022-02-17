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
		</div>
		<div class="row mt-4">
			<div class="col-12">
				<form id="blacklistForm"
					action="${pageContext.request.contextPath}/blacklist/insert.do"
					method="post" enctype="multipart/form-data">
					<table class="table table-hover">
						<thead>
							<tr style="text-align: center;">
								<th class="col-2">아이디</th>
								<th class="col-2">닉네임</th>
								<th class="col-2">가입일</th>
								<th class="col-6"></th>
							</tr>
						</thead>
						<tbody id="memberList">
							<c:choose>
								<c:when test="${empty list}">
									<tr>
										<td colspan="6" style="text-align: center;">회원이 존재하지
											않습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="dto">
										<tr class="memberList" style="text-align: center;">
											<td class="id">${dto.id}</td>
											<td class="nickname">${dto.nickname}</td>
											<td>${dto.signup_date}</td>
											<td>
												<button type="button" id="insertBtn" class="btn btn-dark">추가</button>
												<div id="reason" hidden>
													<label for="reason" class="form-label">사유를 입력해주세요.</label>
													<input type="text" id="reason" name="reason">
													<button type="button" id="saveBtn" class="btn btn-dark">저장</button>
													<button type="button" id="cancelBtn" class="btn btn-dark">취소</button>
												</div>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</form>
			</div>
			<div class="row">
				<div class="col d-flex justify-content-end">
					<button type="button" class="btn btn-secondary" id="backBtn">뒤로가기</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		// 추가
		$("#insertBtn").on('click', function() {
			$("#insertBtn").hide();
			$("#reason").removeAttr("hidden");
		})
		
		$("#cancelBtn").on('click', function() {
			$("#reason").hide();
			$("#insertBtn").show();
			location.href = "/blacklist/toInsert.do";
		})


		$("#saveBtn").click(function() { 
			let id = $(this).parents("tr").find(".id").html();
	        let nickname = $(this).parents("tr").find(".nickname").html();
			var reason = $(this).parent().eq(0).find('input').val();
			console.log(id +", "+ nickname +", "+ reason);
			
			if(!reason) {
				confirm("사유를 입력해주세요.");
			}else {
				var confirm_val = confirm("해당 회원을 블랙리스트에 추가하시겠습니까?");
				if(confirm_val) {
					$.ajax({
						url : "/blacklist/insert.do",
						type : "post",
						data : {
							"id" : id,
							"nickname" : nickname,
							"reason" : reason}
					}).done(function(rs) {
						if(rs == "success") {
							alert("회원을 블랙리스트에 추가하였습니다.");
							location.href = "/blacklist/toBlacklist.do";
						}else if(rs == "fail") {
							alert("블랙리스트 추가에 실패하였습니다. 다시 시도해주세요.");
							location.hrdf = "/blacklist/toInsert.do";
						}
					}).fail(function(e) {
						console.log(e);
					})
				}
			}
		});
	
		
		// 뒤로가기
		$("#backBtn").on("click", function() {
			location.href = "${pageContext.request.contextPath}/blacklist/toBlacklist.do";
		});
	</script>
</body>

</html>