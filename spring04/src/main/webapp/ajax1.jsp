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
			$.ajax({ // ajax ���� 
				url : "server.do",
				success : function(result) {// ���� result �� �־��ش�. server.jsp �� ������ �����´�.
					alert("������ ��� ����..!!")
					$('.d1').append(result) // �޾ƿ� result �� ���â�� �߰�
					
				}
			})
		});
	
	});
		

</script>

</head>
<body>

<input type="text" class="reply" name="reply"> <!-- ��� â ����� �� -->
<input type="button" class="btn1" value="��� �ޱ�">

<div class="d1">
</div>




</body>
</html>




