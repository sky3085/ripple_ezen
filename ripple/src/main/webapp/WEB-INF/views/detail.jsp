<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>RIPPLE - Movie detail</title>
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
<!-- Core theme CSS (includes Bootstrap)-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link href="resources/css/index_styles.css" rel="stylesheet" />
<style>
body {
	background-color: beige;
}

div.review {
	height: auto;
	min-height: 80px;
	max-height: 150px;
	margin: 20px auto !important;
	background: #fff;
	border-radius: 8px;
	margin-bottom: 10px;
	box-sizing: border-box;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 12px 20px;
	color: #000;
	border: 1px solid rgba(227, 227, 227, 1);
	box-sizing: border-box;
	box-shadow: 0 5px 19px rgb(0 0 0/ 40%);
	text-align: center;
}

div.review2 {
	height: auto;
	min-height: 80px;
	max-height: 150px;
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
	border: 1px solid rgba(227, 227, 227, 1);
	box-sizing: border-box;
	box-shadow: 0 5px 19px rgb(0 0 0/ 40%);
	text-align: center;
	float: right;
}

span {
	font-size: 1.2em !important;
}
</style>
<script type="text/javascript">
	function doAction(id) {
		const box = document.getElementById("answer");
		let newInput = document.createElement("input");
		newInput.setAttribute("type", "hidden");
		newInput.setAttribute("value", id);
		newInput.setAttribute("name", "original_seq");

		box.appendChild(newInput);
	}
	function accusation(tag) {
		const seq = tag.dataset.seq;
		const writer = tag.dataset.writer;
		const titleid = tag.dataset.titleid;
		location.href="./accusationAction?seq="+seq+"&writer="+writer+"&titleid="+titleid;
	}
	function userLike(tag2) {
		const titleid = tag2.dataset.titleid;
		location.href="./userLikeAction?titleid="+titleid;
	}
	function userLikeDelete(tag3) {
		const titleid = tag3.dataset.titleid;
		location.href="./userLikeDeleteAction?titleid="+titleid;
	}
</script>
</head>

