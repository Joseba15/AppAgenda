<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.CRUDSession" %>
<%@ page import="com.jacaranda.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:useBean id = "crs1" class = "com.jacaranda.CRUDSession"></jsp:useBean>
<title>Insert title here</title>
</head>
<body>

	

	<%  User usuario = new User(request.getParameter("user"),request.getParameter("password"));
		if(!crs1.getAllUser().contains(usuario)){
			crs1.saveUser(usuario.getUsername(),usuario.getPassword());
			response.sendRedirect("Index.html");
		}else{
			response.sendRedirect("Error.html");
		}
		
		

	%>
</body>
</html>