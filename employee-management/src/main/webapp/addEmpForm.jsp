<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee Form</title>
</head>

<body>

<%@ include file="header.jsp" %>

<div class="container">
<form action="addEmpOperation.jsp" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <input name="name" type="text" class="form-control" placeholder="Enter name">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Position</label>
    <input name="position" type="text" class="form-control" placeholder="Enter position">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Salary</label>
    <input name="salary" type="text" class="form-control" placeholder="Enter salary">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Department</label>
    <input name="depart" type="text" class="form-control" placeholder="Enter department">
  </div>

  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>


</body>
</html>