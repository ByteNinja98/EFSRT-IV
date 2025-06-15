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

<h1>Celulares Motolora</h1>


<aside>
				<h3>Categorías</h3>
				<a href="samsung.jsp">Samsung</a> <br>
				<a href="apple.jsp">Apple</a> <br>
				<a href="redmi.jsp">Xiomi</a> <br>
				<a href="catalogo"> Ver todos los celulares</a>
			</aside>

<div class="product-container">
        <!-- Producto 1 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="moto/MT-03.jpg" alt="Motorola Edge 50 Fusion VerdeAzulado" class="product-image">
            <h2>Motorola Edge 50 Fusion 256GB 8GB VerdeAzulado</h2>
            <p class="old-price">1,392.00 S/</p>
            <p class="new-price">1,289.00 S/</p>
        </div>

        <!-- Producto 2 -->
        <div class="product-card">
            <div class="discount">-7%</div>
            <img src="moto/MT-04.jpg" alt="Motorola Edge 50 PRO Negro" class="product-image">
            <h2>Motorola Edge 50 PRO + Buds 512GB 12GB Negro</h2>
            <p class="old-price">2,440.00 S/</p>
            <p class="new-price">2,259.00 S/</p>
        </div>

        <!-- Producto 3 -->
        <div class="product-card">
            <div class="discount">-17%</div>
            <img src="moto/MT-05.jpg" alt="Motorola G14 Gris" class="product-image">
            <h2>Motorola G14 128GB 4GB Gris</h2>
            <p class="old-price">611.00 S/</p>
            <p class="new-price">509.00 S/</p>
         
        </div>

        <!-- Producto 4 -->
        <div class="product-card">
            <div class="discount">-17%</div>
            <img src="moto/MT-06.jpg" alt="Motorola G24 Lavanda" class="product-image">
            <h2>Motorola G24 256GB 4GB Lavanda</h2>
            <p class="old-price">727.00 S/</p>
            <p class="new-price">606.00 S/</p>
           
        </div>
  </div> 
  <br>
  
<div class="product-container">


        <!-- Producto 5 -->
        <div class="product-card">
            <div class="discount">-17%</div>
            <img src="moto/MT-07.jpg" alt="Motorola G34 Negro" class="product-image">
            <h2>Motorola G34 5G 256GB 8GB Negro</h2>
            <p class="old-price">935.00 S/</p>
            <p class="new-price">779.00 S/</p>
         
        </div>

        <!-- Producto 6 -->
        <div class="product-card">
            <div class="discount">-17%</div>
            <img src="moto/MT-08.jpg" alt="Motorola G34 Verde" class="product-image">
            <h2>Motorola G34 5G 256GB 8GB Verde</h2>
            <p class="old-price">935.00 S/</p>
            <p class="new-price">779.00 S/</p>
          
        </div>

        <!-- Producto 7 -->
        <div class="product-card">
            <div class="discount">-17%</div>
            <img src="moto/MT-09.jpg" alt="Motorola MOTO G4 128GB 4GB Negro" class="product-image">
            <h2>Motorola MOTO G4 128GB 4GB Negro</h2>
            <p class="old-price">563.00 S/</p>
            <p class="new-price">469.00 S/</p>
         
        </div>
        
               <div class="product-card">
            <div class="discount">-17%</div>
            <img src="moto/MT-10.jpg" alt="Motorola MOTO G4 128GB 4GB Negro" class="product-image">
            <h2>Motorola MOTO G4 128GB 4GB Negro</h2>
            <p class="old-price">563.00 S/</p>
            <p class="new-price">469.00 S/</p>
         
        </div>

        <!-- Agrega más productos si es necesario -->
    </div>
   
<br>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>