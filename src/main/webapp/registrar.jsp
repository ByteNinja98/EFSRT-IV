<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Usuario</title>
    <link rel="stylesheet" href="css/registro.css">
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<div class="container w-50 bg-success rounded py-4" style="padding: 20px;">
    <h1 class="text-center mb-4" style="color: white;">Registrar</h1>
    <form action="registrar" method="post">
        <div class="mb-3">
            <input type="hidden" value="${u.codigo}" name="txtCodigo" class="form-control" id="InputCodigo">
        </div>
        <div class="mb-3">
            <label for="InputNombre" class="form-label" style="color: white;">Nombre</label>
            <input type="text" value="${u.nombre}" maxlength="15" placeholder="Ingrese su nombre" name="txtNombre" class="form-control" id="InputNombre" style="border-radius: 5px;">
        </div>
        <div class="mb-3">
            <label for="InputApellido" class="form-label" style="color: white;">Apellido</label>
            <input type="text" value="${u.apellido}" pattern="[a-zA-ZáéíóúÁÉÍÓÚñÑ ]+" name="txtApellido" placeholder="Ingrese su apellido" class="form-control" id="InputApellido" style="border-radius: 5px;">
        </div>
        <div class="mb-3">
            <label for="InputEmail1" class="form-label" style="color: white;">Correo</label>
            <input type="email" value="${u.usuario}" name="txtCorreo" placeholder="Ingrese su correo" class="form-control" id="InputEmail1" style="border-radius: 5px;">
        </div>
        <div class="mb-3">
            <label for="InputPassword1" class="form-label" style="color: white;">Contraseña</label>
            <input type="password" value="${u.clave}" name="txtClave" class="form-control" id="InputPassword1" style="border-radius: 5px;">
        </div>
        <div class="mb-3">
            <label for="InputFecha" class="form-label" style="color: white;">Fecha de nacimiento</label>
            <input type="date" value="${u.fnacim}" name="txtFnacim" class="form-control" id="InputFecha" style="border-radius: 5px;">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary" style="background-color: #007bff; border: none;">Registrar</button>
        </div>
    </form>
    <div class="text-center mt-3">
        <p style="color: white;">¿Ya tienes una cuenta? <a href="login.jsp" class="text-white">Inicia sesión aquí</a></p>
    </div>
</div>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
