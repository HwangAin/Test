<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>import 클래스 추가, 등등</h1>
	<%@page import="java.util.Random" %>
	
	<h1>자바 랜덤 클래스 이용해서 랜덤한 값을 출력 : <%Random random = new Random();%><%=random.nextInt(100)+1%></h1>
	<h1>UUID 인터넷에서 중복값을 최소화 하기위한 식별자 <%UUID.randomUUID() %></h1>
	<h1>지금 날짜 출력  DATE : <%new Date() %></h1>
</body>
</html>