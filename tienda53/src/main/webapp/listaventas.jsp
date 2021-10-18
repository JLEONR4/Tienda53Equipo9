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
<title>Buscar cliente</title>
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
<link href="style1.css" rel="stylesheet" type="text/css" />


</head>


<body>

	<!-- Navbar modulos-->
	<nav class="navbar navbar-light" style="background-color: #38d39f;">
		<div class="container">
			<a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-users"></i> Usuarios
			</a> <a class="navbar-brand links" href="listaclientes.jsp"> <i
				class="fas fa-address-book"></i> Clientes
			</a> <a class="navbar-brand links" href="listaproveedores.jsp"> <i
				class="fas fa-truck"></i> Proveedores
			</a> <a class="navbar-brand links" href="insertarproducto.jsp"> <i
				class="fas fa-apple-alt"></i> Productos
			</a> <a class="navbar-brand links" href="listaventas.jsp"> <i
				class="fas fa-money-check-alt"></i> Ventas
			</a> <a class="navbar-brand links" href="listareportes.jsp"> <i
				class="fas fa-clipboard-list"></i> Reportes
			</a>
		</div>
	</nav>

	<div style="padding-left: 5px">
		<h1>VENTAS</h1>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Error</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">OK</div>

			<form id="form1">

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Cedula a
						buscar</span> <input type="text" class="form-control"
						placeholder="Inserte numero de cedula del cliente aqui..."
						aria-describedby="basic-addon4" required id="cedula_clientesearch">
				</div>

				<button type="button" class="btn btn-primary" onclick="enviar()">
					<i class="fas fa-search"></i> Buscar cliente
				</button>
				<br>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Nombre
						cliente</span> <input type="text" class="form-control"
						aria-describedby="basic-addon4" required id="nombre_cliente"
						disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="consecutivo">Consecutivo</span>
					<input type="text" class="form-control"
						aria-describedby="basic-addon1" required id="consecutivo"
						disabled="disabled">
				</div>

				<h4>CODIGO DE PRODUCTO</h4>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Codigo </span> <input
						type="text" class="form-control"
						placeholder="Inserte un codigo de producto aqui..."
						aria-describedby="basic-addon4" required id="producto1">
				</div>
				<button type="button" class="btn btn-primary" onclick="consulta1()">
					<i class="fas fa-search"></i> Consultar
				</button>
				<br>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Nombre del
						producto </span> <input type="text" class="form-control"
						aria-describedby="basic-addon4" required id="nombre_producto1"
						disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Valor
						producto </span> <input type="text" class="form-control"
						aria-describedby="basic-addon4" required id="valor_producto1"
						disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Cantidad </span> <input
						type="text" class="form-control" aria-describedby="basic-addon4"
						required id="cantidad_producto1">
				</div>

				<button type="button" class="btn btn-primary" onclick="calcular1()">
					<i class="fas fa-search"></i> Calcular
				</button>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Valor total
					</span> <input type="text" class="form-control"
						aria-describedby="basic-addon4" required
						id="valor_total_producto1" disabled="disabled">
				</div>

			</form>




		</div>


		<script>
		function enviar() {

			var req = new XMLHttpRequest();
			var coincidencia = false;
			var cedula = document.getElementById("producto1").value;
			req.open('GET',
					'http://localhost:8080/consultarcliente?cedula_cliente='
							+ cedula, false);
			req.send(null);
			var cedula_cliente = null;
			if (req.status == 200)
				cedula_cliente = JSON.parse(req.responseText);
			console.log(JSON.parse(req.responseText));

			/*var element = document.getElementById("error");
			element.classList.add("visually-hidden");
			var element2 = document.getElementById("correcto");
			element2.classList.remove("visually-hidden");

			console.log(cedula_cliente.toString());*/

			if (cedula_cliente.toString() != "") {

				document.getElementById("nombre_cliente").value = cedula_cliente[0].nombre_cliente;
				

			} else {
				/*var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");*/
				document.getElementById("nombre_cliente").value = "";
			}
		}
		
		
		/*
		function consulta1() {

			var prod1 = document.getElementById("producto1").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?codigo_producto='
					+ prod1, false);
			req.send(null);
			var producto1 = null;
			if (req.status == 200)
				producto1 = JSON.parse(req.responseText);
		
			if (producto1.toString() != "") {
				console.log(producto1);
				document.getElementById("nombre_producto1").value = producto1[0].nombre_producto;
				document.getElementById("valor_producto1").value = parseFloat(producto1[0].precio_venta);
				precio1 = parseFloat(producto1[0].precio_venta);
				console.log("Precio1: " + precio1)
				
			} else {
				document.getElementById("nombre_producto1").value = "";
				document.getElementById("valor_producto1").value = "";
								
			}
		}
		
		function calcular1(){
			var num1 = parseInt(document.getElementById("valor_producto1").value);
			var num2 = parseInt(document.getElementById("cantidad_producto1").value);
			var num3 = num1*num2;
			console.log(num3);
			document.getElementById("valor_total_producto1").value=num3);
		}*/

	</script>
		

		

		
		
		
		
		
	</script>
</body>
</html>