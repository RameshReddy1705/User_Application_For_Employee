  <%@page import="org.application.credentials.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance</title>

<style>
h1 {
	text-align: center;
	font-size: x-large;
	margin-bottom: 50px;
}

fieldset {
	background-color: silver;
	width: 500px;
	height: 400px;
	border: 1px solid black;
	padding: 20px;
	margin-top: 200px;
	margin-left: 200px;
}

legend {
	background-color: aqua;
	border: 1px solid navy;
	border-radius: 10px;
	padding: 8px;
}

label {
	width: 100px;
	display: inline-block;
}

#submit {
	margin: auto;
	display: block;
	margin-top: 20px;
	padding: 15px 20px 15px 20px;
	font-size: 15px;
	font-weight: bold;
}
</style>



</head>
<body>
	<%
	User u=(User) session.getAttribute("u");
	if(u!=null){
	%>
	<form action="Atte" method="post">
		<fieldset>
			<h1>ATTENDANCE</h1>

			<label>Date</label> <input type="date" name="date" id="date"><br><br> 
			<label>From Time</label> <input type="time" name="fromtime" id="ftime"><br> <br>
			<label>To time</label> <input type="time" name="totime" id="ttime"> <br><br> 
			<label>Reporting Manager</label> <input type="text"name="reportingmanager" id="manager"><br> <br>
			 <input	type="submit" value="submit">
			 
			 

		</fieldset>
	</form>
	<%} %>
</body>
</html>