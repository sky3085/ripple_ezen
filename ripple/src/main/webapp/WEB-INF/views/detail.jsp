<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>RIPPLE - Movie detail</title>
    <link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
        rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
        rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link href="resources/css/index_styles.css" rel="stylesheet" />
    <style>
    	body{
    		background-color: beige;
    	}
        div.review{
            height: auto;
    		min-height: 80px;
    		max-height: 200px;
            margin : 20px auto !important;
            background: #fff;
            border-radius: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px 20px;
            color: #000;
            border: 1px solid rgba(227,227,227, 1);
            box-sizing: border-box;
            box-shadow: 0 2px 8px rgb(0 0 0 / 10%);
            text-align:center;
        }

        div.review2{
            height: auto;
    		min-height: 80px;
    		max-height: 200px;
            margin: 20px 0px 20px auto;
            background: #fff;
            border-radius: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px 20px;
            color: #000;
            border: 1px solid rgba(227,227,227, 1);
            box-sizing: border-box;
            box-shadow: 0 2px 8px rgb(0 0 0 / 10%);
            text-align:center;
            float: right;
        }
    </style>
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

    <div class="row">
        <div class="col-lg-3 col-8" style="height: 65vh; margin: 130px auto 0; text-align: center;">
            <img id="poster_path" src="resources/img/exam1.jpg" style="border-radius: 8px;" >
        </div>

        <div class="col-lg-4 col-8 row" style="height: 65vh; margin: 0 auto;">
            <section class="" style="margin-top: 130px;">
                <div class=""  style="text-align: center;">
                    <hr>
                    <h2>
                        <span id="title">DC 리그 오브 슈퍼-펫(2022</span>
                    </h2>
                    <hr>
                    <div>
                        <span id="release_date">
                            2022/08/10 |
                        </span>
                        <span id="genres">
                            <span>애니메이션</span>,&nbsp;
                            <span>액션</span>,&nbsp;
                            <span>가족</span>,&nbsp;
                            <span>SF</span>,&nbsp;
                            <span>코미디</span>
                        </span>

                        <span id="runtime">
                            | 1h 45m
                        </span>
                    </div>
                </div>
                <br>
                <ol style="list-style: none">
                	<li>
                        <span id="director">감독 : Joseph Kosinski</span>
                    </li>
                    <li>
                        <span id="budget">예산 : 1,200,000$</span>
                    </li>
                    <li>
                        <span id="vote_average">평점 : 4.8점</span>
                    </li>
                    <li>
                        <span id="vote_count">투표자 수 : 8000명</span>
                    </li>
                </ol>
                <div>
                    <hr>
                    <h4>개요</h4>
                    <div>
                        <p id="overview">&nbsp;악당 렉스 루터의 계략으로 위험에 빠진 슈퍼맨을 비롯한 저스티스 리그의 슈퍼 히어로들을 구하기 위해 슈퍼독 크립토와 슈퍼 펫 친구들이 벌이는 파워 댕댕 모험을 그린 이야기</p>
                    </div>

                </div>
            </section>
        </div>
        <div class="col-lg-5 col-8" style="margin: 130px auto 0; text-align: center;" style="overflow: hidden">
            <div style="width: 70%; height: 70%; margin: auto; text-align: center;">
            	<h3>성공 예측</h3>
            	<img src="resources/img/per/70per.png" style="object-fit: contain; width: 100%; height: 100%;" alt="" style="overflow: hidden">
        	</div>
        </div>
    </div>
	<hr>
    <div style="margin: 50px auto; width: 100vw;">
        <div class="row" style="width: 80vw; margin: 0 auto;">
            <form style="margin-bottom: 25px !important;">
                <div class="row" style="height: 70px;">
                    <div class="col-lg-10 col-9" style="padding : 0;">
                        <input type="email" style="border-color: #408ad4; height: 100%; width: 97%" class="form-control" placeholder="댓글 입력"
                            id="inputEmail3">
                    </div>
                    <div class="col-lg-2 col-3" style="padding: 0">
                    	<input class="btn btn-primary col-lg-1 col-3" style="width: 100%; height: 100%" type="submit" value="Submit">
                    </div>
                </div>
            </form>
            <div class="col-lg-12 col-12 review row">
            	<div class="col-lg-1 col-md-2 col-2" style="overflow: hidden;">ID_TEST_01</div>
                <div class="col-lg-7 col-md-6 col-6" style="overflow: hidden;">너무 너무 재미있어요.</div>
                <div class="col-lg-1 col-md-2 col-2">*****</div>
                <div class="col-lg-1 col-md-1 col-1">답글</div>
                <div class="col-lg-1 col-md-1 col-1">신고</div>
            </div>
            <div class="col-lg-10 col-10 review2 row">
                <div class="col-lg-1 col-2" style="overflow: hidden;">ID_TEST_01</div>
                <div class="col-lg-7 col-6" style="overflow: hidden;">너무 너무 재미있어요.ㄱㄴㄷㄻㄴㅇㄻㄴㅇㄹㄴㅇㅁㅈㅂㅎㅈㅇㄴ</div>
                <div class="col-lg-1 col-2">*****</div>
                <div class="col-lg-2 col-2">신고</div>
            </div>
            <div class="col-lg-12 col-12 review"></div>
            <div class="col-lg-12 col-12 review"></div>
    
        </div>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="resources/js/index_scripts.js"></script>
</body>
</html>