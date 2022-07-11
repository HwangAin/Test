<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.table__3 tr:nth-child(even){
		background-color: brown;
	}
.table__3 tr:nth-child(odd){
		background-color: blue;
	}
</style>
</head>
<body>
	<table style="border:1px solid black;">
	<%for (int i = 2; i <= 9; i++) { %>
			<tr>
	<%for (int j = 1; j <= 9; j++) { %>
			<td style="border:1px solid black;">
				<%=i %> * <%=j %> =  <%=i*j %>
			</td>
				<%} %>
			</tr>
		<%} %>
	</table>
	
<table style="border:1px solid black;" id="table3">
	<%for (int i = 1; i <= 9; i++) { %>
			<tr>
	<%for (int j = 2; j <= 9; j++) { %>
			<td style="border:1px solid black;">
				<%=j %> * <%=i %> =  <%=i*j %>
			</td>
				<%} %>
			</tr>
		<%} %>
	</table>
	
	<table class="table__3" >
	<%for (int i = 2; i <= 9; i++) { %>
			<tr>
	<%for (int j = 1; j <= 9; j++) { %>
			<td>
				<%=i %> * <%=j %> =  <%=i*j %>
			</td>
				<%} %>
			</tr>
		<%} %>
	</table>
</body>
</html>