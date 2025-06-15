<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<%@page import="com.smartoryx.mantenimiento.GestionCategoria"%>
<%@page import="com.smartoryx.model.Categoria"%>
<%@page import="com.smartoryx.model.Producto"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda de Celulares</title>
    
    <!-- Incluir la hoja de estilo si tienes una -->
    <link rel="stylesheet" href="css/estilos.css">
     <link rel="stylesheet" href="css/catalogo.css">
    
</head>
<body>

    <!-- Incluir el encabezado y el menú -->
    <jsp:include page="cabeza.jsp"></jsp:include>
    <jsp:include page="menu.jsp"></jsp:include>

    <!-- Banner con enlace al carrito de compras -->
    <div class="banner">
      <img src="img/banner2.jpg" alt="Banner iPhone 13">
    </div>

				<aside>
				<h3>Categorías</h3>
				 <a href="motorola.jsp">Motorola</a> <br>
				  <a href="apple.jsp">Apple</a> <br>
				  <a href="redmi.jsp">Xiomi</a>  <br>
				  <a href="samsung.jsp">Sansung</a>  <br>


    <main>
        <!-- Sección de productos -->
        <section class="productos" style="display: flex; flex-wrap: wrap; justify-content: space-around; padding: 20px; background-color: #f9f9f9;">
    <%-- Iterar sobre la lista de productos --%>
    <c:forEach items="${lstProductos}" var="p">
        <figure class="producto-item" style="background: #fff; border: 1px solid #ddd; border-radius: 8px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); margin: 15px; width: 300px; text-align: center; transition: transform 0.2s;">
            <img src="producto/${p.idprod}.jpg" alt="Imagen de ${p.descripcion}" style="max-width: 100%; height: auto; border-top-left-radius: 8px; border-top-right-radius: 8px;">
            <figcaption style="padding: 10px;">
                <h3 style="font-size: 1.2em; margin: 10px 0;">${p.descripcion}</h3>
                <p style="color: #333; margin-bottom: 15px;">Precio: ${p.precio}</p>
                <a href="buscar?cod=${p.idprod}" class="btn btn-warning" style="display: inline-block; padding: 10px 15px; background-color: #ff9800; color: #fff; border: none; border-radius: 5px; text-decoration: none; transition: background-color 0.3s;">Añadir al carrito</a>
            </figcaption>
        </figure>
    </c:forEach>
</section>

    </main>

    <!-- Incluir el pie de página -->
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
