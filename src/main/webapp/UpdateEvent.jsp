<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Event" %>
<%@ page import="com.jacaranda.CRUDSession" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.ZoneId"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:useBean id = "crs1" class = "com.jacaranda.CRUDSession"></jsp:useBean>
<title>Insert title here</title>
</head>
<body>

	<% 

		int id = Integer.valueOf(request.getParameter("id"));
		String dateString = request.getParameter("date");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date submitDate = sdf.parse(dateString);
		LocalDate date = submitDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		boolean yn = false;
		if(request.getParameter("YN").equals("si")){
			yn = true;
		}
		
		crs1.updateEvent(id, date, Double.valueOf(request.getParameter("hour")), yn, request.getParameter("description"));
		
		response.sendRedirect("principalEvent.jsp?value="+crs1.getEvent(id).getUserId().getId());%>
	
</body>
</html>