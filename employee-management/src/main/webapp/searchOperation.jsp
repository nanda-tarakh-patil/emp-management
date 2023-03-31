<%@page import="com.emp.manage.*"%>  
<jsp:useBean id="u" class="com.emp.manage.GetSet"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
<%@page import="com.emp.manage.*, java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%  

String search=request.getParameter("search");
UsersOperation.getRecordByName(search); 
System.out.println("Running");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
</head>
<body>

	<%@ include file="header.jsp" %>
	
	<% 
List<GetSet> list=UsersOperation.getRecordByName(search);  
request.setAttribute("list",list);

%>
 <script> alert('record Searching');</script>

<div class="container p-2">
			<div class="text-center"><h5 >Employee Records</h5></div>
					<table class="table">
						<thead>
							<tr class="table-primary">
								<th scope="col">#</th>
								<th scope="col">Name</th>
								<th scope="col">Position</th>
								<th scope="col">Salary</th>
								<th scope="col">Department</th>
								<th scope="col">Edit</th>
								<th scope="col">Delete</th>
							</tr>
						</thead>

						<c:forEach items="${list}" var="u">  
						<tbody>
							<tr>
								<th scope="row">${u.getId()}</th>
								<td>${u.getName()}</td>
								<td>${u.getPosition()}</td>
								<td>${u.getSalary()}</td>
								<td>${u.getDepart()}</td>
								<td><a href="editEmpForm.jsp?uid=${u.getId()}">Edit</a></td>
								<td><a class="text-danger" href="deleteEmp.jsp?id=${ u.getId() }">Delete</a></td>
							</tr>
				
					
		</tbody>
						</c:forEach>
					</table>


					</div>
					</body>
</html>


