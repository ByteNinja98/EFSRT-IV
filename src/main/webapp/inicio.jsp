<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet"  href="css/estilos.css">
 
</head>
<body>
<jsp:include page="cabeza.jsp"></jsp:include>
<jsp:include page="menu.jsp"></jsp:include>
<div class="banner">
        <img src="img/banner.jpg" alt="Banner" class="banner-img">
</div>
<h2 class = "titulo">PRODUCTOS DESTACADOS</h2>
 
<div class="productos-destacados">

 <a href="catalogo" class="producto"> 
            <div class="descuento">-20%</div>
            <img src="img/CL001.jpg" alt="Producto 1">
            <h3>Galaxy A55 256GB navy</h3>
            <span class="precio">S/1500.00</span>   
            <br>
            <span class="precio-con-descuento">S/1200.00</span>   
            <br>
            <button class="btn-comprar">Lo quiero</button>
        </a>

        <a href="catalogo" class="producto">
            <div class="descuento">-10%</div>
            <img src="img/CL002.jpg" alt="Producto 2">
            <h3>iPhone 14 128GB Strarlight</h3>
            <span class="precio">S/1500.00</span>
            <br>
            <span class="precio-con-descuento">S/1350.00</span>
            <br>
            <button class="btn-comprar">Lo quiero</button>
        </a>

        <a href="catalogo" class="producto">
            <div class="descuento">-5%</div>
            <img src="img/CL003.jpg" alt="Producto 3">
            <h3>Galaxy A55 256GB navy</h3>
            <span class="precio">S/1500.00</span>   
            <br>
            <span class="precio-con-descuento">S/1425.00</span>  
            <br>
            <button class="btn-comprar">Lo quiero</button>
        </a>

        <a href="catalogo" class="producto">
            <div class="descuento">-15%</div>
            <img src="img/CL004.jpg" alt="Producto 4">
            <h3>Galaxy A55 256GB navy</h3>
            <strong><p>Desde</p></strong>
            <span class="precio">S/1500.00</span>
            <br>
            <span class="precio-con-descuento">S/1275.00</span>
            <br>
            <button class="btn-comprar">Lo quiero</button>
        </a>
</div>
<hr> 
<div class="marcas-telefonos">
        <div class="marca">
            <a href="apple.jsp" target="_blank">
                <img src="img/APPLE.png" alt="Apple">
                <p>Apple</p>
            </a>
        </div>
        <div class="marca">
            <a href="samsung.jsp" target="_blank">
                <img src="img/SAMSUNG.png" alt="Samsung">
                <p>Samsung</p>
            </a>
        </div>
        <div class="marca">
            <a href="motorola.jsp" target="_blank">
                <img src="img/MOTOROLA.png" alt="Motorola">
                <p>Motorola</p>
            </a>
        </div>
        <div class="marca">
            <a href="redmi.jsp" target="_blank">
                <img src="img/XIOMI.png" alt="Xiaomi">
                <p>Xiaomi</p>
            </a>
        </div>
    </div>
    
    
    <jsp:include page="footer.jsp"></jsp:include>
    
</body>
</html>