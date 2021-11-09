
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<c:url value="/resources/css/style2.css"/>">
<title>Login_Page</title>
</head>
<body>
	<div class="loginNregistercontainer">
		<div class="card">
			<div class="inner-box" id="card">
				<div class="card-front">
					<h2>LOGIN</h2>
					<!-- login Form -->
					
					<h2>${error_message }</h2>
					<form action ="userlogin" method ="post">
						<input type="email" name="email" class="input-box" placeholder="Your Email Id"
							required> <input type="password" class="input-box" name="password"
							placeholder="password" required>
						<button type="submit" class="submit-btn">Submit</button>
						<input type="checkbox"><span>Remember Me</span>
						<div style="color: red">${error}</div>
					</form>
					<button type="button" class="btn" onclick="openREGISTER()">New
						? Click here</button>
					<a href="">Forgot Password</a>
				</div>
				<div class="card-back">

					<h2>REGISTER</h2>
					<!-- login Form -->
					<form method="post" action="registeruser">
						<input type="text" class="input-box" placeholder="Your Full Name"
							name="username" required> 
							<input type="email"
							name="email" class="input-box" placeholder="Your Email Id"
							required> <input type="password" name="password"
							class="input-box" placeholder="password" required>
						<button type="submit" class="submit-btn">Submit</button>
						<input type="checkbox"><span>Remember Me</span>
					</form>
					<button type="button" class="btn" onclick="openLOGIN()">Have
						an account? Click Here</button>
					<a href="">Forgot Password</a>

				</div>

			</div>
		</div>

	</div>

	<!-- script for rotating login and registration -->
	<script>
		var card = document.getElementById("card");

		function openREGISTER() {
			card.style.transform = "rotateY(-180deg)";
		}

		function openLOGIN() {
			card.style.transform = "rotateY(0deg)";
		}
	</script>

</body>
</html>