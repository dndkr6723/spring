<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
// �Ź���� �ܾ����
	$(function() {
		$(".btn1").click(function() {
			
			$.ajax({
				url : "https://api.rss2json.com/v1/api.json?rss_url=http%3A%2F%2Fwww.chosun.com%2Fsite%2Fdata%2Frss%2Fent.xml&api_key=jwqb94ttpddmve6ajoee12gtyhcenflk6uu2hrof",
						// json���� ��ȯ�� url
				date : {
					url: "http://www.chosun.com/site/data/rss/ent.xml", // ���� ����Ʈ url
					api_key: "jwqb94ttpddmve6ajoee12gtyhcenflk6uu2hrof", // rss2json ����Ʈ ���� Ű
					count: 20
				},
				success : function(result) {
					alert("�����Ϻ� ����Ʈ�� ���� ����!")
				}
			})
		});
	
	});
		

</script>

</head>
<body>

<input type="button" class="btn1" value="�Ź���� �ܾ����">

<div class="d1">
</div>




</body>
</html>




