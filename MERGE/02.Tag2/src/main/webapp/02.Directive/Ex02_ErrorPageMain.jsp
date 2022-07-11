<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>에러 페이지 메인</h1>
	<%@page errorPage="Ex02_ErrorPage.jsp" %>
	<%String[] arr={"T","E","S","T"}; %>
	<%for(int i= 0; i<10; i++){
		System.out.print(arr[i]);
	} %>
	<!-- 에러가 발생할 코드가 있다면 어떤 페이지서 처리할 건지 가능 -->
</body>
</html>