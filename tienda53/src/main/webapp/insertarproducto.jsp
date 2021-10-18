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
<title>Insertando productos</title>
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

<script>
var baseurl = "http://localhost:8080/listarproductos";
	function loadproductos() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var productos = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>Codigo</th><th>Nombre</th><th>NIT proveedor</th><th>Precio de compra</th><th>IVA</th><th>Precio de venta</th><tr>";
				var main = "";
				for (i = 0; i < productos.length; i++) {
					main += "<tr><td>" + productos[i].codigo_producto
							+ "</td><td>" + productos[i].nombre_producto
							+ "</td><td>" + productos[i].nit_proveedor
							+ "</td><td>" + productos[i].precio_compra
							+ "</td><td>"+ productos[i].iva_compra
							+ "</td><td>" + productos[i].precio_venta
							+ "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("productosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
	window.onload = function() {
		loadproductos();
	}
</script>


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
                                
                                <a href="insertarproducto.jsp" class="collapse__sublink">Agregar</a>
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
                                <a href="actualizarproveedor.jsp" class="collapse__sublink">Ventas</a>
                                
                            </ul>
                        </div>
                            
                            <a href="#" class="nav__link">
                             <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                             <span class="nav__name">Cerrar sesión</span>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- ===== IONICONS ===== -->
       <script type="module" src="https://unpkg.com/ionicons@5.1.2/dist/ionicons/ionicons.esm.js"></script>

        <!-- ===== MAIN JS ===== -->
    <script src="script.js"></script>

	<div style="padding-left: 5px">
		<h1>
			<i class="fas fa-plus-circle"></i> Insertando archivo de productos
		</h1>
		<div class="container">


			<div id="error" class="alert alert-danger visually-hidden"
				role="alert">Archivo vacio, extensión no valida o datos corruptos (El separador debe ser coma ",")</div>

			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Productos importados desde CSV con exito</div>

			<form id="form1">
				<div>
					<label for="formFileLg" class="form-label">Seleccionar
						archivo CSV con el inventario de productos</label> <input
						class="form-control form-control-lg" id="archivo" type="file"
						accept=".csv">
					<button type="button" class="btn btn-success"
						onclick="subirArchivo()">Subir archivo</button>
				</div>

			</form>

		</div>

	</div>
	&nbsp;
	<h1><i class="fas fa-apple-alt"></i> Tabla de productos</h1>
			<div class="container">
				<div class="row">
					<!--  Aqui es donde se autogenera la tabla basado en el script -->
					<div class="col align-self-center" id="productosinfo">
					
					</div>
	
				</div>
			</div>
	<script>
		function subirArchivo() {

			try {

				var csvFile = document.getElementById("archivo");

				var input = csvFile.files[0];
				var reader = new FileReader();

				reader.onload = function(e) {

					var text = e.target.result;

					var arrayLineas = text.split("\n");

					var xhr = new XMLHttpRequest();
					xhr.open("DELETE",
							"http://localhost:8080/eliminartodoproducto",true);
					xhr.send();

					for (var i = 0; i < arrayLineas.length; i += 1) {
						var arraydatos = arrayLineas[i].split(",");

						if (arrayLineas[i] == "") {
							continue;
						}

						for (var j = 0; j < arraydatos.length; j += 1) {
							console.log(i + " " + j + "->" + arraydatos[j]);
						}

						var formData = new FormData();
						formData.append("codigo_producto", arraydatos[0]);
						formData.append("nombre_producto", arraydatos[1]);
						formData.append("nit_proveedor", arraydatos[2]);
						formData.append("precio_compra", arraydatos[3]);
						formData.append("iva_compra", arraydatos[4]);
						formData.append("precio_venta", arraydatos[5]);
						var xhr = new XMLHttpRequest();
						xhr.open("POST",
								"http://localhost:8080/registrarproducto");

						xhr.send(formData);
					}

					var element = document.getElementById("error");
					element.classList.add("visually-hidden");
					var element2 = document.getElementById("correcto");
					element2.classList.remove("visually-hidden");

					document.getElementById("archivo").value = "";

				};

				reader.readAsText(input);
			} catch (error) {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");

				document.getElementById("archivo").value = "";
			}
		}
	</script>
      
</body>
</html>