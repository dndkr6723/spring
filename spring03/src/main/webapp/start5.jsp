<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">

	$(function() {	
		$('.fruit').keyup(function() { // 키보드에서 손을 땔 때 작동하는 함수(한글자 한글자 검사할 때 쓰임)
			correct = 'apple'
			
			fruitValue = $('.fruit').val()
			if(fruitValue == 'apple'){
				$('.d1').text('정답입니다.')
			}else{
				$('.d1').text('틀렸습니다.')
			}
			
		});
	});


</script>

</head>
<body>

사과 영어 이름: <input type="text" name="fruit" class="fruit"><br>
<div class="d1" style="color:red;"></div><br>

</body>
</html>





