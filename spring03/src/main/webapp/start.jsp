<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/out.css">
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	// jquery�� �̿��� �ž�.!!
	// body�� ���� �а� �ڹٽ�ũ��Ʈ�� ��������ּ���
	
	$(function() {	
		// input�� �Է��� �� ������ ������
		// var inputValue = $('input').val() input �±׸� �ν��Ͽ� �۵��ϹǷ� input �±װ� 2�� �̻��̸� x
		// alert('�ԷµǾ� �ִ� ���� : ' + inputValue) 
		
		var idValue = $('#id').val()	// id ���� �������� �տ� #�� �Է�
		alert('�ԷµǾ� �ִ� id�� ' + idValue)
		
		var pwValue = $('#pw').val()
		alert('�ԷµǾ� �ִ� id�� ' + pwValue)
		
		// var classValue = $('.in') // class ���� �������� �տ� .�� �Է�
		
	});


</script>

</head>
<body>

������ 3���� �Դϴ�.<br>
���̵�: <input type="text" name="id" value="root" id="id" class="in"><br> <!-- id�� ������ ���� �� ��, class�� �ϳ��� �������� ���鶧 ����. -->
�н�����: <input type="text" name="pw" value="1234" id="pw" class="in"><br>

</body>
</html>





