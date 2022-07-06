package pack01.url;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 어노테이션 ( class파일인데 웹에서 사용할때 어떤 부분을 담당하는지를 정해놓은 규칙)
//없으면 그냥 class파일이니 꼭 있는지 확인해야 한다.
//Servlet파일을 추가하거나 수정이 됐을때 (맵핑) 서버 리스타트
@WebServlet("/Ex01_ServletTest")
public class Ex01_ServletTest extends HttpServlet { //extends 가 되어야 Servlet의 모든 기능을 사용이 가능하다.
	private static final long serialVersionUID = 1L;

    public Ex01_ServletTest() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet입니다.!!!!!");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("오늘은 이 그림을 그려볼거에요~");
		System.out.println("여러분도 잘 따라온다면 이렇게 그릴 수 있을거에요");
		//doGet(request, response);
	}

}

