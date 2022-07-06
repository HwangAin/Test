package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex01_Response")//<= 새로운 Servlet이 추가되면 Server는 인식을 하지 못하기때문에 서버를 다시시작을 해줘야한다.
public class Ex01_Response extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//페이지 전환 RequestDispatcher
		//JSP Controller에서 받아서 사용하게끔 만들어놓음.(서버 스타트시 알아서 객체를 내장객체화해둠)
		RequestDispatcher rd = request.getRequestDispatcher("Ex02_Response/Ex02_ResLogin.jsp");//<= (1)내가 가고 싶은 jsp 페이지 경로
		
		request.setAttribute("id", "admin");
		request.setAttribute("pw", "admin1234");//값이 response 아니야~ㅠㅅㅠ 알겠즤?
		
		rd.forward(request, response);//(2) forward (request, response)
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
