<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaña -->
<title>Buscar usuario</title>
<!-- bootstrap-->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="style2.css" rel="stylesheet" type="text/css" />



</head>


<body>


	<!-- Navbar modulos-->
<body id="body-pd">
	<div class="l-navbar" id="navbar">
		<nav class="nav">
			<div>
				<div class="nav__brand">
					<ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
					<a href="#" class="nav__logo">Tienda 53</a>
				</div>
				<div href="#" class="nav__link">
					<ion-icon name="people-outline" class="nav__icon"></ion-icon>
					<span class="nav__name">Usuarios</span>


					<ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

					<ul class="collapse__menu">
						<a href="insertarusuario.jsp" class="collapse__sublink">Agregar</a>
						<a href="eliminarusuario.jsp" class="collapse__sublink">Eliminar</a>
						<a href="actualizarusuario.jsp" class="collapse__sublink">Actualizar</a>
						<a href="buscarusuario.jsp" class="collapse__sublink">Buscar</a>
						<a href="listausuarios.jsp" class="collapse__sublink">Lista</a>
					</ul>
				</div>
				<div href="#" class="nav__link">
					<ion-icon name="pricetag-outline" class="nav__icon"></ion-icon>
					<span class="nav__name">Clientes</span>

					<ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

					<ul class="collapse__menu">
						<a href="insertarcliente.jsp" class="collapse__sublink">Agregar</a>
						<br>
						<a href="eliminarcliente.jsp" class="collapse__sublink">Eliminar</a>
						<br>
						<a href="actualizarcliente.jsp" class="collapse__sublink">Actualizar</a>
						<br>
						<a href="buscarcliente.jsp" class="collapse__sublink">Buscar</a>
						<br>
						<a href="listaclientes.jsp" class="collapse__sublink">Lista</a>
					</ul>
				</div>
				<div href="#" class="nav__link">
					<ion-icon name="briefcase-outline" class="nav__icon"></ion-icon>
					<span class="nav__name">Proveedores</span>

					<ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

					<ul class="collapse__menu">
						<a href="insertarproveedor.jsp" class="collapse__sublink">Agregar</a>
						<br>
						<a href="eliminarproveedor.jsp" class="collapse__sublink">Eliminar</a>
						<a href="actualizarproveedor.jsp" class="collapse__sublink">Actualizar</a>
						<a href="buscarproveedor.jsp" class="collapse__sublink">Buscar</a>
						<a href="listaproveedores.jsp" class="collapse__sublink">Lista</a>
					</ul>
				</div>
				<div href="#" class="nav__link">
					<ion-icon name="basket-outline" class="nav__icon"></ion-icon>
					<span class="nav__name">Productos</span>

					<ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

					<ul class="collapse__menu">

						<a href="insertarproducto.jsp" class="collapse__sublink">Agregar</a>
					</ul>
				</div>
			</div>
			<div href="#" class="nav__link">
				<ion-icon name="cash-outline" class="nav__icon"></ion-icon>
				<span class="nav__name">Ventas</span>

                            <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                            <ul class="collapse__menu">
                                
                                <a href="insertarventa.jsp" class="collapse__sublink">Agregar</a>
                            </ul>
                        </div>

                        <div href="#" class="nav__link">
                            <ion-icon name="reader-outline" class="nav__icon"></ion-icon>
                            <span class="nav__name">Reportes</span>

                            <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                            <ul class="collapse__menu">
                                <a href="listadodeusuarios.jsp" class="collapse__sublink">Usuarios</a>
                                <br>
                                <a href="listadodeclientes.jsp" class="collapse__sublink">Clientes</a>
                                <a href="listarventas.jsp" class="collapse__sublink">Ventas</a>

				</ul>
			</div>

			<a href="#" class="nav__link"> <ion-icon name="log-out-outline"
					class="nav__icon"></ion-icon> <span class="nav__name">Cerrar
					sesión</span>
			</a>
	</div>
	</div>
	</nav>
	</div>
	<!-- ===== IONICONS ===== -->
	<script type="module"
		src="https://unpkg.com/ionicons@5.1.2/dist/ionicons/ionicons.esm.js"></script>

	<!-- ===== MAIN JS ===== -->
	<script src="script.js"></script>


</body>

</html>

<h1>
	<i class="fas fa-search"></i> Buscar usuario
</h1>
<div class="container">


	<div id="error" class="alert alert-danger visually-hidden" role="alert">Error
		al buscar el usuario, el usuario no existe</div>

	<div id="correcto" class="alert alert-success visually-hidden"
		role="alert">Usuario encontrado con exito</div>

	<form id="form1">

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon4">Usuario a
				buscar</span> <input type="text" class="form-control"
				placeholder="Inserte username aqui..."
				aria-describedby="basic-addon4" required id="usersearch">
		</div>
		<button type="button" class="btn btn-primary" onclick="enviar()">
			<i class="fas fa-search"></i> Buscar usuario
		</button>
		<br>
		<br>
		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon1">Cedula</span> <input
				type="text" class="form-control" aria-describedby="basic-addon1"
				required id="cedula_usuario" disabled="disabled">
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon2">Email</span> <input
				type="text" class="form-control" aria-describedby="basic-addon2"
				required id="email_usuario" disabled="disabled">
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3">Nombrecompleto</span>
			<input type="text" class="form-control"
				aria-describedby="basic-addon3" required id="nombre_usuario"
				disabled="disabled">
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon4">Username</span> <input
				type="text" class="form-control" aria-describedby="basic-addon4"
				required id="user" disabled="disabled">
		</div>

		<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon5">Password</span> <input
				type="text" class="form-control" aria-describedby="basic-addon5"
				required id="password" disabled="disabled">
		</div>
	</form>


	<br>

	<script>
		function enviar() {

			var req = new XMLHttpRequest();
			var coincidencia = false;
			var user = document.getElementById("usersearch").value;
			req.open('GET', 'http://localhost:8080/consultarusuario?usuario='
					+ user, false);
			req.send(null);
			var usuario = null;
			if (req.status == 200)
				usuario = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			var element = document.getElementById("error");
			element.classList.add("visually-hidden");
			var element2 = document.getElementById("correcto");
			element2.classList.remove("visually-hidden");

			console.log(usuario.toString());

			if (usuario.toString() != "") {

				document.getElementById("cedula_usuario").value = usuario[0].cedula_usuario;
				document.getElementById("email_usuario").value = usuario[0].email_usuario;
				document.getElementById("nombre_usuario").value = usuario[0].nombre_usuario;
				document.getElementById("password").value = usuario[0].password;
				document.getElementById("user").value = usuario[0].usuario;

				document.getElementById("usersearch").value = "";

			} else {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("cedula_usuario").value = "";
				document.getElementById("email_usuario").value = "";
				document.getElementById("nombre_usuario").value = "";
				document.getElementById("password").value = "";
				document.getElementById("user").value = "";
			}
		}
	</script>

	</body>
	</html>