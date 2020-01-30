<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRUD SPRING BOOT H2</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body style="background-color: #773C36">
	<div>
		<br> <br>
	</div>
	<div class="offset-md-4">
		<div class="container mt4">
			<form action="/agregar" method="POST" class="col-sm-5">
				<div class="card">
					<div class="card-header">
						<h4>Agregar Producto</h4>
					</div>
					<div class="card-body">
						<div class="form-group">
							<label>NOMBRE</label> <input type="text" name="nombre"
								class="form-control" />
						</div>
						<div class="form-group">
							<label>DESCRIPCION</label> <input type="text" name="descripcion"
								class="form-control" />
						</div>
						<div class="form-group">
							<label>TIPO</label> <select onclick="actualizar()" id="tipo"
								name="tipo">

								<option value=1>1</option>

								<option value=2>2</option>

								<option value=3>3</option>

								<option value=4>4</option>

							</select>
						</div>
						<div class="form-group">
							<label>CANTIDAD</label> <input type="text" name="cantidad"
								class="form-control" />
						</div>
						<div class="form-group">
							<label>COSTO</label> <input id="costo" type="text" name="costo"
								class="form-control" onkeyup="actualizar()" />
						</div>
						<div class="form-group">
							<label>COMISION</label> <input id="comision" type="text"
								name="comision" class="form-control" readonly="readonly" />
						</div>
						<div class="form-group">
							<label>PRECIO</label> <input id="precio" type="text"
								name="precio" class="form-control" readonly="readonly" />
						</div>
					</div>
					<div class="card-footer">

						<input type="submit" value="Guardar" class="btn btn-info" /> <a
							href="/" class="btn btn-link">Regresar</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script>
		function actualizar() {

			var tipo = parseFloat(document.getElementById("tipo").value);

			var comision;

			if (tipo == 1) {
				comision = 12
			} else if (tipo == 2) {
				comision = 30.5
			} else if (tipo == 3) {
				comision = 8.95
			} else {
				comision = 10.33
			}

			var costo = parseFloat(document.getElementById("costo").value);
			if (isNaN(costo)) {
				costo = 0;
			}

			document.getElementById("comision").value = parseFloat(comision)
					.toFixed(2);

			var resultado;

			resultado = costo * ((comision / 100) + 1) * 1.19;

			document.getElementById("precio").value = parseFloat(resultado)
					.toFixed(2);

			var precio = parseFloat(document.getElementById("precio").value)
					.toFixed(2);
		}
	</script>
</body>
</html>