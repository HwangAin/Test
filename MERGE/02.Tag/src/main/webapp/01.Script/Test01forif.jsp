<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		if(i % 2 == 0) {
			esum+= i;%>
		<p style="color: red;">짝수의 합 <%=esum %></p>
			<%=i %>
		<% }else {
			osum+= i;%>
			<%=i %>
		<p style="color: blue;">홀수의 합<%=osum %></p>
		<% }%>
	<%}%>
	
	
	
</body>
</html>
