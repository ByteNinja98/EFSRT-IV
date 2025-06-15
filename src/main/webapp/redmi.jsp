<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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

<h1>Celulares Redmi</h1>
<aside>
				<h3>Categorías</h3>
				<a href="samsung.jsp">Samsung</a> <br>
				<a href="motorola.jsp">Motorola</a><br>
				 <a href="apple.jsp">Apple</a> <br>
				<a href="catalogo"> Ver todos los celulares</a>
			</aside>

<div class="product-container">

        <!-- Producto 1 -->
        <div class="product-card">
            <div class="discount">-10%</div>
            <img src="redmi/RM-01.jpg" alt="Redmi Note 12 5G Azul" class="product-image">
            <h2>Redmi Note 12 5G 128GB 6GB Azul</h2>
            <p class="old-price">1,199.00 S/</p>
            <p class="new-price">1,079.00 S/</p>
        </div>

        <!-- Producto 2 -->
        <div class="product-card">
            <div class="discount">-15%</div>
            <img src="redmi/RM-02.jpg" alt="Redmi Note 12 Pro Negro" class="product-image">
            <h2>Redmi Note 12 Pro 256GB 8GB Negro</h2>
            <p class="old-price">1,499.00 S/</p>
            <p class="new-price">1,275.00 S/</p>
        </div>

        <!-- Producto 3 -->
        <div class="product-card">
            <div class="discount">-12%</div>
            <img src="redmi/RM-04.jpg" alt="Redmi Note 11 Gris" class="product-image">
            <h2>Redmi Note 11 128GB 6GB Gris</h2>
            <p class="old-price">899.00 S/</p>
            <p class="new-price">789.00 S/</p>
        </div>

        <!-- Producto 4 -->
        <div class="product-card">
            <div class="discount">-20%</div>
            <img src="redmi/RM-05.jpg" alt="Redmi Note 10 Verde" class="product-image">
            <h2>Redmi Note 10 256GB 8GB Verde</h2>
            <p class="old-price">1,199.00 S/</p>
            <p class="new-price">959.00 S/</p>
        </div>
           </div>

  <br>
<div class="product-container">
        <!-- Producto 1 -->
        <div class="product-card">
            <div class="discount">-10%</div>
            <img src="redmi/RM-06.jpg" alt="Redmi Note 12 5G Azul" class="product-image">
            <h2>Redmi Note 12 5G 128GB 6GB Azul</h2>
            <p class="old-price">1,199.00 S/</p>
            <p class="new-price">1,079.00 S/</p>
        </div>

        <!-- Producto 2 -->
        <div class="product-card">
            <div class="discount">-15%</div>
            <img src="redmi/RM-09.jpg" alt="Redmi Note 12 Pro Negro" class="product-image">
            <h2>Redmi Note 12 Pro 256GB 8GB Negro</h2>
            <p class="old-price">1,499.00 S/</p>
            <p class="new-price">1,275.00 S/</p>
        </div>

        <!-- Producto 3 -->
        <div class="product-card">
            <div class="discount">-12%</div>
            <img src="redmi/RM-10.jpg" alt="Redmi Note 11 Gris" class="product-image">
            <h2>Redmi Note 11 128GB 6GB Gris</h2>
            <p class="old-price">899.00 S/</p>
            <p class="new-price">789.00 S/</p>
        </div>

        <!-- Producto 4 -->
        <div class="product-card">
            <div class="discount">-20%</div>
            <img src="redmi/RM-11.jpg" alt="Redmi Note 10 Verde" class="product-image">
            <h2>Redmi Note 10 256GB 8GB Verde</h2>
            <p class="old-price">1,199.00 S/</p>
            <p class="new-price">959.00 S/</p>
        </div>

        
    </div>
   
<br>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>