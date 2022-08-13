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
        div.review{
            height: 80px;
            margin-bottom: 20px !important;
            background: #fff;
            border-radius: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px 20px;
            margin-left: 10vw;
            color: #000;
            border: 1px solid rgba(227,227,227, 1);
            box-sizing: border-box;
            box-shadow: 0 2px 8px rgb(0 0 0 / 10%);
            text-align:center;
        }

        div.review2{
            height: 80px;
            margin-bottom: 20px !important;
            background: #fff;
            border-radius: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px 20px;
            margin-left: 18.5vw;
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

    <div class="row" style="background-color: beige;">
        <div class="col-lg-3" style="height: 80vh;">
            <img src="resources/img/exam1.jpg" style="margin-top: 14vh; margin-left: 4vw; border-radius: 8px;" >
        </div>

        <div class="col-lg-4 row" style="height: 80vh;">
            <section class="header poster" style="margin-top: 14vh;">
                <div class="title ott_false" dir="auto">
                    <hr>
                    <h2 class="13">
                        <span>DC 리그 오브 슈퍼-펫</span>
                        <span class="tag release_date">(2022)</span>
                    </h2>
                    <hr>
                    <div class="facts">
budget director vote_average  vote_count 추가하기
                        <span class="release">
                            2022/08/10 |
                        </span>


                        <span class="genres">
                            <span>애니메이션</span>,&nbsp;
                            <span>액션</span>,&nbsp;
                            <span>가족</span>,&nbsp;
                            <span>SF</span>,&nbsp;
                            <span>코미디</span>
                        </span>

                        <span class="runtime">
                            | 1h 45m
                        </span>
                    </div>

                </div>

                <ul class="auto actions">

                    <li class="chart">
                        <div class="consensus details">
                            
                        </div>
                        <div class="text">회원점수(voteNum)</div>
                    </li>
                    
                </ul>

                <div class="header_info">
                    <hr>
                    <h4 dir="auto">개요</h4>
                    <div class="overview" dir="auto">
                        <p>악당 렉스 루터의 계략으로 위험에 빠진 슈퍼맨을 비롯한 저스티스 리그의 슈퍼 히어로들을 구하기 위해 슈퍼독 크립토와 슈퍼 펫 친구들이 벌이는 파워 댕댕 모험을 그린 이야기</p>
                    </div>

                </div>
            </section>
        </div>
        <div class="col-lg-5" style="margin-top: 14vh;" style="overflow: hidden">
            <img src="resources/img/per/70per.png" alt="" style="overflow: hidden">
        
        </div>
    </div>

    <div style="margin-top: 30px;">
    
    
        <div class="row">
            <form style="margin-bottom: 25px !important;">
                <div class="row" style="padding: 12px 20px; margin-left: 10vw; height: 80px;">
                    <div class="col-lg-9 col-8" style="padding-left: 0;">
                        <input type="email" style="border-color: #408ad4; height: 100%;" class="form-control" placeholder="댓글 입력"
                            id="inputEmail3">
                    </div>
                    <input class="btn btn-primary col-lg-1 col-3" type="submit" value="Submit">
                </div>
            </form>
            <div class="col-lg-9 col-9 review row">
                <div class="col-lg-8 col-6">너무 너무 재미있어요.</div>
                <div class="col-lg-1 col-2">*****</div>
                <div class="col-lg-1 col-2">답글</div>
                <div class="col-lg-1 col-2">신고</div>
            </div>
            <div class="col-lg-8 col-8 review2 row">
                <div class="col-lg-8 col-6">너무 너무 재미있어요.</div>
                <div class="col-lg-1 col-2">*****</div>
                <div class="col-lg-1 col-2">답글</div>
                <div class="col-lg-1 col-2">신고</div>
            </div>
            <div class="col-lg-9 col-9 review"></div>
            <div class="col-lg-9 col-9 review"></div>
    
        </div>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="resources/js/index_scripts.js"></script>
</body>
</html>