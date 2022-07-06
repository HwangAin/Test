<%@page import="java.util.List"%>
<%@page import="customer.CustomerDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="customer.CustomerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- ● JSTL 임포트 : jstl태그 이용하기위한 준비 -->    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 관리 모듈</title>
	
</head>
<body>
<!-- $: 동적으로 request에 있는 자원에 접근해서 사용 -->
	<%@ include file="/include/header.jsp"%>
	<h1> 고객 관리 모듈(JSTL)</h1>
		<table class="styled-table" id="hrlist">
		
			<thead>
				<tr>
				<th onclick="sortTable(0)">ID</th>
				<th onclick="sortTable(1)">NAME</th>
				<th onclick="sortTable(2)">GENDER</th>
				<th onclick="sortTable(3)">EMAIL</th>
				<th onclick="sortTable(4)">PHONE</th>
				</tr>
			</thead>
			
			<tbody>
				<!-- c:forEach items속성은 어떤걸 써먹을지 , var속성은 list에서 꺼낼때 어떤식으로 써먹을래-->
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.id}</td>
						<td>${dto.name}</td>
						<td>${dto.gender}</td>
						<td>${dto.email}</td>
						<td>${dto.phone}</td>
					
					</tr>
				</c:forEach>
			</tbody>
			
		</table>
		
			<%@ include file="/include/footer.jsp"%>
</body>
</html>