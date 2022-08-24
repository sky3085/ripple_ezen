<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text&family=Lato:wght@100&family=Quicksand:wght@300&display=swap" rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<style>
body {
font-family: 'Noto Sans KR', sans-serif;}
.currentPaging {
	color: #fff;
}


</style>
</head>
<body>
	<div class="table-responsive">
		<button type="button" class="btn btn-primary fw-bold">
			MEMBER <span class="badge text-bg-secondary">${totalA}</span>
		</button>
		<hr>

		<table class="table table-dark table-striped table-sm" border="1"
			>
			<tr align="center">
				<td width="70">No.</td>
				<td>아이디</td>
				<td width="50">비밀번호</td>
				<td width="170">이메일</td>
			</tr>

			<c:forEach var="dto" items="${list}">
				<tr align="center">
					<td>${dto.getSeq()}</td>
					<td>${dto.getId()}</td>
					<td>${dto.getPwd()}</td>
					<td>${dto.getEmail()}</td>
				</tr>
			</c:forEach>


			<!-- 페이징 처리 -->
			<tr>
				<td colspan="4" align="center"><c:if test="${startPage > 3 }">
						<a class="paging"
							href="adminMemberList.do?req=adminMember&pg=${startPage - 1}">[이전]</a>
					</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:if test="${i== pg}">
							<a class="currentPaging">[${i}]</a>
						</c:if>

						<c:if test="${i!= pg}">
							<a class="paging"
								href="adminMemberList.do?req=adminMember&pg=${i}">[${i}]</a>
						</c:if>

					</c:forEach> <c:if test="${endPage < totapP }">
						<a class="paging"
							href="adminMemberList.do?req=adminMember&pg=${endPage + 1}">[다음]</a>
					</c:if></td>
			</tr>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	
</body>

</html>