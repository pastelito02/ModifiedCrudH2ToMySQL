<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<center>
	<img
		src="https://i.pinimg.com/originals/70/53/7a/70537a7a0a5577fab1eb376f9cc95c12.jpg"
		width="428" height="340" />
</center>
<meta charset="ISO-8859-1">
<title>CRUD SPRING BOOT H2</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body style="background-color: #773C36">
	<div class="container mt-4">
		<a href="/nuevo" class="btn btn-success">Agregar Nuevo</a> <a
			href="/importar" class="btn btn-success">Importar Archivos</a>
		<div>
			<br>
		</div>
		<table class="table" style="color: #737635;">
			<thead>
				<tr>
					<th>ID</th>
					<th>NOMBRE</th>
					<th>CANTIDAD</th>
					<th>COSTO</th>
					<th>PRECIO</th>
					<th>DISPONIBLE DESDE</th>
					<th>ACCION</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="inventario" items="${inventario}">
					<tr>
						<td>${inventario.id}</td>
						<td>${inventario.nombre}</td>
						<td>${inventario.cantidad}</td>
						<td>${inventario.costo}</td>
						<td>${inventario.precio}</td>
						<td>${inventario.fecha}</td>
						<td><a href="/detalle/${inventario.id}"
							class="btn btn-success">Detalle</a> <a
							href="/editar/${inventario.id}" class="btn btn-warning">Editar</a>
							<a href="/eliminar/${inventario.id}" class="btn btn-danger">Eliminar</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<br> <br>
	</div>
</body>
</html>