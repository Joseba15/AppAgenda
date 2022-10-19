<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.CRUDEvent" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.ZoneId"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% CRUDEvent evento = new CRUDEvent(Integer.valueOf(request.getParameter("id")));
		evento.setDescripcion(request.getParameter("description"));
		boolean yn = false;
		if(request.getParameter("YN").equals("si")){
			yn = true;
		}
		evento.setActivo(yn);
		evento.setHora(Double.valueOf(request.getParameter("hour")));
		String dateString = request.getParameter("date");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date submitDate = sdf.parse(dateString);
		LocalDate date = submitDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		evento.setFecha(date);
		
		response.sendRedirect("principal.jsp");
	%>
</body>
</html>