<body id="page-top">
	<jsp:include page="nav.jsp" />

	<div class="row">
		<div class="col-lg-3 col-8"
			style="height: 65vh; margin: 130px auto 0; text-align: center;">
			<img id="poster_path" src="${dto.poster_path }"
				style="border-radius: 8px; width: 100%; height: 100%; object-fit: contain;">
		</div>

		<div class="col-lg-3 col-8 row" style="height: 65vh; margin: 0 auto;">
			<section class="" style="margin-top: 130px;">
				<div class="" style="text-align: center;">
					<hr>
					<h2>
						<span id="title">${dto.title }</span>
					</h2>
					<hr>
					<div>
						<span id="release_date"> ${dto.release_date } | </span> <span
							id="genres"> ${dto.genres } </span> <span id="runtime"> |
							${dto.runtime }??? </span>
					</div>
				</div>
				<br>
				<ol style="list-style: none">
					<li><span id="director">?????? : ${dto.director }</span></li>
					<li><span id="budget">?????? : ${dto.budget } $</span></li>
					<li><span id="vote_average">?????? : ${dto.vote_score }???</span></li>
					<li><span id="vote_count">????????? ??? : ${dto.vote_count }???</span></li>
				</ol>
				<div>
					<hr>
					<h4>??????</h4>
					<div>
						<p id="overview" style="height: 190px; overflow: auto;">&nbsp;${dto.overview }</p>
					</div>

				</div>
			</section>
		</div>
		<div class="col-lg-3 col-8 row"
			style="margin: 130px auto 0; text-align: center;"
			style="overflow: hidden">
			<div class="col-8 col-md-8"
				style="width: 70%; height: 70%; margin: auto; text-align: center;">
				<h3>?????? ?????? ??????</h3>
				<img src="resources/img/percent/per (${score + 1}).png"
					style="object-fit: contain; width: 100%; height: 100%;" alt=""
					style="overflow: hidden">
			</div>
			<div class="col-8 col-md-8" style="margin: 0 auto;">
				<c:if test="${id != null }">
					<c:if test="${likeTrue == true}">
						<button type="button" class="btn btn-primary" style="margin-top: 25px;" onclick="userLikeDelete(this)"
							data-titleid="${titleid }">?????????!(??????)</button>
					</c:if>
					<c:if test="${likeTrue != true}">
						<button type="button" class="btn btn-primary" style="margin-top: 25px;" onclick="userLike(this)"
							data-titleid="${titleid }">?????????!</button>
					</c:if>
				</c:if>
			</div>
		</div>
	</div>
	<hr>
	<div style="margin: 50px auto; width: 100vw;">
		<div class="row" style="width: 80vw; margin: 0 auto;">
			<form action="./commentAction"
				style="margin-bottom: 25px !important;">
				<div class="row" style="height: 70px;">
					<div class="col-lg-10 col-9 row" style="padding: 0; margin: 0">
						<input type="hidden" value="${dto.titleid }" name="titleid">
						<input type="hidden" value="1" name="level">
						<input type="hidden" value="-1" name="original_seq">
						<input type="text" style="font-size: 1.4em; border-color: #408ad4; height: 100%; width: 60%"
							class="form-control" placeholder="?????? ??????" id="inputEmail3" name="contents">
						<select style="width: 35%; margin: 0 auto" class="form-select"
							aria-label="Default select example" name="score">
							<option selected>????????? ???????????????!</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
							<option value="4">Four</option>
							<option value="5">Five</option>
							<option value="6">Six</option>
							<option value="7">Seven</option>
							<option value="8">Eight</option>
							<option value="9">nine</option>
							<option value="10">Ten</option>
						</select>
					</div>
					<div class="col-lg-2 col-3" style="padding: 0">
						<c:if test="${id == null }">
							<input disabled="disabled" class="btn btn-primary col-lg-1 col-3"
							style="width: 100%; height: 100%" type="submit" value="Submit">
						</c:if>
						<c:if test="${id != null }">
							<input class="btn btn-primary col-lg-1 col-3"
							style="width: 100%; height: 100%" type="submit" value="Submit">
						</c:if>
					</div>
				</div>
			</form>
			<c:forEach var="dto" items="${commentsList }">
				<c:if test="${dto.level == 1}">
					<div class="col-lg-12 col-12 review row">
						<div style="display: none;" id="seq">${dto.seq }</div>
						<div class="col-lg-1 col-md-2 col-5" style="overflow: hidden;">${dto.id }</div>
						<div class="col-lg-7 col-md-6 col-7" style="overflow: hidden;">${dto.contents }</div>
						<div class="col-lg-1 col-md-2 col-3">${dto.score }???</div>
						<div class="col-lg-1 col-md-1 col-3">
							<c:if test="${id != null }">
								<button id="${dto.seq }" type="button"
									onclick="doAction(this.id)"
									style="border: none; color: black; background-color: white; min-width: 60px;"
									class="btn btn-primary" data-bs-toggle="modal"
									data-bs-target="#exampleModal" data-bs-whatever="@mdo">??????</button>
							</c:if>
							<c:if test="${id == null }">
								<button id="${dto.seq }" type="button" disabled="disabled"
									style="border: none; color: black; background-color: white; min-width: 60px;"
									class="btn btn-primary">??????</button>
							</c:if>
						</div>
						<div class="col-lg-1 col-md-1 col-3">
							<c:if test="${id != null }">
								<button type="button" onclick="accusation(this)"
									data-seq="${dto.seq }" data-writer="${dto.id }" data-titleid="${titleid }"
									style="border: none; color: black; background-color: white; min-width: 60px;"
									class="btn btn-primary">??????</button>
							</c:if>
							<c:if test="${id == null }">
								<button type="button" onclick="accusation(this)" disabled="disabled"
									style="border: none; color: black; background-color: white; min-width: 60px;"
									class="btn btn-primary">??????</button>
							</c:if>
						</div>
					</div>
					<c:forEach var="dto2" items="${commentsList }">
						<c:if test="${dto2.original_seq==dto.seq }">
							<div class="col-lg-10 col-10 review2 row">
								<div class="col-lg-1 col-4" style="overflow: hidden;">${dto2.id }</div>
								<div class="col-lg-7 col-5"
									style="overflow: hidden;">${dto2.contents }</div>
								<div class="col-lg-2 col-3">
									<c:if test="${id != null }">
										<button type="button" onclick="accusation(this)"
											data-seq="${dto2.seq }" data-writer="${dto2.id }" data-titleid="${titleid }"
											style="border: none; color: black; background-color: white; min-width: 60px;"
											class="btn btn-primary">??????</button>
									</c:if>
									<c:if test="${id == null }">
										<button type="button" onclick="accusation(this)" disabled="disabled"
											style="border: none; color: black; background-color: white; min-width: 60px;"
											class="btn btn-primary">??????</button>
									</c:if>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</c:if>

			</c:forEach>

		</div>
	</div>



	<!-- modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">?????? ??????</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="./commentAction" id="answer">
						<input type="text"
							style="font-size: 1.4em; border-color: #408ad4; height: 200px;"
							class="form-control" placeholder="?????? ??????" id="inputEmail3"
							name="contents">
						<input type="hidden" value="${dto.titleid }" name="titleid">
						<input type="hidden" value="-1" name="score">
						<input type="hidden" name="level" value="2">
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
							<input type="submit" class="btn btn-primary"></input>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/index_scripts.js"></script>
</body>
</html>