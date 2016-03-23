package backend;

public class MonthGenerator {
	public String Generate(String month) {
		StringBuilder sb = new StringBuilder();
		sb.append("<table border='1' width='30%' cellpadding='3'>");
		sb.append("<tr>" + "<td>Mo</td> <td>Tu</td> <td>We</td> <td>Th</td> <td>Fr</td> <td>Sa</td> <td>Su</td>"
				+ "</tr>");

		/*
		 * for (int counter = 1; counter <= monthLength; counter+=7){
		 * sb.append("<tr>"); for(int row = 0; row < 7; row++){ String parameter
		 * = Integer.toString(row + counter); sb.append("<td>" +
		 * "<a href='/CalendarOnline/DailySchedule.jsp?day=" + parameter + ">" +
		 * parameter + "</a>" + "</td>"); } sb.append("</tr>"); }
		 */

		sb.append("<tr>");
		for (int i = 0; i < 6; i++) {
			sb.append("<td>");
			sb.append("<a ");
			String link = "href='/CalendarOnline/DailySchedule.jsp?day=" + Integer.toString(i);
			sb.append(link);
			sb.append(">");
			sb.append(Integer.toString(0));
			sb.append("</a");
			sb.append("</td>");
		}
		sb.append("</tr>");

		sb.append("</table>");

		return sb.toString();
	}

	public int ReturnLength(String month) {
		int monthLength = 0;

		switch (month) {
		case "January":
			monthLength = 31;
			break;
		case "February":
			monthLength = 29;
			break;
		case "March":
			monthLength = 31;
			break;
		case "April":
			monthLength = 30;
			break;
		case "May":
			monthLength = 31;
			break;
		case "June":
			monthLength = 30;
			break;
		case "July":
			monthLength = 31;
			break;
		case "August":
			monthLength = 31;
			break;
		case "September":
			monthLength = 30;
			break;
		case "October":
			monthLength = 31;
			break;
		case "November":
			monthLength = 29;
			break;
		case "December":
			monthLength = 29;
			break;

			
		}
		return monthLength;
	}
}
