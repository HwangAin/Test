<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../Test02_Request" method="get">
		<input type="text" name="id" placeholder="아이디를 입력하세요.">
		<input type="password" name="pw" placeholder="비밀번호를 입력하세요.">
		<!-- from태그 안쪽에 있는 태그에 값을 전송(HTML) => 태그의 이름을 key값으로 사용 -->
		<!-- from태그에 있는 값을 리퀘스트가 파라메터로 받는 방식이  -->
		<!-- 아이디와 비밀번호를 직접만든 서블릿에서 요청받기 -->
		<!-- .java 파일에 doGet() => request.getParameter => 로 input의 name값을 준다. -->
		<input type="submit" value="전송하기"> 
	</form>	
</body>
</html>