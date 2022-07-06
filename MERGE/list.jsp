<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> JSTL 사용</h1>
	<p>JSP 개발을 좀더 편하고 단순화하기 위한 태그 library(JSP Standard Tag Library)</p>
	<h3>CORE(jstl/core)</h3>

	<% int num= 100; %>
	
	<c:set var="num1" value="200" />
	
	<p>자바로 만든 변수 EL문법으로 출력 : ${num}</p>
	<p>JSTL로 만든 변수 출력 : ${num1 }</p>
	<c:set var="num2" value="300" />
	
	<p>num1과 num2의 합 :  ${num1 + num2} </p>
</body>
</html>