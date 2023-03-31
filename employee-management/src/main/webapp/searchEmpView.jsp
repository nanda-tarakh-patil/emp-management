<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.emp.manage.*, java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
</head>
<body>

<%@ include file="header.jsp" %>

<div class="container p-2">
<form class="d-flex" role="search" action="searchOperation.jsp" method="post">
        <input name="search" class="form-control me-2" type="text" placeholder="Search by name">
        <button class="btn btn-outline-primary m-2" type="submit">Search</button>
      </form>

			</div>

</body>
</html>