<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.emp.manage.*, java.util.*"%> 

<%  
String id=request.getParameter("uid");  
int uid=Integer.parseInt(id);
GetSet u=UsersOperation.getRecordById(uid);  
%>      

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee Form</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container">
<form action="editEmpOperation.jsp" method="post">
<h1>Update Details</h1>
<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Id</label>
    <input value="<%=u.getId()%>" name="id" type="text" class="form-control" placeholder="Enter name" readonly>
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <input value="<%=u.getName()%>" name="name" type="text" class="form-control" placeholder="Enter name">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Position</label>
    <input value="<%=u.getPosition()%>" name="position" type="text" class="form-control" placeholder="Enter position">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Salary</label>
    <input value="<%=u.getSalary()%>" name="salary" type="text" class="form-control" placeholder="Enter salary">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Department</label>
    <input value="<%=u.getDepart()%>" name="depart" type="text" class="form-control" placeholder="Enter department">
  </div>

  <button type="submit" class="btn btn-primary">Update</button>
</form>

</div>

</body>
</html>