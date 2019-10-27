<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">

	$(function() { // body 부분을 먼저 인식하고, 이후 자바 스크립트를 실행
		$(".btn1").click(function() {
			$('.d1').append('')
		});
	
	});
		

</script>

</head>
<body>

<input type="text" class="reply" name="reply"> <!-- 댓글 창 만들어 둠 -->
<input type="button" class="btn1" value="댓글 달기">

<div class="d1">
</div>




</body>
</html>




