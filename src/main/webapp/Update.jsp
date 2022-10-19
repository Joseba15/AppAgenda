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
<meta charset="UTF-8">
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

    <div id="container" align="center">
        <div id="formDiv">
            <h1>Actualizar</h1>
           <form action="UpdateEvent.jsp" method="get">
           		<input type="hidden" value="<%=Integer.valueOf(request.getParameter("value"))%>" name = "id">
				<p>Descripcion: </p>
				<textarea style = "resize:none" name="description"></textarea>
				<p>Fecha: </p>
				<input type="date" name="date">
				<p>Hora: </p>
				<input type="text" name="hour" max="23" min="0">
				<p>Activo: </p>
				Si <input type="radio" name="YN" value="si">
				No <input type="radio" name="YN" value="no">
				<br>
				<br>
				<button name="confirm">Confirm</button>
				<a href="principal.jsp"><button name="back" type="button">Back</button></a>
				
			</form>
        </div>
    </div>
</body>
</html>