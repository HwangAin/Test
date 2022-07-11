<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! int getSum(int x,int y){
		return x +y;
	}
		int getMinus(int x,int y){
			return x-y;
		}
		double getDivide(int x, int y){
			return (double)x/y;
		}
		int getMulti(int x, int y){
			return x*y;
		}
	 %>
	
	<p>두수를 입력한 합 1+2 : <%=getSum(1,2) %>
	두수의 차이 2-1 : <%=getMinus(2,1) %>
	두수를 나눈 몫 : <%=getDivide(1,2) %>
	두수의 곱 : <%=getMulti(1,2) %>
	
	</p>
</body>
</html>