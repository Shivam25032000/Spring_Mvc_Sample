<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<style>
body {
	background-color: #B9D9EB;
	border: 10px black solid;
	text-align: center;
	margin-top: 100px;
	margin-bottom: 80px;
	height: 530px;
	margin-left: 20%;
	margin-right: 20%;
}

input {
	padding: 5px;
	font-size: 30px;
	border: none;
	font-style: normal;
	background-color: #B9D9EB;
}

a {
	text-decoration: none;
	color: black;
	border: 5px solid black;
	font-size: 30px;
	padding: 5px;
	margin-top: auto;
}

h4 {
	font-size: 130%;
}
</style>
<body>

	<h4>Welcome To Merchant Configuration <br>
		with CRUD Functionalities
	</h4>
	<hr>
	<a href="configuration" style="line-height: 4; color: black;">Click
		Here For Merchant Configuration</a>
	<br>
	<form action="configuration" method="post">
		<input type="submit" value="Display The Merchant detail" name="false"
			style="border: 5px solid black; padding: 5px; color: black;" />
	</form>
	<br>
	<a href="update" style="line-height: 4; color: black;">Update The
		Detail Of Merchant</a>
	<br>
	<a href="delete" style="line-height: 4; color: black;">Delete The
		Merchant Detail</a>

</body>
</html>