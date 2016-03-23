package backend;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalendarDailyServlet
 */
@WebServlet("/CalendarDailyServlet")
public class CalendarDailyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CalendarDailyServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getSession().getAttribute("user").toString();
		String month = request.getSession().getAttribute("month").toString();
		int day = Integer.valueOf(request.getSession().getAttribute("day").toString());
		Object[] dateParams = new Object[]{ 2016, ReturnMonth(month), day};
		
		ArrayList<String> titleList = new ArrayList<String>();
		ArrayList<String> contentList = new ArrayList<String>();
		String title, content;
		for (int i = 1; i <= 15; i++) {
			title = request.getParameter("task" + i);
			content = request.getParameter("description" + i);
			if (title == null || title.isEmpty() || content == null || content.isEmpty()) {
				continue;
			}
			titleList.add(title);
			contentList.add(request.getParameter("description" + i));
		}

		DailyDAL d = new DailyDAL(titleList, contentList, user, dateParams);
		d.SaveOrUpdate();

//		String rsp = "";
//		rsp += "Served at: " + user.toString() + "\n";
//		rsp += Integer.toString(ReturnMonth(month)) + " " + Integer.toString(day) + "\n";
//		for (int i = 1; i <= 15; i++) {
//			rsp += titleList.get(i - 1) + " -- " + contentList.get(i - 1) + "\n";
//		}
//		response.getWriter().append(rsp);

		
		response.sendRedirect("Main.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static int ReturnMonth(String month) {
		switch (month) {
		case "January":
			return 1;
		case "February":
			return 2;
		case "March":
			return 3;
		case "April":
			return 4;
		case "May":
			return 5;
		case "June":
			return 6;
		case "July":
			return 7;
		case "August":
			return 8;
		case "September":
			return 9;
		case "October":
			return 10;
		case "November":
			return 11;
		case "December":
			return 12;
		default:
			return 0;
		}
	}

}
