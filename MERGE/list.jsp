<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<%@page import="customer.CustomerDTO"%>
<%@page import="java.util.List"%>
=======
>>>>>>> origin/jsy
=======
<%@page import="customer.CustomerDTO"%>
<%@page import="java.util.List"%>
>>>>>>> hai
=======
<%@page import="customer.CustomerDTO"%>
<%@page import="java.util.List"%>
>>>>>>> d77329da06ad9baf7c715f993900f91a0ae9a580
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> hai
=======
>>>>>>> d77329da06ad9baf7c715f993900f91a0ae9a580
	<%@ include file="/include/header.jsp"%>
		<h1>고객관리 모듈</h1>

<%-- 	<%=list.size() %>  list의 사이즈 1이상 들어왔는지 체크 --%>
	<h1 style="text-align: center;"> 고객 정보 조회</h1>

	<table class="styled-table">
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>성별</th>
				<th>이메일</th>
				<th>핸드폰</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<CustomerDTO> list =(List<CustomerDTO>) request.getAttribute("list");
		for(int i = 0 ;  i<list.size(); i ++){
	%>
			<tr>
				<td><a> <%=list.get(i).getId() %></a></td>
				<td><a> <%=list.get(i).getName()%></a></td>
				<td><a> <%=list.get(i).getGender()%></a></td>
				<td><a> <%=list.get(i).getEmail()%></a></td>
				<td><a> <%=list.get(i).getPhone()%></a></td>
			
			</tr>
			
			<%} %>
		</tbody>
	</table>
	<%@ include file="/include/footer.jsp"%>
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/jsy
=======
>>>>>>> hai
=======
>>>>>>> d77329da06ad9baf7c715f993900f91a0ae9a580
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