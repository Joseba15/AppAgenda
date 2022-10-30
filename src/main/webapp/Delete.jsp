<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jacaranda.CRUDSession" %>
<%@ page import="com.jacaranda.Event" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean id = "crs1" class = "com.jacaranda.CRUDSession"></jsp:useBean>
<title>Delete</title>
<link href="CSS/Form.css" rel="stylesheet" type="text/css">
</head>
<body>
	 <div class="encabezado">
        <div class="rojo"></div>
            <div class="rosa">
                <img src="CSS/IMAGES/2038509.png"  width=4% id="headerImage">
                <a href="Index.html"><img src="CSS/IMAGES/logout.png" width=2% id="logoutImage"></a>
            </div>
    </div>

    <div id="container" align="center">
        <div id="formDiv">
            <h1>Delete</h1>
            <form action="deleteEvent.jsp" method="post">
            		<input type="hidden" value="<%=Integer.valueOf(request.getParameter("value"))%>" name = "id">
            		<input type="hidden" value="<%=Integer.valueOf(request.getParameter("id"))%>" name = "idUser">
            		<h2>Are you sure you want to delete the event </h2><h1><%=crs1.getEvent(Integer.valueOf(request.getParameter("value"))).getDescripcion()%></h1><h2>?</h2>
					<button name="confirm">Confirm</button>
					<a href="principalEvent.jsp?value=<%=Integer.valueOf(request.getParameter("id"))%>"><button name="back" type="button">Back</button></a>
			</form>
        </div>
    </div>
</body>
</html>