<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation Success</title>
<style type="text/css">
html, body {
	height: 100%;
}

body {
	overflow-x: hidden;
	overflow-y: hidden;
	height: 100%;
	background-color: #21D4FD;
	background-image: linear-gradient(19deg, #21D4FD 0%, #B721FF 100%);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

center {
	margin-top: 5%;
}

a {
	text-decoration: none;
	color: red;
}
</style>
</head>
<body>
	<center>
		<h1>Detail of the all merchant</h1>
	</center>
	<table border="1" align="center">
		<tr>
			<th>Category</th>
			<th>Name</th>
			<th>Address</th>
			<th>Contact</th>
			<th>Email</th>
			<th>Country</th>
			<th>Region</th>
			<th>State</th>
			<th>City</th>
			<th>Status</th>
		</tr>
		<c:forEach items="${mp}" var="entry">
			<tr>
				<td><c:out value="${entry.value.mcn}" /></td>
				<td><c:out value="${entry.value.mname}" /></td>
				<td><c:out value="${entry.value.madd}" /></td>
				<td><c:out value="${entry.value.mno}" /></td>
				<td><c:out value="${entry.value.memail}" /></td>
				<td><c:out value="${entry.value.mcountry}" /></td>
				<td><c:out value="${entry.value.mregion}" /></td>
				<td><c:out value="${entry.value.mstate}" /></td>
				<td><c:out value="${entry.value.mcity}" /></td>
				<td><c:out value="${entry.value.mstatus}" /></td>
			</tr>
		</c:forEach>
	</table>
	<center>
		<a href="welcome">Home</a>
	</center>
</body>
</html>