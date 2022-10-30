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
<jsp:useBean id = "crs1" class = "com.jacaranda.CRUDSession"></jsp:useBean>
<title>Pagina principal</title>

<link href="CSS/Principal.css" rel="stylesheet" type="text/css">
<link href="CSS/locura.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="encabezado">
        <div class="rojo">
        	
		</div>
        <div class="rosa">
            <img src="CSS/IMAGES/2038509.png"  width=4% id="headerImage">
            <a href="Index.html"><img src="CSS/IMAGES/logout.png" width=2% id="logoutImage"></a>
            <a href="principal.jsp"><img src="CSS/IMAGES/flecha.png" width=3% id="back"></a>
        </div>
    </div>
	
	<div id="container" align="center">
	
		
		
		<%	
			User usuario = crs1.getUser(Integer.valueOf(request.getParameter("value")));
			usuario.setEvents(crs1.loadUserList(usuario.getId()));
			List<Event> lista = usuario.getEvents();
		 %>
			<table id="Info">
				<thead>
	               	<th>Evento</th>
	               	<th>Descripcion</th>
	               	<th>Fecha</th>
	               	<th>Hora</th>
	               	<th>Activo</th>
	               	<td></td>
	               	<td ><a href="Formulario.jsp?value=<%=usuario.getId()%>"><img src="CSS/IMAGES/mas.png"  width=5%></a></td>
				</thead>
				<tbody>
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
				</tbody>
			</table>

	</div>
    <!-- JQUERY -->
    <script src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous">
        </script>
    <!-- DATATABLES -->
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js">
    </script>
    <script src="JS/principal.js"></script>
</body>
</html>