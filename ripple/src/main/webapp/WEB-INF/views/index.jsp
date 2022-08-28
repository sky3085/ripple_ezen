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
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- 구글 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
<style type="text/css">
.googleFont{
	font-family: 'Noto Serif KR', serif;
}
</style>
</head>
<body id="page-top">
	<jsp:include page="nav.jsp" />

	<header class="masthead text-center text-white" style="height: 100vh">
		<div class="masthead-content">
			<div class="container px-5">
				<h2 class="masthead-heading mb-0">리플</h2>
				<br> <br>
				<h3 class="masthead-subheading mb-0">영화 소개 및 성공 예측 서비스</h3>
				<!-- <a class="btn btn-primary btn-xl rounded-pill mt-5" href="#scroll">Learn More</a> -->
			</div>
		</div>

	</header>
	<section id="scroll">
		<div class="container px-5">
			<div class="row gx-5 align-items-center">
				<div class="col-lg-6 order-lg-2">
					<div class="p-5">
						<img class="img-fluid rounded-circle" src="resources/img/ai.png"
							alt="..." />
					</div>
				</div>
				<div class="col-lg-6 order-lg-1">
					<div class="p-5">
						<h2 class="display-4 googleFont" style="font-weight: bold;">재미있는 영화만 모아서 보세요!</h2>
						<p class="googleFont" style="font-size: 1.3em">재미있는 영화들을 쉽게 찾기 위해 TMDB 영화들 정보들을 수집해 
						머신러닝으로 흥행을 예측하였습니다. 높은 점수를 받은 영화들을 확인해보세요.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="container px-5">
			<div class="row gx-5 align-items-center">
				<div class="col-lg-6">
					<div class="p-5">
						<img class="img-fluid rounded-circle"
							src="resources/img/movies2.png" alt="..." />
					</div>
				</div>
				<div class="col-lg-6">
					<div class="p-5">
						<h2 class="display-4 googleFont" style="font-weight: bold;">모든 영화의 정보를 확인해보세요!</h2>
						<p class="googleFont" style="font-size: 1.3em">2000년 이전의 오래된 영화부터 앞으로 개봉예정 영화까지 모든 정보를 확인해보세요.
						감독, 짧은 영화소개, 평점, 흥행 예측 가능성까지 확인할 수 있습니다.
						또한 댓글을 통해 직접 평점에 참여할 수 있으니, 많은 이용 부탁드립니다!</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
		<div class="container px-5">
			<div class="row gx-5 align-items-center">
				<div class="col-lg-6 order-lg-2">
					<div class="p-5">
						<img class="img-fluid rounded-circle" src="resources/img/map.png"
							alt="이미지가 없습니다." />
					</div>
				</div>
				<div class="col-lg-6 order-lg-1">
					<div class="p-5">
						<h2 class="display-4 googleFont" style="font-weight: bold;">서울 영화관 위치를 파악 해보세요!</h2>
						<p class="googleFont" style="font-size: 1.3em">서울시에 있는 메가박스, CGV, 롯데시네마, 소영화관까지 모든 영화관 위치를 찾아보세요. 영화관 이름 뿐만 
						아니라, 클릭시 주소까지 확인하실 수 있습니다. 친구, 연인, 가족들과 함께 영화관에 추억을 쌓고 
						영화를 감상하세요!</p>
					</div>
				</div>
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
	<!-- Core theme JS-->
	<script src="resources/js/index_scripts.js"></script>

	<script type="text/javascript">
		var naver_id_login = new naver_id_login("xmmOYUPTyHVGBZKQsIgz", "http://localhost:8080/ripple/index");
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			alert(naver_id_login.getProfileData('email'));
			if(naver_id_login.getProfileData('email')){
				sessionStorage.setItem('id', naver_id_login.getProfileData('email'));
				console.log(sessionStorage.getItem('id'));
			}
		}
	</script>
</body>
</html>