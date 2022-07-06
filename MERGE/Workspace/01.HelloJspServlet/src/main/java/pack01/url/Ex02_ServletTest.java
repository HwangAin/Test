package pack01.url;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//톰캣은 어노테이션을 한번 읽고 다시 읽지않는다.
//그래서 서버 리스타트를 해줘야한다.
@WebServlet("/Ex02_ServletTest")
public class Ex02_ServletTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Ex02_ServletTest() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet!!!두번째 이지요!!!");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("저기 나무가 보이시나요?? 저 나무를 그려보죠.");
		System.out.println("바위에 있는 그림자도 잘 살려볼까요??");
		//doGet(request, response);
	}

}
