<%@page import="backend.MonthGenerator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>
	<%
		out.println(request.getParameter("month"));
		session.setAttribute("month", request.getParameter("month"));
	%>
</title>
<script>
	function setVisibility()
	{
		pageTitle = document.title;
		if (pageTitle.toString() === "February"){
			document.getElementById("day30").style.visibility = "hidden";
			document.getElementById("day31").style.visibility = "hidden";	
		}
		else if (pageTitle.toString() === "April" || 
				 pageTitle.toString() === "June" ||
				 pageTitle.toString() === "September" ||
				 pageTitle.toString() === "November")
		{
			document.getElementById("day31").style.visibility = "hidden";	
		}
	}
</script>
</head>
<body onload="setVisibility()">
	<h1 id="headerMonth">
		<%
			out.println(session.getAttribute("user") + " -> " + request.getParameter("month"));
		%>
	</h1>
	<table border='1' width='30%' cellpadding='3'>
		<tr>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=1">1</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=2">2</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=3">3</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=4">4</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=5">5</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=6">6</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=7">7</a></td>
		</tr>
		<tr>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=8">8</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=9">9</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=10">10</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=11">11</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=12">12</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=13">13</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=14">14</a></td>
		</tr>
		<tr>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=15">15</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=16">16</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=17">17</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=18">18</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=19">19</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=20">20</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=21">21</a></td>
		</tr>
		<tr>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=22">22</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=23">23</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=24">24</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=25">25</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=26">26</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=27">27</a></td>
			<td><a href="/CalendarOnline/DailySchedule.jsp?day=28">28</a></td>
		</tr>
		<tr>
			<td> <a href="/CalendarOnline/DailySchedule.jsp?day=29">29</a></td>
			<td id="day30"> <a href="/CalendarOnline/DailySchedule.jsp?day=30">30</a></td>
			<td id="day31"> <a href="/CalendarOnline/DailySchedule.jsp?day=31">31</a></td>									
		</tr>
	</table>

	<%!private void GenerateMonth(javax.servlet.jsp.JspWriter outStream, String month) {
		try {

			int monthLength = 0;
			//outStream.println(new MonthGenerator().Generate(month));
			outStream.println("<table border='1' width='30%' cellpadding='3'>");
			outStream.println("<tr>"
					+ "<td>Mo</td> <td>Tu</td> <td>We</td> <td>Th</td> <td>Fr</td> <td>Sa</td> <td>Su</td>" + "</tr>");
			monthLength = new MonthGenerator().ReturnLength(month);
			/*
			for	(int counter = 1; counter <= monthLength; counter+=7){
				sb.append("<tr>");
				for(int row = 0; row < 7; row++){
					String parameter = Integer.toString(row + counter);
					sb.append("<td>" + "<a href='/CalendarOnline/DailySchedule.jsp?day=" + 
										 parameter + ">" + parameter + "</a>" + "</td>");
				}
				sb.append("</tr>");
			}*/

			outStream.println("<tr>");
			for (int i = 0; i < 6; i++) {
				outStream.println("<td>");
				outStream.println("<a ");
				String link = "href='/CalendarOnline/DailySchedule.jsp?day=" + Integer.toString(i);
				outStream.println(link);
				outStream.println(">");
				outStream.println(Integer.toString(0));
				outStream.println("</a");
				outStream.println("</td>");
			}
			outStream.println("</tr>");

			outStream.println("</table>");

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}%>

	<%
		//GenerateMonth(out, request.getParameter("month"));
	%>
</body>
</html>