package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.CustomerDAO;
import customer.CustomerDTO;

@WebServlet("*.cu")
public class CustomerController extends HttpServlet {
	RequestDispatcher rd;
	CustomerDAO dao = new CustomerDAO();
	CustomerDTO dto = new CustomerDTO();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		rd = req.getRequestDispatcher("error/404.jsp");//나중에 추가예정(2022.06.30 HAI)
		if ( req.getServletPath().equals("/list.cu") ) {
//			List<CustomerDTO> list = dao.getList();
//			req.setAttribute("cusList", list);
			req.setAttribute("cusList", dao.getList());
			rd =	req.getRequestDispatcher("customer/costomerList_jstl.jsp");
			rd.forward(req, resp);
		}
	}

}