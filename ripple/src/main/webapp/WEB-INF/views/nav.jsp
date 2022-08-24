<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                	<c:if test="${id==null }">
                    <li class="nav-item"><a class="nav-link" href="./join">Sign Up</a></li>
                    <li class="nav-item"><a class="nav-link" href="./login">Log In</a></li>
                    </c:if>
                    <c:if test="${id!=null }">
                    <li class="nav-item"><a class="nav-link" href="./mypage">My Page</a></li>
                    <li class="nav-item"><a class="nav-link" href="./logout">Log out</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
 	</nav>