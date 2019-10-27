<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out2.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() {
		
		var titleValue = $('.title').val()
		alert('입력되있는 title 값은 '+ titleValue)
		var contentValue = $('.content').val()
		alert('입력되있는 content 값은 '+ contentValue)
		var writerValue = $('.writer').val()
		alert('입력되있는 writer 값은 '+ writerValue)
		
	})

</script>

</head>
<body>

제목 <input type="text" name="title" value="spring" class="title"><br>
내용 <input type="text" name="content" value="fun spring" class="content"><br>
작성자 <input type="text" name="writer" value="park" class="writer"><br>


</body>
</html>



