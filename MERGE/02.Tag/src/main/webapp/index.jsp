<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태그</title>
</head>
<body>
	<h1> 스크립트 태그 (Script Tag) </h1>
	<ul>
		<li><a href="01.Script/Ex00into.jsp"> 태그 처음 사용</a></li>
		<li><a href="01.Script/Ex01Var.jsp"> 변수 사용 해보기</a></li>
		<li><a href="01.Script/Ex02if.jsp"> 제어문 IF문 사용</a></li>
		<li><a href="01.Script/Ex03for.jsp"> 제어문 for문 사용</a></li>
		<li><a href="01.Script/Ex04Method.jsp"> 메소드 사용</a></li>
		<!-- for문과 if문을 중첩시키기
			1~100까지의 수중 짝수의 합 홀수의 합을 출력
			짝수도 출력(빨간), 홀수도 출력(파란)
			 -->
		<li><a href="01.Script/Test01forif.jsp"> 제어문 forif문 테스트</a></li>
		<li><a href="01.Script/Test02forfor.jsp"> 제어문 forfor문(중첩) 테스트</a></li>
	</ul>
	
		<h1> 디렉티브 태그 ( Directive Tag) </h1>
	<ul>
		<li><a href="02.Directive/Ex00_IntoDirective.jsp"> 디렉티브 태그 처음 사용</a></li>
		<li><a href="02.Directive/Ex01_Import.jsp"> 기능추가</a></li>
		<li><a href="02.Directive/Ex02_ErrorPageMain.jsp"> 에러 페이지 처리 (여기 에러 발생함)</a></li>
		<li><a href="02.Directive/Ex03_Include.jsp"> 인클루드(페이지 붙이기 또는 외부 페이지 처리)</a></li>
	</ul>
	
			<h1> 액션 태그 ( Action Tag) </h1>
	<ul>
		<li><a href="03.Action/Ex01_Forward.jsp"> 액션태그 포워드(Forward)</a></li>
		<li><a href="03.Action/Ex02_Include.jsp"> 액션태그 Include</a>
		<p>jsp 인클루드는 param 태그를 통해서 동적으로 어떤값을 Include되는 페이지로 전달이 가능함.</p>
		</li>
		<li><a href="03.Action/Ex03_Bean.jsp"> Bean 객체</a>
			<p> Spring에서  Bean 객체를 자동으로 사용하게 되어 있기떄문에 Bean이 뭔지만 알고 넘어가자.</p>
		</li>

	</ul>
</body>
</html>