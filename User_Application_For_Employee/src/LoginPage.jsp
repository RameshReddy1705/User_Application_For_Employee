<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="boxicons/css/boxicons.css">
<title>Insert title here</title>
<style type="text/css">
* {
	font-family: 'Poppins', sans serif;
}

body {
	background-image: url("LogIn.jpg");
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
}

.container {
	width: 350px;
	display: flex;
	flex-direction: column;
	padding: 0 15px 0 15px;
}

span {
	color: #fff;
	font-size: small;
	display: flex;
	justify-content: center;
	padding: 10px 0 10px 0;
}

header {
	color: #fff;
	font-size: small;
	display: flex;
	justify-content: center;
	padding: 10px 0 10px 0;
}

.input-field {
	display: flex;
	flex-direction: column;
}

.input {
	height: 45px;
	width: 87%;
	border: none;
	outline: none;
	border-radius: 30px;
	color: #fff;
	padding: 0 0 0 45px;
	background: rgba(255, 255, 255, 0.2);
}

::webkit-input-placeholder {
	color: #fff;
}

.submit {
	border: none;
	border-radius: 30px;
	font-size: 15px;
	height: 45px;
	outline: none;
	width: 100%;
	background: rgba(255, 255, 255, 0.7);
	cursor: pointer;
	transition: .3s;
}

.submit:hover {
	box-shadow: 1px 5px 7 1px rgba(0, 0, 0, 0.2);
}

.bottom {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	font-size: small;
	color: #fff;
	margin-top: 10px;
}

.left {
	display: flex;
}

label a {
	color: #fff;
	text-decoration: none;
}
</style>
</head>
<body>
	<form action="LoginPage" method="post">
		<div class="box">
			<div class="container">
				<div class="top-header">
					<span>Have an account ?</span>
					<header>LogIn</header>
				</div>

				<div class="input-field">
					<input type="text" class="input" placeholder="PhoneNumber" required>
					<i class="bx bx-user"></i>
				</div>

				<div class="input-field">
					<input type="Password" class="input" placeholder="Password"
						required> <i class="bx bx-lock-alt"></i>
				</div>

				<div class="input-field">
					<input type="submit" class="submit" value="LogIn"> <input
						type="submit" value="Log">
				</div>

				<div class="bottom">
					<div class="left">
						<input type="checkbox" id="check"> <label for="check">Remember
							me</label>
					</div>

					<div class="right">
						<label><a href="register.jsp">Register</a></label>
					</div>
				</div>
			</div>

		</div>

	</form>
</body>
</html>