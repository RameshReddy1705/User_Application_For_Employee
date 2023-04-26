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
	background-image: url("RegisterImage.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	background-attachment: fixed;
}
	.box {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 90vh;
	padding: 30px;
}
.table{
	width: 350px;
	display: flex;
	flex-direction: column;
	padding: 20px 15px;
	background-image: url("");
	color: #fff;
}
.input{
	width: 200px;
}
.field{
	background: #f5f5f5;
}
</style>

</head>
<body>
	<% User u=(User) session.getAttribute("u");
	if(u!=null){
	%>
	<form action="view">
		<div class="box">
			<table class="table">
			<tr>
				<td><h1>Id :</h1></td>
				<td><h1><%=u.getId() %></h1></td>
			</tr>
			<tr>
				<td><h1>Name :</h1></td>
				<td><h1><%=u.getName() %></h1></td>
			</tr>
			<tr>
				<td><h1>Age :</h1></td>
				<td><h1><%=u.getAge() %></h1></td>
			</tr>
			<tr>
				<td><h1>Email :</h1></td>
				<td><h1><%=u.getEmail() %></h1></td>
			</tr>
			<tr>
				<td><h1>Phone :</h1></td>
				<td><h1><%=u.getPhone() %></h1></td>
			</tr>
			<tr>
				<td><h1>Password :</h1></td>
				<td><h1><%=u.getPassword() %></h1></td>
			</tr>
			<tr>
				<td><a href="home.jsp">Back To Home</a></td>
			</tr>
			
		</table>
		</div>
	</form>
	
	<%} %>
	
	
</body>
</html>