<<<<<<< HEAD
<%@page import="student.StudentDAO"%>
=======
>>>>>>> 2ba68a5dc05d8ed88cee2693d9bac3a90206d24c
<%@page import="student.StudentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	td{
<<<<<<< HEAD
		background-color: gray;
		color : black;
	}
	tr a {
		border : green;
		
	}
	a:hover {
		cursor: 
	}
	#button{
		background: none;
		border : 0px;
		
	}
	p{
		color: white;
	}
	
</style>
<script type="text/javascript">

	
</script>
</head>
<body>
<%@ include file="/include/header.jsp"%>
	<!-- 학생의 이름  student_no  student_name,  user_id, ,  first_name,  last_name,
			 -->
	<h1 style="text-align: center;">수 정 하 기</h1>
	
				<%
			StudentDAO dao = new StudentDAO();
			StudentDTO dto = dao.getStudentInfo(request.getParameter("user_id"), Integer.parseInt(request.getParameter("student_no")));
	%>
	<form action="modify.st" method="get">
	
	<input type="hidden" value="<%=dto.getStudent_no() %>">
	<table class="styled-table">
	
		<thead>

			<tr>
				<th>학생번호</th>
				<td><p name="student_no" id="student_no"><%=dto.getStudent_no() %><p></td>
			</tr>
			<tr>	
				<th>아이디</th>
				<td><p name="user_id"  id="user_id"><%=dto.getUser_id() %></p></td>
			</tr>	
			<tr>	
				<th>학생이름</th>
				<td><input name="student_name" value="<%=dto.getStudent_name()%>"> </td>
				
			</tr>	
			<tr>	
				<th>성</th>
				<td><input name="last_name" value="<%=dto.getLast_name() %>"></td>
			</tr>	
			<tr>	
				<th>이름</th>
				<td><input name="first_name" value="<%=dto.getFirst_name() %>"></td>
			</tr>
			<tr>
				<td style="background-color: white; text-align: center;"><input type="submit" value="전송"></td>
				<td style="background-color: white; text-align: center;" ><a onclick="deleteInfo('<%=dto.getStudent_no() %>','<%=dto.getUser_id() %>');" >삭제하기</a></td>
			
			</tr>
		</thead>
		<tbody>
			<tr> 
			</tr>
				<!-- 인풋타입사용해서 -->
		</tbody>
	</table>
		</form>
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
=======
		background: #aaa;
		
	}
</style>

</head>
<body>

	<%@ include file="/include/header.jsp"%>
	
	<h1 style="text-align: center;"> 수정 하기 </h1>
	<% StudentDTO dto =(StudentDTO) request.getAttribute("dto"); //Object , %>
	<form action="modify.st" method="get">
	<input type="hidden" name="student_no" value="<%=dto.getStudent_no()%>">
	<input type="hidden" name="user_id" value="<%=dto.getUser_id()%>">
	<table class="styled-table" border="1">
		<thead>
			<tr>
				<th>학생번호</th>
				<td><p><%=dto.getStudent_no()%></p></td>
			</tr>
			<tr>
			<tr>
				<th>아이디</th>
				<td><p><%=dto.getUser_id()%></p></td>
				
			</tr>
			<tr>
			<th>학생이름</th>
				<td><input type="text" name="student_name" value="<%=dto.getStudent_name()%>"> </td>
			</tr>
			<tr>
				<th>성</th>
				<td><input type="text" name="first_name"  value="<%=dto.getFirst_name()%>"></td>
			
			</tr>
			<tr>
				<th>이름</th>
					<td><input type="text" name="last_name" value="<%=dto.getLast_name()%>"></td>
			</tr>
		
		
		</thead>
		<tbody>
				<tr>
					<td><input type="submit" value="수정완료"/>
					</td>
					<td><a href="#">삭제하기</a>
					</td>
			
				</tr>
		</tbody>
	</table>
	
	</form>
	<%@ include file="/include/footer.jsp"%>
	
>>>>>>> 2ba68a5dc05d8ed88cee2693d9bac3a90206d24c
</body>
</html>