
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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
	<form action="reg" method="post">
		<div class="box">
			<table class="table">
			<tr>
				<td>Name :</td>
				<td><input type="text"  class="input" placeholder="Enter your Name" name="name"></td>
			</tr>
			<tr>
				<td>Age :</td>
				<td><input type="number"  class="input" placeholder="Enter your Age" name="age"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="email"  class="input" placeholder="Enter your Email Id" name="email"></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><input type="tel"  class="input" placeholder="Enter your Phone Number" name="phone"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password"  class="input" placeholder="Enter your Password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" class="field" value="Register"></td>
			</tr>
		</table>
		</div>
	</form>
</body>
</html>