<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${result > 0 }) {
		alert("신고된 댓글을 삭제하였습니다.");
	} else {
		alert("신고 댓글 삭제 실패");
	}
	location.href = "../admin/adminReply.do?req=adminReply";
</script>
</head>
<body>
</body>
</html>