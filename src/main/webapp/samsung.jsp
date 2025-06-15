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

<h1>Celulares Samsung</h1>

<aside>
				<h3>Categorías</h3>
				 <a href="motorola.jsp">Motorola</a> <br>
				  <a href="apple.jsp">Apple</a><br>
				   <a href="redmi.jsp">Xiomi</a>  <br>
				<a href="catalogo"> Ver todos los celulares</a>
			</aside>

<div class="product-container">
        <!-- Producto 1 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="samsung/SG-02.jpg" alt="Samsung S23 FE Verde" class="product-image">
            <h2>Samsung S23 FE 256GB 8GB Verde</h2>
            <p class="old-price">2,602.00 S/</p>
            <p class="new-price">2,409.00 S/</p>
        </div>

        <!-- Producto 2 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="samsung/SG-03.jpg" alt="Samsung S20 Ultra Negro" class="product-image">
            <h2>Samsung S20 Ultra 5G 128GB 12GB Negro</h2>
            <p class="old-price">2,490.00 S/</p>
            <p class="new-price">2,309.00 S/</p>
        </div>

        <!-- Producto 3 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="samsung/SG-04.jpg" alt="Samsung S21 Plus Violeta" class="product-image">
            <h2>Samsung S21 Plus 5G 128GB 8GB Violeta | REACONDICIONADO GRADO A</h2>
            <p class="old-price">1,630.00 S/</p>
            <p class="new-price">1,509.00 S/</p>
        </div>

        <!-- Producto 4 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="samsung/SG-01.jpg" alt="Samsung S24 5G Purpura" class="product-image">
            <h2>Samsung S24 5G 128GB 8GB Purpura</h2>
            <p class="old-price">3,487.00 S/</p>
            <p class="new-price">3,229.00 S/</p> 
        </div>

        <!-- Agrega más productos si es necesario -->
    </div>
    <br>
    <div class="product-container">
        <!-- Producto 1 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="samsung/SG-5.jpg" alt="Samsung S23 FE Verde" class="product-image">
            <h2>Samsung S23 FE 256GB 8GB Verde</h2>
            <p class="old-price">2,602.00 S/</p>
            <p class="new-price">2,409.00 S/</p>
        </div>

        <!-- Producto 2 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="samsung/SG-7.jpg" alt="Samsung S20 Ultra Negro" class="product-image">
            <h2>Samsung S20 Ultra 5G 128GB 12GB Negro</h2>
            <p class="old-price">2,490.00 S/</p>
            <p class="new-price">2,309.00 S/</p>
        </div>

        <!-- Producto 3 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="samsung/SG-6.jpg" alt="Samsung S21 Plus Violeta" class="product-image">
            <h2>Samsung S21 Plus 5G 128GB 8GB Violeta | REACONDICIONADO GRADO A</h2>
            <p class="old-price">1,630.00 S/</p>
            <p class="new-price">1,509.00 S/</p>
        </div>

        <!-- Producto 4 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="samsung/SG-8.jpg" alt="Samsung S24 5G Purpura" class="product-image">
            <h2>Samsung S24 5G 128GB 8GB Purpura</h2>
            <p class="old-price">3,487.00 S/</p>
            <p class="new-price">3,229.00 S/</p>
        </div>

        <!-- Agrega más productos si es necesario -->
    </div>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>