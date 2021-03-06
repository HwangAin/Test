<%@page import="student.StudentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 보기</title>
</head>
<body>
	<%@ include file="/include/header.jsp" %>
<%-- 	<% response.setIntHeader("Refresh", 3); %> --%>
	<!-- 학생의 이름 성 -->
	<h1>학생정보를 보여줍니다.</h1>
	<table class="styled-table">
		<thead>	
			<tr>
				<th>방구</th>
				<th>학생번호</th>
				<th>학생이름</th>
				<th>아이디1</th>
				<th>아이디2</th>
				<th>아이디3</th>
				<th>삭제하기</th>
				<th>학생번호</th>
				<th>학생이름</th>
				<th>아이디</th>
				<th>성</th>
				<th>이름</th>
				<th>요청</th>
			</tr>
		</thead>
		<tbody>
			<%ArrayList<StudentDTO> list = (ArrayList<StudentDTO>) request.getAttribute("list"); %><!-- Object 타입이기때문에 담겨있는 데이터가 어떤 타입인지 모르기때문에 캐스팅을 해준다. -->
			<%for(int i = 0; i < list.size(); i++) {%>
			<tr>
				<td><a href="detail.st?student_no=<%=list.get(i).getStudent_no() %>&user_id=<%=list.get(i).getUser_id()%>"><%=list.get(i).getStudent_no() %></a></td>
										<!-- ▲▲▲▲ 상단은 url에 get방식으로 처리해주고 있다. -->
				<td><a href="detail.st"><%=list.get(i).getStudent_name()%></a></td>
				<td><%=list.get(i).getUser_id() %></td>
				<td><%=list.get(i).getLast_name() %></td>
				<td><%=list.get(i).getFirst_name() %></td>
				<td>
				<form action="detail.st" method="get">
					<input type="hidden" name="student_no" value="<%=list.get(i).getStudent_no()%>">
					<input type="hidden" name="user_id" value="<%=list.get(i).getUser_id()%>">
					<input type="submit" value="detail.st로 요청">
					<input type="submit" value="가인"/>
				</form>
			</tr>
		<%}%>
		</tbody>
	</table>	
	<%@ include file="/include/footer.jsp" %> 
</body>
</html>