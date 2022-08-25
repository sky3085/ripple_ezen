<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

				<c:forEach var="dto" items="${list }">
					<div class="col-10 col-sm-6 col-lg-3 mb-5" style="height: 500px">
						<div class="card h-100 aligns-items-center justify-content-center"
							style="border: 1px solid rgba(227, 227, 227, 1); box-sizing: border-box; box-shadow: 0 5px 19px rgb(0 0 0/ 55%);">
							<c:if test="${dto.predict > 0.52 }">
								<div class="bg-success" style="width: 100%; height: 30px"></div>
							</c:if>
							<c:if test="${dto.predict <= 0.52 }">
								<div class="bg-warning" style="width: 100%; height: 30px"></div>
							</c:if>
							<!-- Product image-->
							<c:if test="${dto.poster_path == null }">
								<h3 class="text-center">${dto.title }</h3>
							</c:if>
							<c:if test="${dto.poster_path != null }">
								<img class="card-img-top" src="${dto.poster_path }"
									alt="이미지가 없습니다." style="width: 100%; height: 300px" />
							</c:if>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="row" style="width: 100%; text-align: center;">
			<div class="col-12 col-md-12">
				<c:if test="${startPage > 5 }">
					<a class="paging"
						href="adminRank.do?req=adminRank&pg=${startPage - 1 }">[이전] </a>
				</c:if>

				<c:forEach var="i" begin="${startPage }" end="${endPage}" step="1">
					<c:if test="${i == pg}">
						<a class="currentPaging">[${i}] </a>
					</c:if>

					<c:if test="${i != pg}">
						<a class="paging" href="adminRank.do?req=adminRank&pg=${i}">[${i}]
						</a>
					</c:if>
				</c:forEach>

				<c:if test="${endPage < totalP }">
					<a class="paging"
						href="adminRank.do?req=adminRank&pg=${endPage + 1 }">[다음]</a>
				</c:if>
			</div>
		</div>

	</section>
</body>
</html>