<%@page import="student.StudentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="student.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	td{
		background-color: white;
		color : black;
	}
	tr a {
		border : green;
		
	}
	a:hover {
		cursor: 
	}
</style>
</head>
<body>
<%@ include file="/include/header.jsp"%>
	<!-- 학생의 이름  student_no  student_name,  user_id, ,  first_name,  last_name,
			 -->
	<h1 style="text-align: center;">디 테 일</h1>

	<table class="styled-table">
		<thead>
				<%
			StudentDTO dto = (StudentDTO)request.getAttribute("dto");
			
	%>
<%-- 			<tr>
				<th>학생번호</th>
				<th>학생이름</th>
				<th>아이디</th>
				<th>성</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
			<%
			StudentDTO dto = (StudentDTO)request.getAttribute("dto");
	%>
			<tr> 
				<td><%=dto.getStudent_no() %></td>
				<td><%=dto.getStudent_name() %></td>
				<td><%=dto.getUser_id() %></td>
				<td><%=dto.getLast_name() %></td>
				<td><%=dto.getFirst_name() %></td>
			</tr> --%>
			<tr>
				<th>학생번호</th>
				<td><%=dto.getStudent_no() %></td>
			</tr>
			<tr>	
				<th>학생이름</th>
				<td><%=dto.getStudent_name() %></td>
				
			</tr>	
			<tr>	
				<th>아이디</th>
				<td><%=dto.getUser_id() %></td>
			</tr>	
			<tr>	
				<th>성</th>
				<td><%=dto.getLast_name() %></td>
			</tr>	
			<tr>	
				<th>이름</th>
				<td><%=dto.getFirst_name() %></td>
			</tr>
			<tr>
			
				<td><a href="update.st?student_no=<%=dto.getStudent_no() %>&user_id=<%=dto.getUser_id() %>" >수정하기</a></td>
				<td style="background-color: white; text-align: center;" ><a onclick="deleteInfo('<%=dto.getStudent_no() %>','<%=dto.getUser_id() %>');" >삭제하기</a></td>
			
			</tr>
		</thead>
		<tbody>
	
			<tr> 
				
			</tr>
				<!-- 인풋타입사용해서 -->
		</tbody>
	</table>
		<script type="text/javascript">
		
		function deleteInfo(student_no, user_id){
			if(confirm('학생번호 : ' + student_no + ', 아이디 : ' + user_id + '  정말 삭제하시겠습니까?')){
				
				location.href='delete.st?student_no='+ student_no + '&user_id='+user_id;
				//삭제를 하기위해서는 key값이 필요함 url에 찍히게 해보기.
				
				
			}else {
				alert('아니오 누름');
			}
			
		}
	</script>
	
	<%@ include file="/include/footer.jsp"%>
</body>
</html>