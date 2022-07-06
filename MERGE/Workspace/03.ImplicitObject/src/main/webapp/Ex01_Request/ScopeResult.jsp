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
	 
	 
<%--  	<%
		//페이지 내에서 데이터를 유지함
		pageContext.setAttribute("pageCtx", "HAI_PAGE");//중요!!
		// 요펑이 있거나 페이지 전환(forwaed)시에 데이터를 한번 유지함
		request.setAttribute("req", "HAI_REQ");//Attribute != param//중요!!
		
		session.setAttribute("session", "HAI_SESSION");//사용빈도 낮음
		
		application.setAttribute("app", "HAI_APP");//사용빈도 낮음
		
	%> --%>
	<!-- 나중에 DTO형식으로 사용을 하신다고 한다 근데 오디를요?? -->
	<%
	String pageCtx = (String)pageContext.getAttribute("pageCtx"); // param(String) , attribute(Object)
	String req = (String) request.getAttribute("req");
	String sSession = (String) session.getAttribute("session");/* 서버 리스타트 전까진 유지가 된다. */
	String sApp = (String) application.getAttribute("app");
	%>
	
	<p>pageContext : <%=pageCtx %></p>
	<p>request : <%=req %></p><!-- 요청이 있거나 포워드로 !!! -->
	<p>session : <%=sSession %></p>
	<p>application : <%=sApp %></p>
	
	
	
	
</body>
</html>