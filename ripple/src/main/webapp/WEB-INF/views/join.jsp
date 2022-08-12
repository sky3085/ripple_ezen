<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>RIPPLE - join</title>
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
        <div class="container px-5">
            <a style="font-size: 30px;" class="navbar-brand" href="./index">RIPPLE</a>
            <a class="navbar-brand" href="./list">영화 목록</a>
            <a class="navbar-brand" href="#">영화관 지도</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
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

        <form>
        <div class="row" style="margin: 150px auto 0 auto; width: 60vh;">
            <span style="text-align: center; font-size: 25px; margin-bottom: 15px;">회원 가입</span>
            

            <div class="mb-3 row">
                <label for="staticEmail" class="col-sm-2 col-form-label">ID</label>
                <div class="col-sm-10" style="padding-left: 20px;">
                    <input type="text" class="form-control" id="staticEmail">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10" style="padding-left: 20px;">
                    <input type="password" class="form-control" id="inputPassword">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10" style="padding-left: 20px;">
                    <input type="text" class="form-control-plaintext form-control" id="staticEmail" placeholder="email@example.com">
                </div>
            </div>

            

            <input class="btn btn-primary" type="submit" value="Submit">
        </div>
        </form>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/index_scripts.js"></script>


</body>
</html>