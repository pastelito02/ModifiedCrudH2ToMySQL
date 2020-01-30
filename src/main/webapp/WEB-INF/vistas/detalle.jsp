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
			<form action="/actualizar" method="POST" class="col-sm-5">
				<div class="card">
					<div class="card-header">
						<h4>Detalles del Producto</h4>
					</div>
					<div class="card-body">
						<div class="form-group">
							<label>ID</label> <input type="text" name="id"
								readonly="readonly" class="form-control"
								value="${inventario.id}" disabled />
						</div>
						<div class="form-group">
							<label>NOMBRE</label> <input type="text" name="nombre"
								class="form-control" value="${inventario.nombre}" disabled />
						</div>
						<div class="form-group">
							<label>DESCRIPCION</label> <input type="text" name="descripcion"
								class="form-control" value="${inventario.descripcion}" disabled />
						</div>
						<div class="form-group">
							<label>CANTIDAD</label> <input type="text" name="cantidad"
								class="form-control" value="${inventario.cantidad}" disabled />
							<div class="form-group">
								<label>TIPO</label> <input type="text" name="tipo"
									class="form-control" value="${inventario.tipo}" disabled />
							</div>
							<div class="form-group">
								<label>COSTO</label> <input id="costo" type="text" name="costo"
									class="form-control" value="${inventario.costo}" disabled />
							</div>
							<div class="form-group">
								<label>COMISION</label> <input id="comsion" type="text"
									name="comision" class="form-control"
									value="${inventario.comision}" disabled />
							</div>
							<div class="form-group">
								<label>IVA</label> <input type="text" name="iva"
									class="form-control" value="${inventario.iva}" disabled />
							</div>
							<div class="form-group">
								<label>PRECIO</label> <input id="precio" type="text"
									name="precio" class="form-control" value="${inventario.precio}"
									disabled />
							</div>
							<div class="form-group">
								<label>DISPONIBLE DESDE</label> <input type="text" name="fecha"
									class="form-control" value="${inventario.fecha}" disabled />
							</div>
						</div>
						<div class="card-footer">

							<a href="/" class="btn btn-link">Regresar</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div>
		<br> <br>
	</div>
</body>
</html>