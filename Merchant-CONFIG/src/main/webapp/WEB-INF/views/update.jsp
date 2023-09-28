<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<style type="text/css">
body {
	text-align: center;
	margin-top: 15%;
	color: red;
	background-color: #E6E6FA;
	font-size: 30px;
	border: 5px solid;
	margin-left: 20%;
	margin-right: 20%;
}

input {
	size: 30%;
	width: 200px;
	height: 30px;
	margin: 10px;
	margin-bottom: 10px;
}

button {
	width: 100px;
	height: 40px;
	margin: 10px;
	color: white;
	background-color: red;
	font-size: 20px;
}

a {
	text-decoration: none;
	color: green;
	font-size: 100%;
}
</style>
</head>
<body>
	<form:form action="update" method="post" modelAttribute="merchant">
	Enter the Email: <input type="email" id="memail" name="memail"
			required="required">
		<br>
		<form:button>Update</form:button>
		<form:button type="reset">Cancel</form:button>
	</form:form>
	<a href="welcome">Home</a>
</body>
</html>