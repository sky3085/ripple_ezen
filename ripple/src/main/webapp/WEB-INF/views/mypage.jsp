<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>RIPPLE - Main</title>
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
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body id="page-top">
	<jsp:include page="nav.jsp" />

	<header class="masthead text-center text-white" style="height: 20vh">
		<div class="masthead-content">
			<div class="container px-5">
				<h3 class="masthead-subheading mb-0">${id }님영화리스트</h3>
			</div>
		</div>
	</header>
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<c:forEach var="dto" items="${mypageList }">
					<div class="col-10 col-sm-6 col-lg-3 mb-5" style="height: 500px">
						<div class="card h-100"
							style="border: 1px solid rgba(227, 227, 227, 1); box-sizing: border-box; box-shadow: 0 5px 19px rgb(0 0 0/ 55%);">
							<img class="card-img-top" src="${dto.poster_path }"
								alt="이미지가 없습니다." style="width: 100%; height: 300px" />
							<div class="card-body p-4">
								<div class="text-center">
									<h5 class="fw-bolder" style="overflow: hidden; height: 24px;">${dto.title }</h5>
									<div
										class="d-flex justify-content-center small text-warning mb-2">
										<c:forEach begin="0" end="${dto.vote_score }" step="1">
											<div class="bi-star-fill"></div>
										</c:forEach>
									</div>
									<span>${dto.genres }</span>
								</div>
							</div>
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
					<a class="paging" href="./mypage?pg=${startPage - 1 }">[이전] </a>
				</c:if>

				<c:forEach var="i" begin="${startPage }" end="${endPage}" step="1">
					<c:if test="${i == pg}">
						<a class="currentPaging">[${i}] </a>
					</c:if>

					<c:if test="${i != pg}">
						<a class="paging" href="./mypage?pg=${i}">[${i}] </a>
					</c:if>
				</c:forEach>

				<c:if test="${endPage < totalP }">
					<a class="paging" href="./mypage?pg=${endPage + 1 }">[다음]</a>
				</c:if>
			</div>
		</div>

	</section>
	<footer class="py-5 bg-black">
		<div class="container px-5">
			<p class="m-0 text-center text-white small">EZEN IT ACADEMY - 3
				TEAM</p>
		</div>
	</footer>


	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>