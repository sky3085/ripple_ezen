<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 댓글 삭제</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Text&family=Lato:wght@100&family=Quicksand:wght@300&display=swap" rel="stylesheet">

<style>
body {
font-family: 'Noto Sans KR', sans-serif;}
.currentPaging {
	color: #fff;
}
</style>


</head>
<body>
	<div class="table-responsive">
	<!-- 신고 댓글 모두 삭제 기능 추가하고싶음! -->
	<button type="button" class="btn btn-outline-danger fw-bold" onclick="location.href='AllreplyDelete.do'">
  	NEW <span class="badge badge-pill badge-danger text-bg-secondary">${totalA}</span>
	</button>
	<hr>

	<table class="table table-dark table-striped table-sm" border="1" width="500">
      <tr align="center">
         <td width="50">No.</td>
         <td width="70">신고자</td>
         <td width="100">댓글 작성자</td>
         <td align="left">댓글 내용</td>
         <td width="50">영화 점수</td>
         <td width="70">삭제</td>
      </tr>
      
      <c:forEach var="dto" items="${list}">
      	<tr align="center">
			<td>${dto.getAccusation_seq()}</td>
         	<td>${dto.getAccuser()}</td>
         	<td>${dto.getWriter()}</td>
         	<td align="left"><a href="#">${dto.getContents()}</a></td> <!-- 댓글 클릭 -> 작성 페이지로 이동 -->
         	<td>${dto.getScore()}</td>
         	<td><button type="button" class="btn btn-outline-danger" 
         	onclick="location.href='replyDelete.do?seq=${dto.getSeq()}&pg=${pg}'">삭제</button></td>
		</tr>
		<div style="display: none;"> ${dto.getSeq()} </div>
		
      </c:forEach>
    

		<!-- 페이징 처리 -->
		<tr>
			<td colspan="6" align="center">
			<c:if test="${startPage > 3 }">
				<a class="paging" href="adminReply.do?req=adminReply&pg=${startPage - 1}">[이전]</a>
			</c:if>
			
			<c:forEach var="i" begin="${startPage}" end="${endPage}">
				<c:if test="${i== pg}">
					<a class="currentPaging">[${i}]</a>	
				</c:if>
				
				<c:if test="${i!= pg}">
					<a class="paging" href="adminReply.do?req=adminReply&pg=${i}">[${i}]</a>
				</c:if>
			
 			</c:forEach>
			
			<c:if test="${endPage < totapP }">
				<a class="paging" href="adminReply.do?req=adminReply&pg=${endPage + 1}">[다음]</a>
			</c:if>

			</td>
		</tr> 
   </table>
   </div>
	<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script><script src="dashboard.js"></script>
 
</body>
</html>