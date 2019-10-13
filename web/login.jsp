<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Login</title>
		<link rel="stylesheet" type="text/css" href="css/l-style.css">
		<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet"> 
	</head>

	<body>

		<div class="container">
			
			<div class="login-form">
				<h3 class="heading"> Login Form</h3>
				<br></br>

				<form method="POST" action="loginServlet">
				
				<input type="text" name="phonenumber" placeholder="Phone number">
				<input type="Password" name="pass" placeholder="Password">
				<input type="submit" value="Login" name="login" class="lg-btn">
				</form>
				<br>
				<p class="text-white"> Don't have account? <a href="registration.jsp">Click Here</a></p>

			</div>


		</div>

	</body>
</html>