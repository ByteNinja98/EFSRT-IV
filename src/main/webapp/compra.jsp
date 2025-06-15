<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>smartoryx</title>
<!-- CSS only -->
<link href="css/estilos.css" rel="stylesheet">
<link href="css/compra.css" rel="stylesheet">
<!-- CSS Bootstrap -->

</head>

<body>
<jsp:include page="cabeza.jsp"></jsp:include>
<jsp:include page="menu.jsp"></jsp:include>
	<div id="contenedor">
	
		<main>
			<section>
				<div class="row">
					<div class="col">
						<img alt="" src="producto/${p.idprod}.jpg"width="100%">
					</div>
					<div class="col">
						<form action="agregar" method="post" class="row g-3">
						
							<div class="mb-3 row">
								<label for="inputCod" class="col-sm-3 col-form-label">Código:</label>
								<label for="inputCod" class="col-sm col-form-label">${p.idprod}</label>
							</div>
							<div class="mb-3 row">
								<label for="inputDes" class="col-sm-3 col-form-label">Descripción:</label>
								<label for="inputDes" class="col-sm col-form-label">${p.descripcion }</label>
							</div>
							<div class="mb-3 row">
								<label for="inputPre" class="col-sm-3 col-form-label">Precio:</label>
								<label for="inputPre" class="col-sm col-form-label">${p.precio }</label>
							</div>
							<div class="mb-3 row">
								<label for="inputCan" class="col-sm-3 col-form-label">Cantidad:</label>
								<div class="col-sm-8">
									<input type="number" id="inputCan" name="txtCantidad" class="form-control" min="1" max="20" 
										placeholder="0">
										<div id="cantidad" class="form-text">stock maximo "${p.stock}"  unidades</div>
								</div>
							</div>
							<div class="col-12">
								<button type="submit" class="btn btn-primary">
									Agregar al carro <i class="fas fa-shopping-cart"></i>
								</button>
							</div>
						</form>

					</div>
				</div>
			</section>
		</main>
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>