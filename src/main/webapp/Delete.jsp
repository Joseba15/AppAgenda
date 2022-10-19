<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
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
            <h1>Sing Up</h1>
            <form action="deleteEvent.jsp" method="post">
            		<input type="hidden" value="<%=Integer.valueOf(request.getParameter("value"))%>" name = "id">
            		<h1>Are you sure you want to delete the event?</h1>
					<button name="confirm">Confirm</button>
					<a href="principal.jsp"><button name="back" type="button">Back</button></a>
			</form>
        </div>
    </div>
</body>
</html>