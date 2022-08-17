<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>RIPPLE - login</title>
    <link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link href="resources/css/index_styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <div class="container px-5 row">
        	<div class="col-0 col-md-0 col-xl-2"> </div>
            <a style="font-size: 30px;" class="navbar-brand col-11 col-md-4 col-xl-2" href="./index">RIPPLE</a>
            <a class="navbar-brand col-3 col-md-3 col-xl-1" href="./list">영화 목록</a>
            <a class="navbar-brand col-3 col-md-4 col-xl-1" href="#">영화관 지도</a>
            <button style="position: absolute; right: 30px; top: 25px;" class="navbar-toggler col-2 col-md-1" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="./join">Sign Up</a></li>
                    <li class="nav-item"><a class="nav-link" href="./login">Log In</a></li>
                </ul>
            </div>
        </div>
 	</nav>
        <form action="./loginAction">
        <div class="row" style="margin: 150px auto 0 auto; width: 60vh;">
            

            <div class="mb-3 row">
                <label for="staticEmail" class="col-sm-2 col-form-label">ID</label>
                <div class="col-sm-10" style="padding-left: 20px;">
                    <input type="text" class="form-control" id="staticEmail" name="id">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10" style="padding-left: 20px;">
                    <input type="password" class="form-control" id="inputPassword" name="pwd">
                </div>
            </div>
            <input class="btn btn-primary" type="submit" value="로그인">
            <button type="button" class="btn btn-outline-success" style="margin-top: 15px;">네이버 로그인</button>
            <button type="button" class="btn btn-outline-warning" style="margin-top: 15px;">카카오 로그인</button>
        </div>
        </form>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/index_scripts.js"></script>
</body>
</html>