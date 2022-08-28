<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf= new SimpleDateFormat("yyyy년 MM월 dd일 a hh시 mm분");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text&family=Lato:wght@100&family=Noto+Sans+KR:wght@100&family=Quicksand:wght@300&display=swap" rel="stylesheet">

<style>
body {
font-family: 'Noto Sans KR', sans-serif;}

#card {
display:inline-block;
margin:20px;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card text-center" id="card1">
		<div class="card-header fs-2 fw-bold">Ripple에 오신것을 환영합니다!</div>
		<div class="card-body">
			<h5 class="card-title">관리자 : manager </h5>
			<p class="card-text">현재 시간 <%=sf.format(nowTime)%> 기준</p>
			<p class="card-text">회원수 : ${totalA}명</p>
			<p class="card-text">신고 : ${totalP}건</p>
			
		</div>
		<div class="card-footer text-muted">New Updated</div>
		
	</div>
	<hr>
	
	
	
	
	<div class="card" style="width:18rem;" id="card">
		<a href="../index"> <!-- 메인 화면으로 이동 -->
		<img height="200" width="100" src="../resources/img/adminmainpage.jpg" class="card-img-top" alt="메인 ripple로 이동"
		></a>
		<div class="card-body" >
			<p class="card-text">Ripple 영화 흥행 예측 MAIN 페이지로 이동합니다.</p>
		</div>
	</div>
	
	
	<div class="card" style="width:18rem;" id="card">
		<img height="200" width="100" src="../resources/img/admin_insert_movieeimage.jpg" class="card-img-top" alt="영화소개이미지">
		<div class="card-body"> <!-- 관리자 페이지 설명 -->
			<p class="card-text">머신러닝을 통하여 흥행이 예측되는 영화를 추천합니다.</p>
		</div>
	</div>
	
	<div class="card" style="width:18rem;" id="card">
		<img height="200" width="100" src="../resources/img/reply.jpg" class="card-img-top" alt="리뷰 삭제">
		<div class="card-body"> <!--  관리자 페이지 설명 -->
			<p class="card-text">비방, 욕설이 담긴 리뷰를 관리하여 삭제합니다.</p>
		</div>
	</div>




</body>
</html>