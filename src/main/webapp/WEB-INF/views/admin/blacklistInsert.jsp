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
	li {list-style: none; float: center; text-align: center; padding: 6px;}
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
				<table class="table table-hover">
					<thead>
						<tr style="text-align: center;">
							<th class="col-1"><input type="checkbox" name="checkAll"></th>
							<th class="col-4">아이디</th>
							<th class="col-4">닉네임</th>
							<th class="col-3">가입일</th>
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
		</div>
	</div>
</body>
</html>