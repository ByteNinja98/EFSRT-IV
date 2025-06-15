<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link rel="stylesheet"  href="css/estilos.css">
<body>
    <div class="navbar">
        <div class="contenedor">
              <a href="inicio.jsp"><img src="img/logo.png" alt="Logo Empresa" style="height: 40px;"> <!-- Logo con altura definida --></a>
            <h2 style="margin: 0;">Smartoryx</h2>
            <div class="busqueda">
                <input type="text" placeholder="Buscar productos...">
                <button type="submit">Buscar</button>
 
              
            </div>
      <h5>${u.nombre} ${u.apellido }</h5>
            <div class="iconos">
            
                   <a href="login.jsp"><i class="fas fa-user"></i> <!-- Ícono de login --></a>
                 <a href="canasta.jsp"><i class="fas fa-shopping-cart"></i></a>  <!-- Ícono del carrito -->
            </div>
        </div>
    </div>

    
</body>
</html>
