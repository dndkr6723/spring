<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
// 신문기사 긁어오기
	$(function() {
		$(".btn1").click(function() {
			
			$.ajax({
				url : "https://api.rss2json.com/v1/api.json?rss_url=http%3A%2F%2Fwww.chosun.com%2Fsite%2Fdata%2Frss%2Fent.xml&api_key=jwqb94ttpddmve6ajoee12gtyhcenflk6uu2hrof",
						// json으로 변환된 url
				date : {
					url: "http://www.chosun.com/site/data/rss/ent.xml", // 원본 사이트 url
					api_key: "jwqb94ttpddmve6ajoee12gtyhcenflk6uu2hrof", // rss2json 사이트 본인 키
					count: 20
				},
				success : function(result) {
					alert("조선일보 사이트와 연결 성공!")
				}
			})
		});
	
	});
		

</script>

</head>
<body>

<input type="button" class="btn1" value="신문기사 긁어오기">

<div class="d1">
</div>




</body>
</html>




