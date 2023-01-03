<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Contact</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form:form action="/create/contact" method="post" modelAttribute="contacto">
			<h1>New Contact</h1>
			
			<div class="form-group">
				<form:label path="estudiante">Student: </form:label>
				<form:select path="estudiante">
					<c:forEach items="${estudiante}" var="estu">
						<form:option value="${ estu.id}">${estu.first_name }  ${estu.last_name } </form:option>
					</c:forEach>
				</form:select>
			</div>
			
			<div class="form-group">
				<form:label path="address">Address: </form:label>
				<form:input path="address" class="form-control"/>
				<form:errors path="address" class="text-danger"/>
			</div>
			<div class="form-group">
				<form:label path="city">City: </form:label>
				<form:input path="city" class="form-control"/>
				<form:errors path="city" class="text-danger"/>
			</div>
			<div class="form-group">
				<form:label path="state">State: </form:label>
				<form:input path="state" class="form-control"/>
				<form:errors path="state" class="text-danger"/>
			</div>
			
			<input type="submit" value="Guardar" class="btn btn-success"/>
			
		</form:form>
	</div>
</body>
</html>