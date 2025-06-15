	<%@page import="com.smartoryx.model.Estado"%>
<%@page import="com.smartoryx.mantenimiento.GestionEstado"%>
<%@page import="com.smartoryx.model.Categoria"%>
<%@page import="com.smartoryx.mantenimiento.GestionCategoria"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@page import="com.smartoryx.mantenimiento.GestionProducto"%>
<%@page import="com.smartoryx.model.Producto"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>smartoryx</title>
<link href="css/estilos.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
	<div id="contenedor">
		
		<main>
			<aside>
				
			</aside>


			<div class="container">
				<div class="row">
					<div class="col">
						<h1>Mantenimiento de Productos</h1>
						<div>
							<form action="crudprod" method="post" class="row g-3">

								<div class="col-12">
									<label for="inputAddress" class="form-label">Código del
										producto</label> <input type="text" name="txtCodigo"
										class="form-control" id="inputAddress" value="${p.idprod }"
										placeholder="Ingrese código" maxlength="5">
								</div>
								<div class="col-12">
									<label for="inputAddress2" class="form-label">Descripción</label>
									<input type="text" name="txtDescripcion" class="form-control" value="${p.descripcion }"
										id="inputAddress2" placeholder="Nombre del producto"
										maxlength="45">
								</div>
								<div class="col-md-6">
									<label for="inputEmail4" class="form-label">Stock</label> <input
										type="number" name="txtStock" min="0" placeholder="0" value="${p.stock }"
										class="form-control" id="inputEmail4">
								</div>
								<div class="col-md-6">
									<label for="inputPassword4" class="form-label">Precio</label> <input
										type="number" name="txtPrecio" min="0" step="0.01" value="${p.precio  }"
										placeholder="0.00" class="form-control" id="inputPassword4">
								</div>
								<div class="col-md-6">
									<label for="inputCity" class="form-label">Categoria</label> <select
										name="cboCategoria" id="inputState" class="form-select">
										<option selected value="0">Seleccion...</option>
										<%
											List<Categoria> lstCategorias=
											new GestionCategoria().listado();
											request.setAttribute("lstCategorias", lstCategorias);
										%>
										<c:forEach items="${lstCategorias}" var="c">
										<c:if test="${p.idcategoria == c.idcategoria }">
										<option selected value="${c.idcategoria }">${c.descripcion}</option>
										</c:if>
										<c:if test="${p.idcategoria != c.idcategoria }">
										<option value="${c.idcategoria }">${c.descripcion}</option>
										</c:if>
										</c:forEach>
										
									</select>
								</div>
								<div class="col-md-6">
									<label for="inputState" class="form-label">Estado</label> <select
										name="cboEstado" id="inputState" class="form-select">
										<option selected value="0">Seleccion...</option>
										<%
										List<Estado> lstEstados=
										new GestionEstado().listado();
											request.setAttribute("lstEstados",lstEstados);
										%>
										<c:forEach items="${lstEstados}" var="e">
										<option value="${e.idestado }">${e.descripcion}</option>
										</c:forEach>
										
									</select>
								</div>

								<div class="col-12">
									<button type="submit" name="type" value="registrar"
									 class="btn btn-primary">Registrar</button>
									 
									 <button type="submit" name="type" value="update"
									 class="btn btn-primary">Modificar</button>
									 
									<a href="listadoprod" class="btn btn-warning">Listado</a>
								</div>
							</form>
							${mensaje }
						</div>
						<br>
						<a href="inicio.jsp" class="btn btn-warning">Volver</a>
					</div>
					
					
					
					<div class="col">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Código</th>
									<th scope="col">Nombre</th>
									<th scope="col">Stock</th>
									<th scope="col">Precio</th>
									<th scope="col">Categoría</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>
								<%
								List<Producto> lstProductos = new GestionProducto().listado();
								request.setAttribute("lstProductos", lstProductos);
								
								%>
								<c:forEach items="${lstProductos}" var="p">
									<tr>
										<th scope="row">${p.idprod}</th>
										<td>${p.descripcion}</td>
										<td>${p.stock}</td>
										<td>${p.precio}</td>
										<td>${p.idcategoria}</td>
										<td>${p.estado}</td>
										<td><a href="modificar?cod=${p.idprod }" class="btn btn-outline-warning">Editar</a>
										</td>
									</tr>
								</c:forEach>
								
								<%--
								// es código Java
								List<Producto> lstProductos = (List<Producto>) request.getAttribute("lstProductos");
								if (lstProductos != null)
									for (Producto p : lstProductos) {
								%>
								<tr>
									<th scope="row"><%=p.getIdprod()%></th>
									<td><%=p.getDescripcion()%></td>
									<td><%=p.getStock()%></td>
									<td><%=p.getPrecio()%></td>
									<td><%=p.getIdcategoria()%></td>
									<td><a href="#" class="btn btn-outline-warning">Editar</a>
									</td>
								</tr>
								<%
								}
								--%>
							</tbody>
						</table>
					</div>
				</div>
			</div>

		</main>
		<footer>
			
    <jsp:include page="footer.jsp"></jsp:include>
		</footer>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>
