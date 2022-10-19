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
	<% CRUDUsuario u1 = new CRUDUsuario(request.getParameter("user"),request.getParameter("password"));
		u1.createUser();
		response.sendRedirect("LogIn.html");
	%>
</body>
</html>