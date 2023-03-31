<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>

</head>
<body>

<!-- Header Menu-->
		
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid ">
    <a class="navbar-brand" href="#">EMP Manage</a>
  </div>
</nav>

<!-- Body -->

<div class="container p-3 m-3">
<a href="addEmpForm.jsp"><button type="button" class="btn btn-outline-primary m-2">Add Employee</button></a>
<a href="viewEmp.jsp"><button type="button" class="btn btn-outline-primary m-2">View All Employee</button></a>
<a href="searchEmpView.jsp"><button type="button" class="btn btn-outline-primary m-2">Search by Name</button></a>
</div>




</body>
</html>