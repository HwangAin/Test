<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int evenSum = 0,oddSum = 0; %>
	<%for(int i =1; i<50; i++){%>
	<% evenSum += 2*i; %>
	<% oddSum += 2*i+1; %>
	<%}%>

	
<h4 style="color:red"><%=evenSum%></h4>
<h4 style="color:blue"><%=oddSum%></h4>
</body>
</html>