
<%@page import="org.application.credentials.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url(".jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	background-attachment: fixed;
}

.box {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	min-height: 90vh;
	padding: 30px;
	border: solid black 3px;
	background-color: #dbd1cc;
}
.topnavbar{
	display: flex;
	
	min-height:20vh;
	width:76%;
	justify-content: center;
	background-color: #dbd1cc;
}
.first{
	
	 width:550px;
}
</style>
</head>
<body>
	<%
		User u = (User) session.getAttribute("u");
		if (u != null) {
	%>
	<div class="box">
		<div class="topnavbar">
			<h1>Consultancy Services</h1>
		</div>
		<table>
			<tr>
				<td>
					<h2>
						.....Login Successfully Done..... Hello Mr.<%=u.getName()%>
						Welcome to my application
					</h2>
					<h1  class=" first"><a href="Attendance.jsp">Click here To Give Attendance</a></h1>
					<h1 class=" first">
						<a href="edit.jsp">Click Here To Edit Employee Details...</a>
					</h1>
					<h1 class=" first">
						<a href="delete?id=<%=u.getId()%>">Click Here To Delete</a>
					</h1>
					<h1 class=" first">
						<a href="view.jsp">Click here To View Details</a>
					</h1>
					<h1 class=" first">
						<a href="logout">Click Here To LogOut</a>
					</h1>
				</td>
				
			</tr>
		</table>

	</div>
	<%
		} else {
			response.sendRedirect("login.jsp");
		}
	%>

</body>
</html>