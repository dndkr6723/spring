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
					<th>아이디</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성자</th>
				</tr>
				<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.id}</td>
					<td>
					<a href="select?id=${dto.id}">${dto.title}</a>
					</td>
					<td>${dto.content}</td>
					<td>${dto.writer}</td>
				</tr>
				</c:forEach>
				
			</table>
		</div>
	</div>
</body>
</html>