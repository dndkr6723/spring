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
		alert('�Էµ��ִ� title ���� '+ titleValue)
		var contentValue = $('.content').val()
		alert('�Էµ��ִ� content ���� '+ contentValue)
		var writerValue = $('.writer').val()
		alert('�Էµ��ִ� writer ���� '+ writerValue)
		
	})

</script>

</head>
<body>

���� <input type="text" name="title" value="spring" class="title"><br>
���� <input type="text" name="content" value="fun spring" class="content"><br>
�ۼ��� <input type="text" name="writer" value="park" class="writer"><br>


</body>
</html>



