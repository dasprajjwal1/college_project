
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
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css"/>">
<title></title>
</head>
<body>
	<!-- Navigation section Starts -->
	<div class="main-bar">
		<nav>
			<input type="checkbox" id="check"> <label for="check"
				class="checkbtn"> <span></span> <span></span> <span></span>
			</label>


			<div class="logo-header">
				<a href="#">HamroMusic</a>
			</div>


			<ul>
				<li class="active"><a href="#">Home</a></li>
				<li><a href="login">Login/Register</a></li>
				<li><a href="#">Playlist</a></li>
				<li><a href="#">Contact Us</a></li>
				<li><a href="#">${user.username }</a></li>
			</ul>

		</nav>
	</div>
	<!-- End of Navigation Part -->