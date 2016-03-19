<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
	function storeValue(str)
	{
		localStorage.setItem("Month", str);
	}
</script>
<head>
<jsp:include page="CalendarServlet" flush="true"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Online calendar</title>
</head>
<body>
	<h1>2016 Calendar</h1>
	<div>
		<table>
			<tr>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
							 	<a href="/CalendarOnline/Month.jsp" onclick="storeValue('January')">January</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('February')">February</a> 
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('March')">March</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('April')">April</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('May')">May</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('June')">June</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('July')">July</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('August')">August</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('September')">September</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('October')">October</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('November')">November</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
				<td>
					<table id="insideTable">
						<tr>
							<td align="center">
								<a href="/CalendarOnline/Month.jsp" onclick="storeValue('December')">December</a>
							</td>
						</tr>
						<tr>
							<td>Mo Tu We Th Fr Sa Su</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>