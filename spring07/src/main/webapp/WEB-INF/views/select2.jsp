<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="resources/css/project.css" type="text/css"
	rel="stylesheet">
</head>
<body>
	<div id="total">
		<!-- top 메뉴 들어가는 부분 -->
		<div id="top">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		
		<!-- 장바구니 고정시킬 곳 -->
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
		
		<div id="content">
		<h3>게시판 전체 검색 출력</h3>
			<hr color="green">
			<table border="1">
				<tr>
					<td width="150">아이디</td>
					<td width="300" bgcolor="white">${dto.id}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td>${dto.title}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td height="100" bgcolor="pink">${dto.content}</td>
				</tr>
				<tr>
					<td>가격</td>
					<td>${dto.price}</td>
				</tr>
				<tr>
					<td>이미지</td>
					<td>
					<img width=200 height=200 src=resources/img/${dto.img}>
					</td>
				</tr>
				
			</table>
		</div>
		
		<hr color="lime">
		<div id="result">
			<c:forEach var="dto2" items="${list}">
				- ${dto2.content}, ${dto2.writer}<br>
			</c:forEach>
		</div>
		
	</div>
</body>
</html>