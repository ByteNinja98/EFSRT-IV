<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="com.smartoryx.model.Producto"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  href="css/marcas.css">
<link rel="stylesheet"  href="css/estilos.css">
</head>
<body>
<jsp:include page="cabeza.jsp"></jsp:include>
<jsp:include page="menu.jsp"></jsp:include>

<h1>Celulares Apple</h1>

<aside>
				<h3>Categorías</h3>
				<a href="samsung.jsp">Samsung</a> <br> 
				<a href="motorola.jsp">Motorola</a><br>
				 <a href="redmi.jsp">Xiomi</a> <br>
				<a href="catalogo"> Ver todos los celulares</a>
			</aside>

<div class="product-container">
        <!-- Tarjeta de producto -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="Apple/APP-01.jpg" alt="iPhone 11 Amarillo" class="product-image">
            <h2>iPhone 11 128GB 4GB Amarillo | REACONDICIONADO GRADO A</h2>
            <p class="old-price">1,610.00 S/</p>
            <p class="new-price">1,499.00 S/</p>
          
        </div>

        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="Apple/APP-02.jpg" alt="iPhone 11 Blanco" class="product-image">
            <h2>iPhone 11 64GB 4GB Blanco | REACONDICIONADO GRADO A</h2>
            <p class="old-price">2,397.00 S/</p>
            <p class="new-price">2,219.00 S/</p>
         
        </div>

   <div class="product-card">
            <div class="discount">-7%</div>
            <img src="Apple/APP-03.jpg" alt="iPhone 11 Amarillo" class="product-image">
            <h2>iPhone 11 128GB 4GB Amarillo | REACONDICIONADO GRADO A</h2>
            <p class="old-price">1,610.00 S/</p>
            <p class="new-price">1,499.00 S/</p>
          
        </div>

        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="Apple/APP-04.jpg" alt="iPhone 11 Blanco" class="product-image">
            <h2>iPhone 11 64GB 4GB Blanco | REACONDICIONADO GRADO A</h2>
            <p class="old-price">2,397.00 S/</p>
            <p class="new-price">2,219.00 S/</p>
        </div>

   </div>
   <br>
   <div class="product-container">
        <!-- Tarjeta de producto -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="Apple/APP-06.jpg" alt="iPhone 11 Amarillo" class="product-image">
            <h2>iPhone 11 128GB 4GB Amarillo | REACONDICIONADO GRADO A</h2>
            <p class="old-price">1,610.00 S/</p>
            <p class="new-price">1,499.00 S/</p>
        </div>

        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="Apple/APP-11.jpg" alt="iPhone 11 Blanco" class="product-image">
            <h2>iPhone 11 64GB 4GB Blanco | REACONDICIONADO GRADO A</h2>
            <p class="old-price">2,397.00 S/</p>
            <p class="new-price">2,219.00 S/</p>
        </div>

   <div class="product-card">
            <div class="discount">-7%</div>
            <img src="Apple/APP-13.jpg" alt="iPhone 11 Amarillo" class="product-image">
            <h2>iPhone 11 128GB 4GB Amarillo | REACONDICIONADO GRADO A</h2>
            <p class="old-price">1,610.00 S/</p>
            <p class="new-price">1,499.00 S/</p>
        </div>

        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="Apple/APP-17.jpg" alt="iPhone 11 Blanco" class="product-image">
            <h2>iPhone 11 64GB 4GB Blanco | REACONDICIONADO GRADO A</h2>
            <p class="old-price">2,397.00 S/</p>
            <p class="new-price">2,219.00 S/</p>
        </div>

   </div>
   
<br>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>