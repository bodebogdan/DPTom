<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--  <link rel="stylesheet" type="text/css" href="style.css"> -->
<title>Online calendar</title>
</head>
<body>
	<h1><% out.println("2016 Calendar for: " + session.getAttribute("user"));%></h1>
	<div>
		<table>
			<tr>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
							 	<a href="/CalendarOnline/Month.jsp?month=January">January</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=February" onclick="<%session.setAttribute("month", "February");%>">February</a> 
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=March">March</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=April">April</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=May">May</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=June">June</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=July">July</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=August">August</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=September">September</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=October">October</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=November">November</a>
							</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp?month=December">December</a>
							</td>
						</tr>
						<!--  <tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr> -->
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>