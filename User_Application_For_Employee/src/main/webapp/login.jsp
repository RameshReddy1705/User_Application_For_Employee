<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
body {
	background-image: url("Background.jpg");
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

.container {
	width: 400px;
	display: flex;
	flex-direction: column;
	padding: 0 15px;
	background-image: url("");
	
}

h1 {
	color: #fff;
	display: flex;
	justify-content: center;
	padding: 10px;
}
a{
	color: #fff;
	display: flex;
	justify-content: center;
	padding: 10px;
}
.input{
	height: 30px;
	width: 87%;
	color: #fff;
}
.field{
	height: 30px;
	width: 95%;
	border: none;
	border-radius: 30px;
	padding: 0 0 0 25px;
	background: #f5f5f5;
}
</style>
</head>
<body>

	<form action="LoginPage" method="post">
		<div class="box">
			<div class="container">
				<h1>Employee LogIn...</h1>
				<div class="input">
					Phone Number</div>
				<input type="tel" class="field" placeholder="Enter your Phone Number" name="phone"><br>
				<div class="input">Password</div>
				<input type="password" class="field" placeholder="Enter your password"
					name="password"><br>
				 <input type="submit" class="field"	value="LogIn"><br>
				<h3>
					<a href="register.jsp">Click Here To Register The Application</a>
				</h3>
			</div>

		</div>
	</form>

</body>
</html>