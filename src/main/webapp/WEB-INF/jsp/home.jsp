<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Employee Records</title>
<link href="../../webjars/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="../../webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="../../webjars/jquery/3.0.0/js/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<h2 align="center">______ All Records______</h2>
		
		
	<spring:url value="/home/addPatient/" var="addURL" />
		<a class="btn btn-primary" href="${addURL }" role="button">Add New</a>
		
		
		<spring:url value="/home/searchRequest/" var="addURL" />
		<a  class="btn btn-primary" href="${addURL }" role="button">Search</a> 
		
		
	
		
		<table class="table table-striped">
			<thead>
				
				<th scope="row">Id No.</th>
				<th scope="row">Names</th>
				<th scope="row">Mobile No</th>
				<th scope="row">Title</th>
				<th scope="row">Bank</th>
				<th scope="row">Salary</th>
				<th scope="row">Balance</th>
				<th scope="row">Age</th>
			</thead>
			<tbody>
				<c:forEach items="${employeesAll }" var="employee">
					<tr>
						
						<td>${employee.idNumber }</td>
						<td>${employee.names }</td>
						<td>${employee.tel }</td>
						<td>${employee.title }</td>
						<td>${employee.bank }</td>
						<td>${employee.salary }</td>
						<td>${employee.balance }</td>
						<td>${employee.age }</td>
						<td><spring:url
								value="/home/updatePatient/${employee.idNumber }"
								var="updateURL" /> <a class="btn btn-primary"
							href="${updateURL }" role="button">Edit</a></td>
						<td><spring:url
								value="/home/viewPatient/${employee.idNumber }"
								var="deleteURL" /> <a class="btn btn-primary"
							href="${deleteURL }" role="button">View</a></td>
							
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>