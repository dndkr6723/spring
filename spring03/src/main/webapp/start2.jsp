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
		// 1. btn 클래스의 버튼을 누르면
		$('.btn').click(function() {
		// 2. id, pw 클래스의 값을 가지고 오세요

			
			idValue = $('.id').val()
			pwValue = $('.pw').val()
		// 3. id, pw 값 확인
			console.log('입력한 id 는' + idValue)
			console.log('입력한 pw 는' + pwValue)
			console.log('입력한 id의 길이는' + idValue.length) 
			
			if(idValue.length >= 5){
				location.href="insert.do?id=" + idValue +
								"&pw=" + pwValue
			// 아이디 암호를 넘기기위해 주소창에 id와 pw를 뭍혀서 보낸다.
			// 보통 form 태그를 사용하면 그냥 보낼 수 있다. start3 참조
			}else{
				//alert('입력한 id 가 너무 짧습니다. 5글자 이상 입력해 주세요')
				$('.d1').text('입력한 id 가 너무 짧습니다. 5글자 이상 입력해 주세요')
			}
		
			if(pwValue.length >= 5){
				location.href="insert.do?id=" + idValue +
								"&pw=" + pwValue
			}else{
				$('.d2').text('입력한 pw 가 너무 짧습니다. 5글자 이상 입력해 주세요')
			}
			
		})
	});


</script>

</head>
<body>

오늘은 3일차 입니다.<br>
아이디: <input type="text" name="id" class="id"><br>

<div class="d1" style="color:red;"></div><br>

패스워드: <input type="text" name="pw" class="pw"><br>

<div class="d2" style="color:blue;"></div><br>

<input type="button" value="입력값 체크" class="btn">
</body>
</html>





