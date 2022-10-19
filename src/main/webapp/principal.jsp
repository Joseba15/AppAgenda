<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.Event" %>
<%@ page import="com.jacaranda.User" %>
<%@ page import="com.jacaranda.CRUDSession" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>



<%	CRUDSession crudSession = new CRUDSession();
User usuario = crudSession.getUser(request.getParameter("username"));

if(usuario == null || usuario.getPassword() == request.getParameter("password")){
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
	
		
		
		<% 	CRUDUsuario us = new CRUDUsuario(user,password);
			List<Integer> lista = us.getIds();
		 %>
			<table id="Info">
			<tr>
	               	<th>Descripcion</th>
	           		<th>Fecha</th>
	               	<th>Hora</th>
	               	<th>Activo</th>
	               	<td colspan="2"><a href="Formulario.jsp?value=<%=user%>"><img src="CSS/IMAGES/mas.png"  width=5%></a></td>
				</tr>
			<% for(int i=0; i<lista.size(); i++){  %>
			<% CRUDEvent e = new CRUDEvent(lista.get(i)); %>
			<tr>
				<td><%=e.getDescripcion()%></td>
				<td><%=e.getFecha()%></td>
				<td><%=e.getHora()%></td>
				<td><%=e.isActivo()%></td>
				<td class="transparent"><a href="Update.jsp?value=<%=e.getId()%>"><img src="CSS/IMAGES/editar.png"  width=10%></a></td>
				<td class="transparent"><a href="Delete.jsp?value=<%=e.getId()%>"><img src="CSS/IMAGES/borrado.png" id="borrado"  width=10%></a></td>
			</tr>
			<%} %>
			</table>

	</div>
	
	<script type="text/javascript" src="JS/principal.js"></script>
</body>
</html>