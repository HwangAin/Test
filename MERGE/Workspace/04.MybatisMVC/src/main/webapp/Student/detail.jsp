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
	<% 
	StudentDTO dto = (StudentDTO) request.getAttribute("dto");
// StudentController 에서  req.setAttribute("dto", dto) 에 담은 dto를 받는다.
// 받은 dto 안에서 각각의 데이터들을 목록에 맞게 보여질 수 있도록 
// 스크립트 태그(표현문 <%= 에 해당하는)로 
	%>
	
	
	<table class="styled-table">
		<h1 style="text-align: center;">상세정보</h1>
		<thead>
			<tr>
				<td>학생번호</td>
				<td><a><%=dto.getStudent_no()%></a></td>
			</tr>
			<tr>
				<td>학생이름</td>
				<td><a><%=dto.getStudent_name()%></a></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><a><%=dto.getUser_id()%></a></td>
			</tr>
			<tr>
				<td>성</td>
				<td><a><%=dto.getLast_name()%></a></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><a><%=dto.getFirst_name()%></a></td>
			</tr>
			<tr>
				<th>요청</th>
				<td>
					<form action="detail.st" method="get">
						<input type="hidden" name="student_no"
							value="<%=dto.getStudent_no()%>"> <input type="hidden"
							name="user_id" value="<%=dto.getUser_id()%>"> <input
							type="submit" value="detail.st로 요청">
					</form>
				</td>
		</thead>
		<tbody>
			<tr>
				<td><a href="update.st?student_no=<%=dto.getStudent_no()%>&user_id=<%=dto.getUser_id()%>" >수정하기
<!-- href="update.st?student_no=<%=dto.getStudent_no()%>&user_id=<%=dto.getUser_id()%>"
update.st ▤▶ servlet으로 가는 key
? ▤▶ url에서 id&pw 구분짓는 
student_no= ▤▶ req.getParamete 가 param을 가지고 올때 구분하는 key값
<%=dto.getStudent_no()%>  ▤▶ java코드로 해당 값을 넣어주자
&  ▤▶  

 -->
<%-- 				<input type="hidden" name="student_no" value="<%=dto.getStudent_no()%>" >
				<input type="hidden" name="user_id" value="<%=dto.getUser_id()%>" >
 --%>				
				</a></td>
				<td><a onclick="deleteInfo('<%=dto.getStudent_no()%>','<%=dto.getUser_id()%>');" >삭제하기</a></td><!-- 메소드 방식으로 처리하는 방법이 있다. -->
			</tr>
		</tbody>


	</table>
	<script type="text/javascript">
	
		function deleteInfo(student_no, user_id) {
			
			if (confirm("정말 삭제하시겠습니까?")) {
				location.href=" delete.st?student_no="+student_no+"&user_id="+user_id; 
				
			} else {
				alert('아니오 선택');
			}
		}
	</script>
				<!-- //http://localhost/mvc/delete.st?student_no=11&user_id=HAI -->
				<%-- location.href='delete.st?student_no=<%=dto.getStudent_no()%>&user_id=<%=dto.getUser_id()%>'; --%>
	<%@ include file="/include/footer.jsp" %> 
</body>
</html>