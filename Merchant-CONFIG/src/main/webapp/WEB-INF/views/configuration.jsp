<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<style type="text/css">
html, body {
	height: 100%;
}

div {
	overflow-x: hidden;
	overflow-y: hidden;
	height: 100%;
	background-color: #21D4FD;
	background-image: linear-gradient(19deg, #21D4FD 0%, #B721FF 100%);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

label {
	display: inline-block;
	width: 200px;
	margin: 5px 5px 5px 5px;
	text-align: left;
}

input[type=text], input[type=password], select {
	width: 200px;
}

button {
	margin: 5px 5px 5px 5px;
	padding: 10px;
}

input[type=checkbox] {
	display: inline-block;
	margin-right: 190px;
	width: 200px;
}

input[type=radio] {
	display: inline-block;
	margin-left: 45px;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Merchant Configuration</h1>
		<form:form action="configuration" method="post"
			modelAttribute="merchant">
			<form:label path="mcn">Merchant Category Name :</form:label>
			<form:select path="mcn" items="${categoryList}" />
			<br />
			<form:label path="mname">Merchant Name :</form:label>
			<form:input path="mname" />
			<br />
			<form:label path="madd">Merchant Address :</form:label>
			<form:input path="madd" />
			<br />
			<form:label path="mno">Merchant Contact Number :</form:label>
			<form:input path="mno" />
			<br />
			<form:label path="memail">Merchant E-mail :</form:label>
			<form:input path="memail" required="required" />
			<br />
			<form:label path="mcountry">Merchant Country :</form:label>
			<form:select path="mcountry" items="${countryList}" />
			<br />
			<form:label path="mregion">Merchant Region :</form:label>
			<form:select path="mregion" items="${regionList}" />
			<br />
			<form:label path="mstate">Merchant State :</form:label>
			<form:select path="mstate" items="${stateList}" />
			<br />
			<form:label path="mcity">Merchant City :</form:label>
			<form:select path="mcity" items="${cityList}" />
			<br />
			<form:label path="mstatus">Merchant Status :</form:label>
			<form:select path="mstatus" items="${statusList}" />
			<br />

			<form:button>Update</form:button>
			<form:button type="reset">Cancel</form:button>
		</form:form>
		<a href="welcome" style="text-decoration: none; color: red;">Home</a>
	</div>
</body>
</html>