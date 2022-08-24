<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link href="./resources/css/nav_style.css" rel="stylesheet">
</head>
<body id="page-top">
	<jsp:include page="nav.jsp" />
	
	<main>
		<div class="bg-dark" style="height: 60vh; display: flex;">
			<div class="container px-4 px-lg-5 my-5" style="display: block;">
				<div class="text-center text-white">
					<h1 class="display-4 fw-bolder" style="padding-top: 50px;">Theater
						Location</h1>
					<p class="lead fw-normal text-white-50 mb-0">서울시 영화관을 한눈에
						보여드립니다.</p>
				</div>
			</div>
			
		</div>
	</main>


	<section class="py-5">
		<div class="card text-center" id="card1">
			<div class="card-header">(구글아이콘)클릭시 영화관명과 주소를 확인할 수 있습니다.</div>
		</div>

		<div class="container" align="center" style="display: block; height: 80vh;">
			<div id="header" style="height: 100%; width: 100%;"></div>
		</div>
	</section>

	<script>
			var header = document.getElementById("header");
			header.innerHTML = '<object type="text/html" height="1000" width="1000" style="width: 100%; height: 100%;" data="resources/html/Seoul_Cinema.html"></object>';
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous" ></script>
</body>
</html>