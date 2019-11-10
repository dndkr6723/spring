<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body style="background: pink;">

검색 결과입니다.<br>
<hr color="red">

<c:forEach var="result" items="${list2}">

검색한 id: ${result.id}<br>
검색한 passward: ${result.passward}<br>
검색한 name: ${result.name}<br>
검색한 tel: ${result.tel}<br>
<hr color="aqua">

</c:forEach>