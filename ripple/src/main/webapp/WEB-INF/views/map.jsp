<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<style type="text/css">
*, *::before, *::after {
    box-sizing: border-box;
}

#page-top{
    margin: 0;
    font-family: var(--bs-body-font-family);
    font-size: var(--bs-body-font-size);
    font-weight: var(--bs-body-font-weight);
    line-height: var(--bs-body-line-height);
    color: var(--bs-body-color);
    text-align: var(--bs-body-text-align);
    background-color: var(--bs-body-bg);
    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
.navbar-custom {
    padding-top: 1rem;
    padding-bottom: 1rem;
    background-color: rgba(0, 0, 0, 0.7);
}
.fixed-top {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    z-index: 1030;
}
@media (min-width: 992px)
.navbar-expand-lg {
    flex-wrap: nowrap;
    justify-content: flex-start;
}
.navbar {
    display: flex;
    align-items: center;
}
.container{
	width: 100%;
    display: flex;
    flex-wrap: inherit;
    align-items: center;
    justify-content: space-between;
}
.px-5 {
    padding-right: 3rem !important;
    padding-left: 3rem !important;
}
@media (min-width: 1400px)
.container-xxl, .container-xl, .container-lg, .container-md, .container-sm, .container {
    max-width: 1320px;
}
.navbar-brand {
    padding-top: 0.3125rem;
    padding-bottom: 0.3125rem;
    margin-right: 1rem;
    font-size: 1.25rem;
    text-decoration: none;
    white-space: nowrap;
}
.navbar-custom .navbar-brand {
    text-transform: uppercase;
    font-size: 1rem;
    letter-spacing: 0.1rem;
    font-weight: 700;
}
.navbar-dark .navbar-brand {
    color: #fff;
}
.navbar-dark .navbar-toggler {
    color: rgba(255, 255, 255, 0.55);
    border-color: rgba(255, 255, 255, 0.1);
}
@media (min-width: 992px)
.navbar-expand-lg .navbar-toggler {
    display: none;
}
.navbar-toggler {
    padding: 0.25rem 0.75rem;
    font-size: 1.25rem;
    line-height: 1;
    background-color: transparent;
    border: 1px solid transparent;
    border-radius: 0.25rem;
    transition: box-shadow 0.15s ease-in-out;
}
.navbar-toggler-icon {
    display: inline-block;
    width: 1.5em;
    height: 1.5em;
    vertical-align: middle;
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100%;
}
.navbar-dark .navbar-toggler-icon {
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 255, 255, 0.55%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
}
@media (min-width: 992px)
.navbar-expand-lg .navbar-collapse {
    display: flex !important;
    flex-basis: auto;
}
.navbar-collapse {
    flex-basis: 100%;
    flex-grow: 1;
    align-items: center;
}
.ms-auto {
    margin: auto 200px auto auto !important;
}
.navbar-nav {
    display: flex;
    flex-direction: column;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
.navbar-custom .navbar-nav .nav-item .nav-link {
    text-transform: uppercase;
    font-size: 0.8rem;
    font-weight: 700;
    letter-spacing: 0.1rem;
}
.navbar-dark .navbar-nav .nav-link {
    color: rgba(255, 255, 255, 0.55);
}
@media (min-width: 992px)
.navbar-expand-lg .navbar-nav .nav-link {
    padding-right: 0.5rem;
    padding-left: 0.5rem;
}
.nav-link {
    display: block;
    padding: 0.5rem 1rem;
    text-decoration: none;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out;
}
.navbar-nav {
    display: flex;
    flex-direction: column;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}


</style>
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

		<div class="container" align="center" style="display: block;">
			<div id="header" height="1500" width="1000"></div>
		</div>
	</section>

	<script>
			var header = document.getElementById("header");
			header.innerHTML = '<object type="text/html" height="1000" width="1000" data="resources/html/Seoul_Cinema.html"></object>';
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous" ></script>
</body>
</html>