package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student.StudentDAO;
import student.StudentDTO;
//*.aa
//<a href="test.aa"> </a>
@WebServlet("*.st")// * <- 전체를 받는 url 패턴 ( 맵핑)사용할때는 / (슬러쉬)를 빼야됨
public class StudentController extends HttpServlet {
	RequestDispatcher rd;
	StudentDAO dao = new StudentDAO();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		rd = req.getRequestDispatcher("error/404.jsp");//나중에 추가예정(2022.06.30 HAI)
		if ( req.getServletPath().equals("/list.st") ) {
			
//			추후 DB에서 가져온 정보를 이용 => 지금은 ArrayList를 수동으로 만들기
			ArrayList<StudentDTO> list = dao.getList();
			req.setAttribute("list", list);//포장을 하고~!! req.set ( Attribute (key, value) ) 포장!!
//				JSP에 보내서 출력해보기
			rd = req.getRequestDispatcher("Student/list.jsp"); // rd <= req. get
		} else if ( req.getServletPath().equals("/test.st") ) {
//			DB연결 테스트함
//			dao.selectOne();
//			dao.getList();
			System.out.println(dao.getList().size());
		} else if( req.getServletPath().equals("/detail.st") ) {
			StudentDTO dto = dao.getStudentInfo(req.getParameter("student_no"),req.getParameter("user_id"));
			req.setAttribute("dto", dto) ; 
//			 dto를 포장해서 req에 담아 아래 rd를 통해 Student/detail.jsp 로 보낸다
			
			rd = req.getRequestDispatcher("Student/detail.jsp");
			
//			StudentDTO dto = dao.getStudentInfo(req);
//java.lang.NumberFormatException: null => 이유: list.st 들어갔을때
//												↓url상 name과 detail.st 로 들어올때 name 값 (student_no) 이 달라서 생긴 오류
//			http://localhost/mvc/detail.st?studentno=1&user_id=sdafg
//			StudentDTO infoDto = dao.getStudentInfo();
//			System.out.println(req.getParameter("student_no"));
//			System.out.println(req.getParameter("user_id"));
//			ArraList, ???
//			DAO 메소드 만들어 보기. getStudentInfo 메소드 만들기(리턴타입 자유롭게)
//			detail.jsp <- 상세정보를 확인할 수 있는 페이지 (헤더, 푸터) 그대로 있고 내용만 바뀌게
		
		
		} else if ( req.getServletPath().equals("/update.st") ) {//<= servlet으로 가는 주문~
//			getAttribute("dto")를 하고 dto.getMember 사용 오류 => 
			StudentDTO dto = dao.getStudentInfo(req.getParameter("student_no"),req.getParameter("user_id"));
			req.setAttribute("dto", dto);
			rd = req.getRequestDispatcher("Student/update.jsp");
		} else if( req.getServletPath().equals("/modify.st") ) {
//			int student_no, String student_name, String user_id, String user_pw, String first_name, String last_name
//			student_no=11&user_id=D&student_name=황아인&last_name=D&first_name=D
			StudentDTO dto = new StudentDTO(
					Integer.parseInt(req.getParameter("student_no")),// 수정 안함
					null,
					req.getParameter("user_id"),
					null,
					req.getParameter("first_name"),
					req.getParameter("last_name"));
			dao.modifyInfo(dto);
			resp.sendRedirect("list.st");
			return ;//리턴을 통해서 아래 포워드가 실행되지 않게 막기
			//수정하는 로직을 작성하기.
			//name <= x , first_name , last_name만 수정되게끔 처리 
			// 업데이트 쿼리를 실행하고 나서 0보다 큰 숫자가 return되는지를 체크해보기
			// DAO이용한 업데이트 처리
			//rd = req.getRequestDispatcher("student/update.jsp");	
			//student_no=11&user_id=D&student_name=황아인&last_name=D&first_name=D
//			dao.getModify(req.getParameter("student_no"), req.getParameter("user_id"), req.getParameter("first_name"), req.getParameter("last_name"));
		} else if ( req.getServletPath().equals("/delete.st") ) {
			//DAO 를 통해서 삭제처리
			dao.deleteInfo(req.getParameter("student_no"),req.getParameter("user_id"));
			
			resp.sendRedirect("list.st");
			return ;//리턴을 통해서 아래 포워드가 실행되지 않게 막기	
			
		}
		rd.forward(req, resp);//<= 위치를 확인 잘 하자!!
	}
}







