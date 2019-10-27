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
			console.log('이미지 추가 버튼 클릭됨')
			$('.d1').append("<img src=resources/img/새.jpg width=150 hegiht=150>")
		});
		
		$(".btn2").click(function() {
			console.log('텍스트 추가 버튼 클릭됨')
			$('.d1').append("<font color=blue>텍스트가 추가됨")
		});
		
	});
		

</script>

</head>
<body>

<input type="button" class="btn1" value="이미지 추가">
<input type="button" class="btn2" value="텍스트 추가"><br>

<div class="d1"> <!-- 무언가 추가할 공간을 만들어 둔다. div -->
</div>




</body>
</html>




