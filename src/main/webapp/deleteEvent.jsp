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
		CRUDSession crs1 = new CRUDSession();
		crs1.deleteEvent(Integer.valueOf(request.getParameter("id")));
		response.sendRedirect("principal.jsp");
	%>
</body>
</html>