<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.CRUDSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  

   	String usuario = request.getParameter("user");
   	String password = request.getParameter("password");
            	

   	CRUDSession crs1 = new CRUDSession();
    if(usuario !=null && password !=null){
    	if(crs1.getUser(usuario).getUsername().equals(usuario)){
            			
         	session.setAttribute("login", "True");
         	session.setAttribute("usuario", usuario);
         	session.setAttribute("password",password);
    		response.sendRedirect("principal.jsp");
            		
       	} else { 
       		response.sendRedirect("Error.html");
  	 	}
	 } 
%>
</body>
</html>