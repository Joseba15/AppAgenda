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
<jsp:useBean id = "us" class = "com.jacaranda.User"></jsp:useBean>

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
        </div>
    </div>
	
	<div id="container" align="center">
	
		
		
		<% 	us = new User(user,password);
			List<User> lista = crs1.getAllUser();
		 %>
			<table id="Info">
				<thead>
	               	<th>Usuario</th>
	               	<td></td>
				</thead>
			<tbody>
			<% for(int i=0; i<lista.size(); i++){  %>
			
			<tr>
				<td class="colum1"><%=lista.get(i).getUsername()%></td>
				<td colspan="2" class="transparent"><a href="principalEvent.jsp?value=<%=lista.get(i).getId()%>"><img src="CSS/IMAGES/editar.png"  width=5%></a></td>
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
    <script src="JS/principal.js"> </script>
</body>
</html>