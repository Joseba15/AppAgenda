<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.jacaranda.CRUDSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:useBean id = "crs1" class = "com.jacaranda.CRUDSession"></jsp:useBean>
<title>Insert title here</title>
</head>
<body>
	<% 
		crs1.deleteEvent(Integer.valueOf(request.getParameter("id")));
		response.sendRedirect("principalEvent.jsp?value="+Integer.valueOf(request.getParameter("idUser")));
	%>
</body>
</html>