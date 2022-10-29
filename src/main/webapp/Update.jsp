<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.ZoneId"%>
<%@ page import="com.jacaranda.CRUDSession" %>
<%@ page import="com.jacaranda.Event" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id = "crs1" class = "com.jacaranda.CRUDSession"></jsp:useBean>
<title>Update</title>
<link href="CSS/Form.css" rel="stylesheet" type="text/css">
</head>
<body>
	 <div class="encabezado">
        <div class="rojo"></div>
            <div class="rosa">
                <img src="CSS/IMAGES/2038509.png"  width=4% id="headerImage">
            </div>
    </div>
	<% Event e1 = crs1.getEvent(Integer.valueOf(request.getParameter("value"))); %>
    <div id="container" align="center">
        <div id="formDiv">
            <h1>Actualizar</h1>
           <form action="UpdateEvent.jsp" method="get">
           		<input type="hidden" value="<%=e1.getId()%>" name = "id">
				<p>Descripcion: </p>
				<textarea style = "resize:none" name="description"><%=e1.getDescripcion()%></textarea>
				<p>Fecha: </p>
				<input type="date" name="date">
				<p>Hora: </p>
				<input type="text" name="hour" max="23" min="0" value="<%=e1.getHora()%>">
				<p>Activo: </p>
				<%if(e1.isActivo()){ %>
					Si <input type="radio" name="YN" value="si" checked>
					No <input type="radio" name="YN" value="no">
				<%}else{%>
					Si <input type="radio" name="YN" value="si">
					No <input type="radio" name="YN" value="no" checked>
				<%}	%>
				<br>
				<br>
				<button name="confirm">Confirm</button>
				<a href="principalEvent.jsp?value=<%=e1.getUserId().getId()%>"><button name="back" type="button">Back</button></a>
				
			</form>
        </div>
    </div>
</body>
</html>