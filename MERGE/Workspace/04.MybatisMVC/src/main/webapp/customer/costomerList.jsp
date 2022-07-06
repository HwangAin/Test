<%@page import="customer.CustomerDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	tbody td {
	text-align:  center;
	}

</style>
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	<h1>고객 정보를 보여줍니다.</h1>
	<table class="styled-table">
		<thead>	
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>성별</th>
				<th>email</th>
				<th>연락처</th>
			</tr>
		</thead>
		<tbody>
			<%List<CustomerDTO> list = (List<CustomerDTO>) request.getAttribute("cusList"); %>
			<%-- <%=list.size()%> <= 먼저 값이 넘어왔는지 사이즈 체크를 하자 --%>
			<%for(int i = 0; i < list.size(); i++) {%>
			<tr>
				<td><%=list.get(i).getId()%></td>
				<td><%=list.get(i).getName()%></td>
				<td><%=list.get(i).getGender()%></td>
				<td><%=list.get(i).getEmail()%></td>
				<td><%=list.get(i).getPhone()%></td>
			</tr>
		<%}%>
		</tbody>
	</table>
	
	
	<%@ include file="/include/footer.jsp" %> 
</body>
</html>