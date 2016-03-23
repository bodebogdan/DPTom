package backend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CalendarLoginServlet
 */
@WebServlet("/CalendarLoginServlet")
public class CalendarLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalendarLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String validateLogin = new LoginValidator(request.getParameter("uname"), 
												  request.getParameter("pass")).Validate();
		if (validateLogin.length() == 0){
			String dalLogin = new LoginDAL(request.getParameter("uname"),
										   request.getParameter("pass")).LoginUser();
			if (dalLogin == ""){
				HttpSession session = request.getSession(false);
				session.setAttribute("user", request.getParameter("uname"));
				
				response.sendRedirect("Main.jsp");
			}
			else if (dalLogin == "Register"){
				response.sendRedirect("Register.html");
			}
			else{
				response.getWriter().append(dalLogin);
			}
		}
		else{
			response.getWriter().append(validateLogin);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
