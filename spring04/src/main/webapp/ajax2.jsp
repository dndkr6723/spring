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
		$(".btn1").click(function() {
			// 버튼을 클릭하면 입력한 값을 reValue에 저장
			reValue = $('.reply').val()
			wrValue = $('.writer').val()
			
			$.ajax({
				url : "server.do", // 뒤에 쉼표 써주어야함
				data : {
					reply : reValue, // 하나 더 넘길 때 쉼표! 중요
					writer : wrValue
				},				// 뒤에 쉼표 써주어야함
				success : function(result) {// 변수 result 를 넣어준다. server.jsp 의 내용을 가져온다.
					alert("서버와 통신 성공..!!")
					$('.d1').append('<img src=resources/img/새.jpg width=50 height=50>')
					$('.d1').append(result) // 받아온 result 를 댓글창에 추가
					
				}
			})
		});
	
	});
		

</script>

</head>
<body>

<input type="text" class="reply" name="reply"> <!-- 댓글 창 만들어 둠 -->
<input type="text" class="writer" name="writer"><br>
<input type="button" class="btn1" value="댓글 달기">

<div class="d1">
</div>




</body>
</html>




