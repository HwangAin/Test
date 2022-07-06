<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 forfor문(중첩) 테스트</title>
<style type="text/css">
h1:nth-child(3)  {
	
}

</style>
</head>
<body>
	<h1>구구단 출력 1</h1>
<table style="border: 1px solid black;">
	<%int g=0;
	%>	<% 
	for(int i = 2; i <=9; i++){%>
	<tr>
		<%for(int j = 1; j <= 9; j++){
			g =i * j;%>
			<td style="border: 1px solid black;"><%=i %>*<%=j %>=<%=g%></td>
			
		<%}%>	
		</tr>
		
	<%}%>
	
</table>
	<h1>구구단 출력 2</h1>
<table style="border: 1px solid black;">
	<%int g1=0;
	%>	<% 
	for(int i = 1; i <=9; i++){%>
	<tr>
		<%for(int j = 2; j <= 9; j++){
			g1 =i * j;%>
			<td style="border: 1px solid black;"><%=j %>*<%=i %>=<%=g1%></td>
		<%}%>	
		</tr>
	<%}%>
	
</table>

	<h1>구구단 출력 3</h1>
<table style="border: 1px solid black;">
	<%int g3=0;
	%>	<% 
	for(int i = 2; i <=9; i++){%>
	
	<% if(i % 2 == 0 ){%>
	<tr style="background-color: blue;">
	<%}else {%>
	<tr style="background-color: red;">
	<%}%>
		<%for(int j = 1; j <= 9; j++){
			g3 =i * j;%>
			<td style="border: 1px solid black;"><%=i %>*<%=j %>=<%=g3%></td>
			
		<%}%>	
		</tr>
		
	<%}%>
	
</table>
	<table style="border: 1px solid black;">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
	</table>
</body>
</html>