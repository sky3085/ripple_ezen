<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.101.0">

<title>관리자 페이지</title>

<!--  폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text&family=Lato:wght@100&family=Quicksand:wght@300&display=swap" rel="stylesheet">
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.2/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg"
	color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


<style>
body {
font-family: 'Noto Sans KR', sans-serif;}

.bd-placeholder-img {
	font-size: 1.0rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}
</style>


</head>
<body>

	<header>
		<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="adminMain.jsp">Ripple</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../admin/adminMemberList.do?req=adminMember">member</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../admin/adminReply.do?req=adminReply">reply</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link disabled">reports</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link" href="../admin/adminMain?req=adminRank">예측</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="../admin/adminMain?req=adminMovie">영화관</a>
        </li>
       
      </ul>
    
        <button class="btn btn-outline-success" type="submit">LOGOUT</button>
      
    </div>
  </div>
</nav>
	</header>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3 sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="../admin/adminMap.do"> <span
								data-feather="home" class="align-text-bottom"></span> 관리자 메뉴
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../admin/adminMemberList.do?req=adminMember"> <span
								data-feather="file" class="align-text-bottom"></span> 회원 관리
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../admin/adminReply.do?req=adminReply"> <span
								data-feather="shopping-cart" class="align-text-bottom"></span>
								신고 댓글
						</a></li>
					</ul>

					<h6
						class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
						<span>movie reports</span> <a class="link-secondary" href="#"
							aria-label="Add a new report"> <span
							data-feather="plus-circle" class="align-text-bottom"></span>
						</a>
					</h6>
					<ul class="nav flex-column mb-2">
						<li class="nav-item"><a class="nav-link"
							href="../admin/adminMain?req=adminRank"> <span
								data-feather="file-text" class="align-text-bottom"></span> 흥행 예측
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../admin/adminMain?req=adminMovie"> <span
								data-feather="file-text" class="align-text-bottom"></span> 서울시
								영화관
						</a></li>


					</ul>
				</div>
			</nav>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">



				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">

					<h2 class="h2">Admin</h2>


					<div class="btn-toolbar mb-2 mb-md-0">
						<div class="btn-group me-2">
						
							<button type="button" class="btn btn-sm btn-outline-secondary">
							<a href="#footer" id="footer_go" title="아래로 이동">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-square" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15 2a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2zM0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm8.5 2.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z"/>
</svg></a>
						</button>
							<button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
						</div>
					
					</div>



				</div>


				<div class="mainPage" id="mainPage" width="900" height="500">

					<c:if test="${param.req == null}">
						<jsp:include page="../admin/adminMap.jsp" />
					</c:if>

					<c:if test="${param.req == 'adminMember'}">
						<jsp:include page="../admin/adminMemberList.jsp" />
					</c:if>

					<c:if test="${param.req == 'adminMovie'}">
						<jsp:include page="../admin/adminMovie.jsp" />
					</c:if>

					<c:if test="${param.req == 'adminRank'}">
						<jsp:include page="../admin/adminRank.jsp" />
					</c:if>

					<c:if test="${param.req == 'adminReply'}">
						<jsp:include page="../admin/adminReply.jsp" />
					</c:if>

				</div>
			</main>


			<!-- FOOTER -->
			<footer id="footer">
			<div class="text-center">
			<hr>
			<p><a href="#">top</a></p>
			<p>&copy; 2022 이젠아카데미 3팀 &middot; RIPPLE</p>
			</div>
			</footer>

		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	
	
</body>
</html>