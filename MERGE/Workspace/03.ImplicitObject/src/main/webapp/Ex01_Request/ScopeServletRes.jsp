<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>콘트롤러에서 다시 돌아왔도!!! 뷰로!!</h1>
	<!-- <form action=""></form> -->
	<%= request.getAttribute("attr") %>
	<%= request.getAttribute("req") %>
	<%= request.getAttribute("sSession") %>
	<%= request.getAttribute("sApp") %>
	
</body>
</html>