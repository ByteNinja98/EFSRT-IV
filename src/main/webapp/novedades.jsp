 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>iPhone 16 Pro</title>
<link rel="stylesheet"  href="css/marcas.css">
 <link rel="stylesheet"  href="css/estilos.css">
</head>
<body>

<jsp:include page="cabeza.jsp"></jsp:include>
<jsp:include page="menu.jsp"></jsp:include>
    <div class="container">
        <!-- Encabezado con el título y la imagen principal -->
        <div class="header">
            <h1>iPhone 16 Pro</h1>
            <img src="Apple/APP-08.jpg" alt="iPhone 16 Pro">
        </div>

        <!-- Contenido principal con descripción -->
        <div class="content">
            <img src="Apple/APP-05.jpg" alt="iPhone 16 Pro frontal">
            <p>
                El iPhone 16 Pro tiene un sofisticado diseño de titanio grado 5 con un nuevo acabado microarenado.
                Como el titanio es uno de los metales con mayor relación peso/dureza, este modelo es increíblemente resistente y ligero.
                Además, viene en cuatro colores que se robarán todas las miradas, como el nuevo titanio del desierto.
            </p>
        </div>

        <!-- Segunda sección con más características -->
        <div class="content">
            <p>
                Las novedades no se quedan sólo en el exterior. Con su subestructura térmica 100% reciclada y su vidrio posterior optimizado para disipar mejor el calor, 
                el iPhone 16 Pro tiene un rendimiento continuo hasta un 20% superior al del iPhone 15 Pro.
                Prepárate para hacer todo lo que te gusta y jugar al más alto nivel por horas y horas.
            </p>
            <img src="Apple/APP-06.jpg" alt="iPhone 16 Pro interior">
        </div>

        <!-- Pie de página con otra imagen -->
        <div class="footer">
            <img src="Apple/APP-03.jpg" alt="Vista adicional iPhone 16 Pro">
        </div>
    </div>
    
     <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
   