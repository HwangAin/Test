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
		url => .java(Controller) => .jsp 파일
	 -->
	 <!--  -->
	<%
		//페이지 내에서 데이터를 유지함
		pageContext.setAttribute("pageCtx", "HAI_PAGE");//중요!! 페이지 내에서만 사용가능
		// setAttribute(String name, Object value) => 값은 Object 타입이기때문에 
		// 기본데이터 타입을 제외한 나머지 모든 클래스 타입이 올수 있음.( OoO!!!)
		// setAttribute => name 인 속성의 값을 value로 지정함( 리턴타입 -  void )
		
		// 요청이 있거나 페이지 전환(forwaed)시에 데이터를 한번 유지함
		request.setAttribute("req", "HAI_REQ");//Attribute != param//중요!!
		//↑↑↑↑ 엄청 중요해!! 복습하자!!
		session.setAttribute("session", "HAI_SESSION");//사용빈도 낮음
		//↑↑↑↑ 엄청 중요해!! 복습하자!!
		
		application.setAttribute("app", "HAI_APP");//사용빈도 낮음
		
	%>
	
	<%
	String pageCtx = (String)pageContext.getAttribute("pageCtx"); // param(String) , attribute(Object)
	// getAttribute(String name, Object value) => 리턴타입이 Object
	// getAttribute => name이 속성인 값을 구하고 값이 존재하지 않으면 null을 리턴함 ( 리턴타입 - Object)
	String req = (String) request.getAttribute("req");
	String sSession = (String) session.getAttribute("session");
	String sApp = (String) application.getAttribute("app");
	%>
	
	<p>pageContext : <%=pageCtx %></p>
	<p>request : <%=req %></p><!-- 요청이 있거나 포워드로 !!! -->
	<p>session : <%=sSession %></p>
	<p>application : <%=sApp %></p>
	
	<!-- <a action="ScopeResult.jsp">페이지를 전환 ScopeResult </a> -->
	<!-- 폼태그 안에 있는 정보들을 파라메터타입으로 전송시킴 -->
	<form action="ScopeResult.jsp" method="get">
		<input type="submit" value="전송">
	</form>
	
	<jsp:forward page="ScopeResult.jsp"></jsp:forward><!-- 잘 사용하지않음 -->
	<!-- forward 썻을때 M V=>Vx V=>C=>V -->
	<!-- attribute에 있는 내용이 전송되려면 forward 방식으로 페이지를 전환하는 요청을 해야함※(Servlet) -->
</body>
</html>