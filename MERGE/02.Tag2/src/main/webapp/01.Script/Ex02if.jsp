<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>if문 사용해보기</h1>
	<%! int iVar= 5; %>
	
	<!-- 스크립트 안에는 자바 ,밖에는 HTML -->
	<h4>iVar 는 현재  </h4>
	<%if(iVar %2 == 0){%>
		짝수
	<% }else{%>
	홀수
	<%}%>
</body>
</html>