<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 반복되는 헤더를 계속 복붙하는게 아니라 잘 만들어 놓은 헤더를 포함시킨다(메인) -->
	<%@ include file="Ex03_heder.jsp" %>
	<p>방문해주셔서 감사합니다.</p>
	<p>여기는 메인 페이지 입니다.</p>
	<p>컨텐츠~~~</p>
	<%@ include file="Ex03_footer.jsp" %>
	<!-- 푸터도 마찬 -->
</body>
</html>