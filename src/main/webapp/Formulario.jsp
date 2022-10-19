<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
            <h1>Crear Evento</h1>
            
            <form action="create.jsp" method="post">
            <input type="hidden" value="<%=request.getParameter("value")%>" name = "username">
					<h4>Descripcion</h4>
					<input type="text" name="description">
					<h4>Fecha </h4>
					<input type="date" name="date">
                    <h4>Hora</h4>
                    <input type="text" name="hour" max="23">
                    <h4>Activo</h4>
                    <p>
                        Yes<input type="radio" name="YN" value="yes">
                        No<input type="radio" name="YN" value="no">
                    </p>
					<br>
					<br>
					<button type="submit" name="Sing Up">Create event</button>
				</form>
        </div>
    </div>

</body>
</html>