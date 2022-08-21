<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>RIPPLE - Movie List</title>
<link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet" />
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/list_styles.css" rel="stylesheet" />
<link href="resources/css/index_styles.css" rel="stylesheet" />
<style type="text/css">
a {
	color: black;
	font-size: 1.2em;
	text-decoration: none;
}

.paging {
	color: black;
}

.paging:hover {
	color: black;
	text-decoration: none;
}
</style>
</head>
<body id="page-top">
	<jsp:include page="nav.jsp" />
	<header class="bg-dark py-5" style="height: 60vh;">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder" style="padding-top: 50px;">Select
					a moive</h1>
				<p class="lead fw-normal text-white-50 mb-0">영화 흥행을 예측하여 당신의 선택을
					도와드립니다.</p>
			</div>
		</div>
	</header>
	<!-- Section-->
	<section class="py-5">
		<div class="row">
			<div class="col-xl-2 col-md-2 col-3" style="margin-left: 16vw;">
				<select style="border-color: #408ad4;" class="form-select"
					aria-label="Default select example">
					<option selected>정렬</option>
					<option value="1">최신순</option>
					<option value="2">흥행 예측순</option>
				</select>
			</div>
			<div class="col-xl-6 col-md-6 col-6" style="margin-left: 3vw;">
				<div class="input-group mb-3">
					<input style="border-color: #408ad4;" type="text"
						class="form-control" placeholder="영화 검색"
						aria-label="Recipient's username" aria-describedby="button-addon2">
					<button style="border-color: #408ad4;"
						class="btn btn-outline-secondary" type="button" id="button-addon2">Search</button>
				</div>
			</div>
		</div>



		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<c:forEach var="dto" items="${list }">
					<div class="col-10 col-sm-6 col-lg-3 mb-5" style="height: 500px">
						<div class="card h-100"
							style="border: 1px solid rgba(227, 227, 227, 1); box-sizing: border-box; box-shadow: 0 5px 19px rgb(0 0 0/ 55%);">
							<!-- Sale badge-->
							<c:forEach var="userLikeDTO" items="${userLikeList }">
								<c:if test="${userLikeDTO.titleid==dto.titleid }">
									<div class="badge bg-dark text-white position-absolute"
										style="top: 0.5rem; right: 0.5rem; width: 60px; height: 30px; font-size: 1em;">Like</div>
								</c:if>
							</c:forEach>
							<!-- Product image-->
							<img class="card-img-top" src="${dto.poster_path }"
								alt="이미지가 없습니다." style="width: 100%; height: 300px" />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder" style="overflow: hidden; height: 24px;">${dto.title }</h5>
									<!-- Product reviews-->
									<div
										class="d-flex justify-content-center small text-warning mb-2">
										<c:forEach begin="0" end="${dto.vote_score }" step="1">
											<div class="bi-star-fill"></div>
										</c:forEach>
									</div>
									<!-- Product price-->
									<span>${dto.genres }</span>
								</div>
							</div>
							<!-- Product actions-->
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto"
										href="./detail?titleid=${dto.titleid }">View</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<div class="row" style="width: 100%; text-align: center;">
			<div class="col-12 col-md-12">
				<c:if test="${startPage > 5 }">
					<a class="paging" href="./list?pg=${startPage - 1 }">[이전] </a>
				</c:if>

				<c:forEach var="i" begin="${startPage }" end="${endPage}" step="1">
					<c:if test="${i == pg}">
						<a class="currentPaging">[${i}] </a>
					</c:if>

					<c:if test="${i != pg}">
						<a class="paging" href="./list?pg=${i}">[${i}] </a>
					</c:if>
				</c:forEach>

				<c:if test="${endPage < totalP }">
					<a class="paging" href="./list?pg=${endPage + 1 }">[다음]</a>
				</c:if>
			</div>
		</div>

	</section>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/list_scripts.js"></script>
</body>
</html>