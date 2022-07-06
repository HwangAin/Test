<%@page import="student.StudentDAO"%>
<%@page import="student.StudentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 보기</title>
<style type="text/css">
	a{
		cursor: pointer;
	}
</style>
</head>
<body>
	
	<%@ include file="/include/header.jsp"%>
	<!-- 학생의 이름  student_no  student_name,  user_id, ,  first_name,  last_name,
			 -->
	<h1 style="text-align: center;">학생정보를 보여 줍니다</h1>

	<table class="styled-table">
		<thead>
			<tr>
				<th>학생번호</th>
				<th>학생이름</th>
				<th>아이디</th>
				<th>성</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
			<%
			StudentDAO dao = new StudentDAO();
//		ArrayList<StudentDTO> list =( ArrayList<StudentDTO> ) request.getAttribute("list");
		ArrayList<StudentDTO> list = dao.getList();
		for(int i = 0 ;  i<list.size(); i ++){
	%>
			<tr> 
				<td><a href="detail.st?student_no=<%=list.get(i).getStudent_no() %>&student_name=<%=list.get(i).getStudent_name()%>&user_id=<%=list.get(i).getUser_id()%>&first_name=<%=list.get(i).getFirst_name()%>&last_name=<%=list.get(i).getLast_name()%>"><%=list.get(i).getStudent_no() %></a></td>
				<td><a href="detail.st"><%=list.get(i).getStudent_name()%></a></td>
				<td><a href="detail.st"><%=list.get(i).getUser_id()%></a></td>
				<td><a href="detail.st"><%=list.get(i).getFirst_name()%></a></td>
				<td><a href="detail.st"><%=list.get(i).getLast_name()%></a></td>
				<%-- <td><%=list.get(i).getStudent_no() %></td>
				<td><%=list.get(i`).getStudent_name()%></td>
				<td><%=list.get(i).getUser_id()%></td>
				<td><%=list.get(i).getFirst_name()%></td>
				<td><%=list.get(i).getLast_name()%></td> --%>
				<td>
					<form action="detail.st" method="get">
						<input type="hidden" name="student_no" value="<%=list.get(i).getStudent_no() %>">
						<input type="hidden" name="user_id" value="<%=list.get(i).getUser_id() %>">
						<input type="submit" value="detail.st로요청">
					</form>
				</td>
			</tr>
			<%} %>
				<!-- 인풋타입사용해서 -->
		</tbody>
	</table>
	
	
	<%@ include file="/include/footer.jsp"%>

</body>
</html>