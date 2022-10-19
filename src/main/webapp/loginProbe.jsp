<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.CRUDUsuario" %>
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
            	

      CRUDUsuario user = new CRUDUsuario();
    if(usuario !=null && password !=null){
    	if(user.findUser(usuario, password)==true){
            			
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