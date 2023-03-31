<%@page import="com.emp.manage.*"%>  
<jsp:useBean id="u" class="com.emp.manage.GetSet"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
String id=request.getParameter("id");

int i=UsersOperation.delete(Integer.parseInt(id));  
response.sendRedirect("viewEmp.jsp");  
%>  