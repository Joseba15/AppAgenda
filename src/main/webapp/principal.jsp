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
	
		
		
		<% 	User us = new User(user,password);
			CRUDSession crs1 = new CRUDSession();
			List<User> lista = crs1.getAllUser();
		 %>
			<table id="Info">
			<tr>
	               	<th>Usuario</th>
	               	<td></td>
				</tr>
			<% for(int i=0; i<lista.size(); i++){  %>
			
			<tr>
				<td><%=lista.get(i).getUsername()%></td>
				<td colspan="2" class="transparent"><a href="principalEvent.jsp?value=<%=lista.get(i).getId()%>"><img src="CSS/IMAGES/editar.png"  width=10%></a></td>
			</tr>
			<%} %>
			</table>

	</div>
	
	<script type="text/javascript" src="JS/principal.js"></script>
</body>
</html>