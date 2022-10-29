<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Event" %>
<%@ page import="com.jacaranda.User" %>
<%@ page import="com.jacaranda.CRUDSession" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>



<%	
	String isSession = (String) session.getAttribute("login");
	String user = (String) session.getAttribute("usuario");
	String password = (String) session.getAttribute("password");
	
	if(isSession == null && user == null){
	response.sendRedirect("Error.html");
	} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagina principal</title>
<link href="CSS/Principal.css" rel="stylesheet" type="text/css"></head>
<body>
	<div class="encabezado">
        <div class="rojo">
		</div>
        <div class="rosa">
            <img src="CSS/IMAGES/2038509.png"  width=4% id="headerImage">
        </div>
    </div>
	
	<div id="container" align="center">
	
		
		
		<%	CRUDSession crs1 = new CRUDSession();
			User usuario = crs1.getUser(Integer.valueOf(request.getParameter("value")));
			List<Event> lista = usuario.getEvents();
		 %>
			<table id="Info">
			<tr>
	               	<th>Evento</th>
	               	<th>Descripcion</th>
	               	<th>Fecha</th>
	               	<th>Hora</th>
	               	<th>Activo</th>
	               	<td colspan="2"><a href="Formulario.jsp?value=<%=usuario.getId()%>"><img src="CSS/IMAGES/mas.png"  width=5%></a></td>
				</tr>
			<% for(int i=0; i<lista.size(); i++){  %>
			
			<tr>
				<td><%=lista.get(i).getId()%></td>
				<td><%=lista.get(i).getDescripcion()%></td>
				<td><%=lista.get(i).getFecha()%></td>
				<td><%=lista.get(i).getHora()%></td>
				<td><%if(lista.get(i).isActivo()){%>
						Activo
					<%}else{%>
						Inactivo
					<%}%></td>
				<td class="transparent"><a href="Update.jsp?value=<%=lista.get(i).getId()%>"><img src="CSS/IMAGES/editar.png"  width=10%></a></td>
				<td class="transparent"><a href="Delete.jsp?value=<%=lista.get(i).getId()%>&id=<%=usuario.getId()%>"><img src="CSS/IMAGES/borrado.png"  width=10%></a></td>
			</tr>
			<%} %>
			</table>

	</div>
	
	<script type="text/javascript" src="JS/principal.js"></script>
</body>
</html>