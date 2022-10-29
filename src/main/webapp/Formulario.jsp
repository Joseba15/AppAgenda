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
            <input type="hidden" value="<%=request.getParameter("value")%>" name = "id" required>
					<h4>Descripcion</h4>
					<input type="text" name="description" maxlength="30" required>
					<h4>Fecha </h4>
					<input type="date" name="date" required>
                    <h4>Hora</h4>
                    <input type="text" name="hour" maxlength="5" required>
                    <h4>Activo</h4>
                    <p>
                        Yes<input type="radio" name="YN" value="yes">
                        No<input type="radio" name="YN" value="no" checked>
                    </p>
					<br>
					<br>
					<button type="submit" name="Sing Up">Create event</button>
				</form>
        </div>
    </div>

</body>
</html>