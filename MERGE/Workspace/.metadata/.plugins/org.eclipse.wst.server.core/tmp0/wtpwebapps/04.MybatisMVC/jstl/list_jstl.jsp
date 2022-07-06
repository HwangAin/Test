<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!-- c라고 주는게 관례다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>여기왔지</h1>
	<p>JSP 개발을 좀 더 편하고 단순화 하기 위한 태그 library(JSP Standard Tag Library)</p>
	<h3>CORE(jstl/core)</h3>
	<!-- 내가 사용할 기능이 들어있는 library 를 tglib태그를 통해서 추가한다. -->
	<!-- Spring Boot(HTML) 타임리프, Spring Legacy(JSP) JSTL -->
	<% int num = 100; %><!-- 자바코드 이용해서 변수선언  가독성이 조금 떨어진다고 하심-->
	<c:set var="num1" value="200" /><!-- JSTL 을 이용한 변수선언 -->
	<p>JSTL로 만든 변수 출력 : ${num1}</p>
	<p>자바로 만든 변수 EL 문법으로 출력 : ${num}</p>
	
	<c:set var="num2" value="300" /><!-- JSTL 을 이용한 변수선언 -->
	<p>num1과 num2의 합 ${num1+num2}</p>
	<p> ${num1+num2}</p><!-- 가인님 사랑님이 알랴주심! -->
	<p> ${num1}<%=%>${num2} <%=%></p><!-- <= 무엇인가...하핳 -->
</body>
</html>