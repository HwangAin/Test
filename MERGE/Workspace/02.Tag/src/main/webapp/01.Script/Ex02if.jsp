<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>If문</title>
</head>
<body>
	<h1>if문 사용해보기</h1>
	<!-- 전역변수 선언 (누적) -->
	<%! int iVar = 0; 
		
	%>
	
	<!-- 자바 로직을 넣을 수 있는 스크립틀릿 태그를 이용해서 제어문을 사용해보기 -->
	<!-- 스크립트태그 열림 그리고 닫힘까지의 사이는 자바코드 영역
		 그외에는 HTML영역
		  -->
	<%if(iVar % 2 == 0){%>
	 	iVar 는 현재 <%=iVar %> 짝수 입니다.
	 
	<%}else {%>
		iVar 는 현재 <%=iVar %> 홀수 입니다.
		
	<%}//if%>
	
	
</body>
</html>