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
	<%
	User u=(User) session.getAttribute("u");
	if(u!=null){
	%>
	
	
	<form action="edit" method="post">
		<div class="box">
			<table class="table">
			<tr>
				<td>Id :</td>
				<td><input type="number" name="id" value="<%=u.getId()%>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><input type="text" value="<%=u.getName()%>" name="name"></td>
			</tr>
			<tr>
				<td>Age :</td>
				<td><input type="number"  value="<%=u.getAge()%>" name="age"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="email"   value="<%=u.getEmail()%>" name="email"></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><input type="tel"  value="<%=u.getPhone()%>" name="phone"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" value="<%=u.getPassword()%>" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update"></td>
			</tr>
		</table>
		</div>
	</form>
	<% 
	}else{
		response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>