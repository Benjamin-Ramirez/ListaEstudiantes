<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Student</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form:form action="/create/student" method="post" modelAttribute="estudiante">
			<h1>New Student</h1>
			<div class="form-group">
				<form:label path="first_name">First Name:</form:label>
				<form:input path="first_name" class="form-control"/>
				<form:errors path="first_name" class="text-danger"/>
			</div>
			<div class="form-group">
				<form:label path="last_name">Last Name:</form:label>
				<form:input path="last_name" class="form-control"/>
				<form:errors path="last_name" class="text-danger"/>
			</div>
			<div class="form-group">
				<form:label path="age">Age: </form:label>
				<form:input path="age" class="form-control"/>
				<form:errors path="age" class="text-danger"/>
			</div>
			
			<input type="submit" value="Guardar" class="btn btn-success"/>
			
		</form:form>
	</div>
</body>
</html>