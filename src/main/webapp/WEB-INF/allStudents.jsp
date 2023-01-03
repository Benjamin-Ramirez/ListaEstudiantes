<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Students</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>All Students: </h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Name</th>
					<th>Age</th>
					<th>Address</th>
					<th>City</th>
					<th>State</th>				
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${estudiante}" var="stu">
					<tr>
						<td>${stu.first_name}  ${stu.last_name}</td>
						<td>${stu.age}</td>
						<td>${stu.contacto.address}</td>
						<td>${stu.contacto.city}</td>
						<td>${stu.contacto.state}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		
		<div>
		<a href="/students/new" class="btn btn-secondary">Volver a Estudiante</a>
		<a href="/contacts/new" class="btn btn-secondary">Volver a Contacto</a>
		</div>
		
	</div>
</body>
</html>