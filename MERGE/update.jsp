<%@page import="student.StudentDTO"%>
<%@page import="student.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생상세정보 페이지</title>

<style type="text/css">
	td, a, th {
	text-align: center;
	
	}
	
	tr, td, th {
	border: 0.6px solid black;
	}
	
	thead {
	background-color: #ffffff;
	}
</style>
</head>
<body>
	<%@ include file="/include/header.jsp" %>
	
	
	<h1 style="text-align: center;">수정하기</h1>
		<% StudentDTO dto = (StudentDTO) request.getAttribute("dto");%>
		
		<form action="modify.st" method="get">
		<input type="hidden" name="student_no" value="<%=dto.getStudent_no()%>">
		<input type="hidden" name="user_id" value="<%=dto.getUser_id()%>">
		
		<table class="styled-table">
			<thead>
			<tr>
				<td>학생번호</td>
				<td><p name="student_no"><%=dto.getStudent_no()%></p></td>
			</tr><!-- disabled="disabled"  -->
			<tr>
				<td>아이디</td>
				<td><p name=user_id"><%=dto.getUser_id()%></p></td>
			</tr>
			<tr>
				<td>학생이름</td>
				<td><input type="text" name="student_name" value="<%=dto.getStudent_name()%>" style="text-align: center;"></td>
			</tr>
			<tr>
				<td>성</td>
				<td><input type="text" name="last_name" value="<%=dto.getLast_name()%>" style="text-align: center;"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="first_name" value="<%=dto.getFirst_name()%>" style="text-align: center;"></td>
			</tr>

		</thead>
		<tbody>
			<tr>
				<td><input type="submit" value="수정완료">
 				<td><a href="#" >삭제하기</a></td>

				
			</tr>
		</tbody>


	</table>
	</form>
	<%@ include file="/include/footer.jsp" %> 
</body>
</html>