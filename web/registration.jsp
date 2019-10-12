<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
		<link rel="stylesheet" type="text/css" href="css/rstyle.css">
		<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet"> 
		<link href="https://fonts.googleapis.com/css?family=Chewy" rel="stylesheet">

</head>
	<body>

	<div class="title"><h1 align="center"> Sign Up Form</h1></div><br>A
	<img src="images/r8.png" alt="logo" class="logo">

		<div class="container">

			<div class="signup-form">
				
				<form action="registrationServlet" method="post">
				<div class ="form-left">
					<input type="text" name="firstname" placeholder="First Name:">
					<input type="text" name="lastname" placeholder="Last Name:">
					<input type="email" name="email" placeholder="Email Id:">
					

	
				</div>
				<div class="form-right">
				
				<input type="password" name="password" placeholder="Password:">
				<input type="number" name="phone" placeholder="Phone Number:">
				<input type="text" name="address" placeholder="Address:">


			  <input type="submit" name="submit" class="submit-btn">
				</div>
				</form>

				</div>

		</div>
		
</html>