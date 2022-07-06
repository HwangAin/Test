<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../Test01_Request" method="get">
	<input type="submit">
	<p> 파라메터1: 
 	<%for(int i = 0; i < 100; i++){ %> 
		<input type="text" name="param<%=i%>" value="param<%=i%>">
 	<%} %></p>
	</form>
<!-- get방식을 이용해서 Request를 사용할수 가 있음 -->
	<form action="../Test01_Request" method="get">
	<input type="submit">
	<p> 파라메터1: 
 	<%for(int i = 0; i < 100; i++){ %> 
		<input type="text" name="param<%=i%>" value="param<%=i%>">
 	<%} %></p>
	</form>
	
	
<!-- 선생님 코드!!!!!!!!!!!!!!!!!!!!!!! -->	
	<form action="../Test01_Request" method="get">
		<!-- 인풋타입 텍스트 주고 이름하고 아이디 비밀번호 입력받게만들기  -->
		<%for (int i = 0 ; i <100 ; i ++){ %>
		<p>파라메터<%=i %> : <input type="text" name="param<%=i %>" value="param<%=i%>"></p>
		<%} %>
	<input type="submit">
	</form>	
	
	<!--  get방식을 이용해서 Request를 사용할수가있음 -->
	<% if(request.getParameter("cnt") != null){/* request.getParameter("cnt") 잘 기억하기!!! */
		int cnt = Integer.parseInt(request.getParameter("cnt") );
	%>
		

	<form action="../Test02_Request" method="get">
		<!-- 인풋타입 텍스트 주고 이름하고 아이디 비밀번호 입력받게만들기  -->
		<%for (int i = 0 ; i <cnt ; i ++){ %>
		<p>파라메터<%=i %> : <input type="text" name="param<%=i %>" value="param<%=i%>"></p>
		<%} %>
		<input type="text" name="cnt" value="<%=cnt%>">
	<input type="submit">
	</form>	
	<%} %>
</body>
</html>