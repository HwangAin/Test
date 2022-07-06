package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.js")
public class JSTLController extends HttpServlet {
	RequestDispatcher rd;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		rd = req.getRequestDispatcher("error/404.jsp");//나중에 추가예정(2022.06.30 HAI)
		if ( req.getServletPath().equals("list.js") ) {
			rd = req.getRequestDispatcher("/jstl/list_jstl.jsp");
		}
		rd.forward(req, resp);
	}
	

}
