<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

���̵�� �˻��� ����Դϴ�.
<br>
<hr color="blue">
<%-- 
<%= %>  ǥ���� (Expression)  : �������
-->  ${}ǥ�����(Expression Language: EL) : �Ӽ����
--%>
�˻��� id : ${dto3.id}<br> <!-- dto.getId() -->
�˻��� title : ${dto3.title}<br>
�˻��� content : ${dto3.content}<br>
�˻��� writer : ${dto3.writer}<br>


</body>
</html>