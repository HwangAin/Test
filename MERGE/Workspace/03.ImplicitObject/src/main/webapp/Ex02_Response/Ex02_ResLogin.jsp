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
		http://localhost/imo/Ex02_ResLogin 이라는 맵핑을 입력받으면 
		Ex02_ResLogin.jsp까지 이동하는 서블릿을 만든다.
	 -->
	 <form action="Login"></form>
	 <h2>ResLogin</h2>
	 <h1>오늘도 왔도!!</h1>
	 <!-- ★★ 중요!! Forward(파라메타나 어떤 넘겨줄 값을 보내줄수가 있음 다음페이지로) 다음페이지로 갈때 DB에서 값을 가지고 가야하는 로직이 많다
	 Response(어떠한 파라메터도 못보내고 강제로 페이지를 전환함) 파라메터 필요없이 강제로 갈때 -->
<%-- 	 <%// || && 차이
	 // || OR 논리합, 더하기, 하나의 조건이라도 TRUE가 반환이 되면 그다음 조건은 비교안함.
	 // && AND 논리곱, 곱하기, 하나의 조건이라도 TRUE가 나와도 뒤에 조건이 FALSE가 나오면 비교안함
	 // 
	 if (request.getParameter("id")==null&&request.getParameter("pw")==null) {
		 response.sendRedirect("Ex02_Failed.jsp");
		 
	 }else if(request.getParameter("id").equals("admin")&&request.getParameter("pw").equals("admin1234")) {
		response.sendRedirect("Ex02_Success.jsp");
	 }
	 %> --%>
	 <%
	if( request.getParameter("id") != null && 
		request.getParameter("pw") != null &&
		request.getParameter("id").equals("admin") &&
		request.getParameter("pw").equals("admin1234")) {
		/* Cookie(Response를 통해서 페이지 전환이 일어났을때 또는 일정시간 후에 어떤 데이터를
			삭제 해야하는 상황, 등등에서 임시로 사용할 수 있는 데이터 저장공간- 회사마다 스타일이 다 다름.
			사용정도만 공부하자*/
//			Cookie cookie =  new Cookie("key", "value");
			Cookie cookie =  new Cookie("id", "admin");
			response.addCookie(cookie);//응답객체에 쿠키(임시데이터저장)을 추가함
			//http://192.168.0.228/imo/Login?id=admin&pw=admin1234
		response.sendRedirect("Ex02_Response/Ex02_Success.jsp");//폴더 경로까지 지정해줘야함
	 } else {
		 response.sendRedirect("Ex02_Response/Ex02_Failed.jsp");//폴더 경로까지 지정해줘야함
	 }
	 //http://192.168.0.228/imo/Login 포워드 통해 여기까지 왔을때 url jsp 경로 안나와있다.
	 //http://192.168.0.228/imo/index.jsp <= 인덱스 경로가 그대로 찍힘
	 
	 %>
	 
</body>
</html>