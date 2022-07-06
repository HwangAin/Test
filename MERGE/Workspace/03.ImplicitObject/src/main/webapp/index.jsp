<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1> Request 요청  </h1>
	<ul>
		<li><a href="Ex01_Request/Ex_00infoRequest.jsp"> (관련된 정보들을 살펴보기)</a></li>
		<li><a href="Ex01_Request/Ex_01Request.jsp"> 요청을 해보기 </a></li>
		<li><a href="Ex01_Request/Test01_Request.jsp"> Test 해보기 첫번째 </a></li>
		<!-- Request(요청)객체 가 받을 수 있는 파라메터는 두가지가 있는데 => form(get, post), url?key=value -->
		<li><a href="Ex01_Request/Test02_Request.jsp"> Test 해보기 두번째 </a></li>
		
		
		<!-- 페이지 안뜰때!! 프로젝트 => clean =>  -->
		<li><a href="Ex01_Request/Scope.jsp"> Scope(데이터의 전달 범위) </a></li>
		<li><a href="Ex01_Request/ScopeResult.jsp"> 페이지를 전환 Result </a></li>
		<li><a href="Ex01_Request/ScopeServlet.jsp">  ScopeServlet </a></li>
		<!-- <li><a href="Ex01_Request/TestServlet.jsp"> <= jsp파일로 바로 가면 set이 된 값이 없으니 get 값이 없어 null이 나옴.  ScopeServlet(Test) </a></li> -->
		<li><a href="TestServlet">  ScopeServlet(Test) </a></li>
		<li><a href="Ex01_Response">  Response </a></li>
		<li><a href="Ex02_Response/Ex01_Redirect.jsp">  Controller에서 jsp로 Response </a></li>
		<!-- 
			Scope	<= Zoom 망원경
			데이터의 전달범위는 각각의 스코프마다 차이가 있음
			많은 데이터를 사용하지 않는데 계속 전달을 하려면 유지를 해야함.(Memory)
			많은 데이터를 사용하지 않는데 어떠한 key값으로 저장을 해두면 나중에 혼동이 생김
			
			pageContext ( jsp 페이지 내에서만 데이터를 전달한다.( <=java변수,js변수 ) 사용빈도 낮음 )
			Request		( 요청이나 Forward(페이지 전환)시에 한번만 데이터를 전송한다 ) 사용빈도 높음※ 1 ( 메모리를 가장 효율적으로 사용할 수 있는 것 )
						( ex=> login.jsp에서 로그인할때 요청=> Servlet에서 받음 => 페이지 전환 ( Request x )
						( 모든 데이터의 페이지 이동시 사용함 )
						
			Session		( 브라우저 내에서는 계속 유지되는 정보 )※2 서버, 인터넷 캐시 기록 지우기 전까지 계속 남아있음 ( 로그인정보, 장바구니등등 임시로 계속 저장되어 사용되야 하는것들 - ArrayList걸면 느려짐 )
			(Static이라고 생각하면 됨)
						( 크롬을 실행시킴 < 둘은 세션이 다름 > 크롬창을 시크릿으로 킴 )
						( 크롬을 실행시킴 < 세션이 같음 > 크롬 탭을 추가함 )
						( 주로 로그인 정보나 유지가 되어야하는 정보들을 담을 용도로 사용함 )
						( 같은 브라우저에서 요청되는 모든 데이터를 저장 ) 세션에 유지를 한다.
			ApplicationContext	( 어플리케이션이 완전히 종료되지 않는한 유지됨 => 주로 버전등으로만 사용 -버전정보등을 담는용도등등 )
		
		 -->
		 <!-- jsp에서 => Servlet.java
		 		View  => Controller
		 		 HashMap<key , Value>   
		 메모리를 얼마나 효율적으로 사용하느냐,
		 static, instence,
		 어떤 데이터를 jsp에 보내어 각각 언제 메모리에서 비울건지에 따라 그 각각의 기능이 나누어져 있고 
		  -->
		<!--param(String) => 기본적으로 String으로 받는다. ,
							 param 은 String 타입의 값만 전달할 수 있기 때문에 형변환이 필요 
			attribute(Object) => 기본데이터타입(autoBoxing) 제외한 나머지는 Object타입으로 받는다.
			 
		attribute(Object) => Object 형식으로 받기때문에 형변환이 필요없다.
		setAttribute(String name, Object value) => 값은 Object 타입이기때문에
		기본데이터 타입을 제외한 나머지 모든 클래스 타입이 올수 있음.( OoO!!!)
		
		setAttribute => name 인 속성의 값을 value로 지정함( 리턴타입 -  void )
		
		getAttribute(String name, Object value) => 리턴타입이 Object
		getAttribute => name이 속성인 값을 구하고 값이 존재하지 않으면 null을 리턴함 ( 리턴타입 - Object)
		 -->
		 <!-- 
		 Request => 사용자의 요청
		 Response => 사용자 요청에 의한 서버의 응답 
		 
		 
		  -->
		 <!-- 
		 
		 			model ( M)
		 			
		 java(C)				jsp(V)
		 
		 
		 
		  -->
		
	</ul>

</body>
</html>