<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<style>
body {
	background-color: #FFDEE9;
	background-image: linear-gradient(0deg, #FFDEE9 0%, #B5FFFC 100%);
	margin-top: 20%;
	text-align: center;
	border: 10px solid black;
	width: 50%;
	margin-left: 25%;
}

h1 {
	color: black;
}

form {
	color: black;
}

a {
	text-decoration: none;
	color: red;
	font-size: 150%;
}
</style>
<body>

	<h1>Delete The Merchant</h1>
	<form:form action="delete" method="post" modelAttribute="merchant">
	Enter The Email: <input type="text" id="memail" name="memail">
		<form:button>Delete</form:button>
	</form:form>
	<a href="welcome">Home</a>

</body>
</html>