<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>smartoryx</title>
 <link rel="stylesheet"  href="css/canasta.css">
</head>
<body>
	<div class="container">
		<header>
			<jsp:include page="cabeza.jsp"></jsp:include>
	
		</header>

		<main>
			<%--condicional si no hay productos --%>
			<c:if test="${cantArticulos == 0 }">
				<div style="text-align: center">
					<h1>Carro de compra</h1>
					<img alt="sigue" src="img/vacio.jpg">
					<p>
						Su carrito de compras esì vacìo ,pulse <a href="catalogo">aquì</a>
						par empezar a comprar
					</p>
				</div>
			</c:if>
			<%--condicional si hay productos --%>
			<c:if test="${cantArticulos > 0 }">
				<div style="width: 70%; height: auto; float: left;">
					<h1>Carrito de compra</h1>

					<table class="table">
						<thead>
							<tr>
								<th scope="col">Código</th>
								<th scope="col">Nombre</th>
								<th scope="col">Stock</th>
								<th scope="col">Precio</th>
								<th scope="col">Importe</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${carro}" var="d">
								<tr>
									<th scope="row">${d.idprod}</th>
									<td>${d.nomprod}</td>
									<td>${d.cantidad}</td>
									<td>${d.preciovnta}</td>
									<td>${d.importe}</td>
									<td><a href="eliminar?cod=${d.idprod }"
										class="btn btn-outline-danger">Eliminar <i class="fas fa-trash"></i></a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>

					<br> <a href="catalogo" class="btn btn-primary">Continuar
						comprando <span class="glyphicon glyphicon-repeat"></span>
					</a>
				</div>
				<div
					style="width: 29%; height: 400px; float: left; border: 1px solid">
					<h1>Resumen de pedido</h1>
					<hr>
					<%-- muestra la variable global enviada desde el Listener --%>
					<label>Total artículos (${cantArticulos }) </label> <label>Sub
						total S/.${subTotalVenta } </label>
					<hr>
					<form action="pagar" method="post">
						<button class="btn btn-primary">
							Procesar compra<span class="glyphicon glyphicon-ok"></span>
						</button>
					</form>
				</div>
			</c:if>

		</main>
		
	</div>
	
</body>
</html>

