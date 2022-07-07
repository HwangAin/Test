<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		JSP 에서 제공하는 내장 객체들을 사용해보기.
	
	 -->
	 
	 
	<%
		//페이지 내에서 데이터를 유지함
		pageContext.setAttribute("pageCtx", "HAI_PAGE");//중요!!
		// 요펑이 있거나 페이지 전환(forwaed)시에 데이터를 한번 유지함
		request.setAttribute("req", "HAI_REQ");//Attribute != param//중요!!
		
		session.setAttribute("session", "HAI_SESSION");//사용빈도 낮음
		
		application.setAttribute("app", "HAI_APP");//사용빈도 낮음
		
	%>
	
	
	
	<form action="../ScopeServlet" method="get">
		<input type="submit" value="전송">
	</form>
	
<%-- 	<jsp:forward page="ScopeResult.jsp"></jsp:forward> --%>
	<!-- forward 썻을때 M V=>Vx V=>C=>V -->
	<!-- attribute에 있는 내용이 전송되려면 forward 방식으로 페이지를 전환하는 요청을 해야함※(Servlet) -->
</body>
</html>