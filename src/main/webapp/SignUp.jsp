<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
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
            <form action="singupUser.jsp" method="post">
					<h4>Username <input type="text" name="user"></h4>
					<h4>Password <input type="password" name="password"></h4>
                    <p><input type="checkbox" name="YN" value="yes" required>I have read and accept the terms and conditions</p>
					<br>
					<br>
					<button name="confirm">Confirm</button>
					<a href="Login.html"><button name="back" type="button">Back</button></a>
			</form>
        </div>
    </div>
</body>
</html>