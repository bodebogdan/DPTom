package backend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import backend.RegisterDAL;
import backend.RegistrationValidator;

/**
 * Servlet implementation class CalendarServlet
 */
@WebServlet("/CalendarServlet")
public class CalendarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RegistrationValidator _regValid;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalendarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
	    _regValid = new RegistrationValidator(request.getParameter("fname"), 
	    									  request.getParameter("lname"), 
	    									  request.getParameter("email"), 
	    									  request.getParameter("uname"),
	    						  request.getParameter("pass"));
	    //If no error then display successful message, 
	    //otherwise print all errors
	    String validationErrors = _regValid.ValidateFields();
	    if (validationErrors.length() == 0){
	    	String dalOutput = new RegisterDAL(request.getParameter("fname"),
	    									   request.getParameter("lname"), 
	    									   request.getParameter("email"), 
	    									   request.getParameter("uname"), 
	    									   request.getParameter("pass")).RegisterUser();
	    	if (dalOutput.length() == 0){
	    		response.sendRedirect("ValidRegistration.html");
	    	}
	    	else{
	    		response.getWriter().append(dalOutput);
	    	}
	    }
	    else{
	    	response.getWriter().append(validationErrors);
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
