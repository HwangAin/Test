<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문</title>
</head>
<body>
	<h4> 선언문과 표현문 </h4>
	<%! String var = "HAI"; %> <!-- 선언문은 전역변수 전역 메소드를 선언하는 공간 -->
	<% var = " 내용 바꿈"; %>
	
	JAVA로 작성된 코드를 표현하기<%=var %><!-- 표현문은 선언된 변수나 메소드등의 결과를 보여주기 위한 태그 ;-안됨  -->
</body>
</html>