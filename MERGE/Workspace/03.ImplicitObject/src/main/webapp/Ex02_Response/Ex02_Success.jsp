<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color: green;">성공!!</h1>
	<%
	
		Cookie[] cookies = request.getCookies();
		for(int i = 0; i < cookies.length; i++){
			/* if(cookies[i].getname().equals("id")) id만 추출할때 if문으로 추출할 수 있다.*/
				
			
		%>	
		<P><%=cookies[i].getName() %></P>			
		<P><%=cookies[i].getValue() %></P>			
		<%}%>
	<!-- 
	JSESSIONID
	878890E84FD0DF0F5A5CFE23876F7925
	id
	admin
	 -->
	
</body>
</html>