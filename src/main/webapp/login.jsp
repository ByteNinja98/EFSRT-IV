<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
       <link rel="stylesheet" href="css/login.css">
       <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2>Iniciar Sesión</h2>
        <form action="login" method="post">
            <div class="form-group">
                <label for="correo">Correo:</label>
                <input type="email" id="correo" name="txtCorreo" required>
            </div>
            
            <div class="form-group">
                <label for="contrasena">Contraseña:</label>
                <input type="password" id="contrasena" name="txtClave" required>
            </div>
            <button type="submit">Iniciar Sesión</button>
          
                <div class="${cssmensaje}" role="alert">
                    ${mensaje}
                </div>
          
        </form>
        <p>¿No tienes una cuenta? <a href="registrar.jsp">Regístrate aquí</a></p>
    </div>
    
   	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
	