<%@page import="backend.CalendarDailyServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Daily schedule</title>
</head>
<body>
	<form method="post" action="./CalendarDaily">
		<table border="1" width="80%" cellpadding="5">
			<thead>
				<tr>
					<th colspan="2">
						<%
							session.setAttribute("day", request.getParameter("day"));
							out.println("Schedule for: " + session.getAttribute("month") + " " + request.getParameter("day"));
				        	String user = request.getSession().getAttribute("user").toString();
							String month = request.getSession().getAttribute("month").toString();
							int day = Integer.valueOf(request.getSession().getAttribute("day").toString());
							Object[] dateParams = new Object[]{ 2016, CalendarDailyServlet.ReturnMonth(month), day};
							backend.DailyDAL d = new backend.DailyDAL(null, null, user, dateParams);
				
							java.util.ArrayList<String> titleList = d.GetTitles();
							java.util.ArrayList<String> contentList = d.GetDescriptions();
							int len = titleList.size();
							int i;
						%>
					</th>
				</tr>
				<tr>
					<td><input type="submit" value="Save" /></td>
				</tr>
			</thead>
			<tbody>
			
	        <% 	for(i = 1; i <= len; i++) { %>
				<tr>
					<td width="30%"><input type="text" maxlength="15" name="task<% out.print(i); %>"
						value="<% out.print(titleList.get(i-1)); %>" /></td>
					<td width="70%" style="white-space: nowrap;"><input
						style="width: 90%" type="text" maxlength="35" name="description<% out.print(i); %>"
						value="<% out.print(contentList.get(i-1)); %>" /></td>
				</tr>		            
	        <% } %>
	        <% 	for(int k = i; k < 15; k++) { %>
				<tr>
					<td width="30%"><input type="text" maxlength="15" name="task<% out.print(k); %>"
						value="" /></td>
					<td width="70%" style="white-space: nowrap;"><input
						style="width: 90%" type="text" maxlength="35" name="description<% out.print(k); %>"
						value="" /></td>
				</tr>	
	        <% } %>
			</tbody>
		</table>
	</form>
</body>
</html>