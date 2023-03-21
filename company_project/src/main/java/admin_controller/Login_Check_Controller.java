package admin_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hrmanagement.vo.employee;
import model.employeeDAO;

public class Login_Check_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("- getParameter id : "+id + " / pw : "+pw);

		employeeDAO dao = employeeDAO.getInstance();
		employee vo = new employee();
		vo.setId(id);
		vo.setPw(pw);

		String emp_id = dao.Login(vo); // 값이 없으면 null 리턴함
		int em_num = vo.getEm_num();
		System.out.println("loginId : " + emp_id + " / em_num : " + em_num);

		HttpSession session = request.getSession();
		if (emp_id != null) {
			session.setAttribute("loginNum", em_num);
			response.getWriter().print("employee");
			System.out.println("employee- getParameter id : "+id + " / pw : "+pw);

		} else if (id.equals("admin")) {
			session.setAttribute("loginNum", "0000");
			response.getWriter().print("admin");
			System.out.println("admin- getParameter id : "+id + " / pw : "+pw);

		} else {
			response.getWriter().print("null");
			System.out.println("null- getParameter id : "+id + " / pw : "+pw);
			
		}

		return null;
	}

}
