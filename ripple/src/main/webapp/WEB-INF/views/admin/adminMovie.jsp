<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text&family=Lato:wght@100&family=Quicksand:wght@300&display=swap" rel="stylesheet">


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<link rel="import" href="Seoul_Screen.html">
<link rel="import" href="Seoul_Seat.html">

<style>
body {
font-family: 'Noto Sans KR', sans-serif;}
</style>


</head>
<body>
	<div class="container">
	<div1 id="header" height="1000" width="1500"> 
		
	</div1>

	<div2 id="header2" height="1000" width="1500"> 
	
	</div2>
	</div>

	<script>
		var header = document.getElementById("header");

		header.innerHTML = '<object type="text/html" height="500" width="500" data="Seoul_Seat.html"></object>';

		var header2 = document.getElementById("header2");
		header2.innerHTML = '<object type="text/html" height="500" width="500" data="Seoul_Screen.html"></object>';
	</script>



	<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
  
</body>
</html>