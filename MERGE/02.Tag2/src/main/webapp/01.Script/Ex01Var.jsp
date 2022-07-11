<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- 전역변수 만들어보기 -->
		<%! int vInt = 99;
			String a = new String();
			double num = 3.14;
			String[] arr= {"T","E","S","T"}; 
		%>
		<!-- 지역변수 -->
		<%int lvInt =10;
			vInt++;
			lvInt++;
		%>
		
		<!-- 전역변수 표현해보기 -->
		<p>vInt에 값 <%=vInt %> lvInt 값 <%=lvInt %></p>
		<p>String a 값 <%=a %></p>
		<p>num값 <%=num %></p>
		<p>arr[0] 값 <%=arr[0] %>
			arr[1] 값 <%=arr[1] %>
			arr[2] 값 <%=arr[2] %>
			arr[3] 값 <%=arr[3] %></p>
</body>
</html>