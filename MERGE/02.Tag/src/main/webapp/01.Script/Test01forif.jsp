<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>반복문을 써 봅시다.</h1>
	<!-- for문과 if문을 중첩시키기
		1~100까지의 수중 짝수의 합 홀수의 합을 출력
		짝수도 출력(빨간), 홀수도 출력(파란)-->
	<%!int sum,esum,osum;%>
	<% for(int i=1; i <=100; i++){%>
	<%  
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

