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
			// ��ư�� Ŭ���ϸ� �Է��� ���� reValue�� ����
			reValue = $('.reply').val()
			wrValue = $('.writer').val()
			
			$.ajax({
				url : "server.do", // �ڿ� ��ǥ ���־����
				data : {
					reply : reValue, // �ϳ� �� �ѱ� �� ��ǥ! �߿�
					writer : wrValue
				},				// �ڿ� ��ǥ ���־����
				success : function(result) {// ���� result �� �־��ش�. server.jsp �� ������ �����´�.
					alert("������ ��� ����..!!")
					$('.d1').append('<img src=resources/img/��.jpg width=50 height=50>')
					$('.d1').append(result) // �޾ƿ� result �� ���â�� �߰�
					
				}
			})
		});
	
	});
		

</script>

</head>
<body>

<input type="text" class="reply" name="reply"> <!-- ��� â ����� �� -->
<input type="text" class="writer" name="writer"><br>
<input type="button" class="btn1" value="��� �ޱ�">

<div class="d1">
</div>




</body>
</html>




