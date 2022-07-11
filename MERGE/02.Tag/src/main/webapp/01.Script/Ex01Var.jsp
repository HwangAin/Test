<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변수</title>
<title>Insert title here</title>
</head>
<body>
	<!-- 전역변수 만들어보기 (String 변수 하나 만들기, double 변수, String[] 배열 4개 이상의 크기(배열내용 T,E,S,T)-->
	<!-- 외부에 선언이 되어 값이 누적이 된다. -->
	<%! int vInt = 88;
		String str1 = "참쉽죠??";
		double dbNum = 3.14;
		String[] str2 = {"T","E","S","T"};
	<!-- 전역변수 만들어보기   (String 변수 하나 만들기 , double 변수 , String[] 배열 4개이상의 크기 (배열내용 T , E ,S,T)-->
	<%! int vInt = 3;
		String vStr = "아무글씨";
		double vDouble = 11.1;
		String[] arr = { "T" , "E" , "S" , "T" } ;
				
	%>
	<!-- 지역 변수 -->
	<% int lvInt = 10;
		vInt ++;
		lvInt ++;
	%>
	<!-- 전역변수 표현해보기 -->
	<p>vInt의 값 <%=vInt %> lvInt의 값 <%=lvInt %></p>
	<p>str1의 값 <%=str1 %></p>
	<p>dbNum의 값 <%=dbNum %></p>
	<p>str2[0]의 값 <%=str2[0]%> <%=str2[1]%><%=str2[2]%><%=str2[3]%></p>
	<p>str2[1]의 값 <%=str2[1]%></p>
	<p>str2[2]의 값 <%=str2[2]%></p>
	<p>str2[3]의 값 <%=str2[3]%></p>
</body>
</html>