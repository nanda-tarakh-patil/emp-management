<%@page import="com.emp.manage.*"%>  
<jsp:useBean id="u" class="com.emp.manage.GetSet"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 


<%  
int i=UsersOperation.update(u); 
System.out.print("Update Rinnning");
if(i>0){
%>
<p>Record Updated</p>
<%
} response.sendRedirect("viewEmp.jsp");  
%>  