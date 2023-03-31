<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.emp.manage.*"%>  
<jsp:useBean id="u" class="com.emp.manage.GetSet"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 

<%  
int status=UsersOperation.save(u); 
System.out.println("Running");
if(status>0){ %>
  <p>Record Inserted</p>
<%}else{  
response.sendRedirect("addEmpForm.jsp"); %>
<p>Record Not Inserted</p>
<% }  %>
<jsp:include page="addEmpForm.jsp"></jsp:include>


