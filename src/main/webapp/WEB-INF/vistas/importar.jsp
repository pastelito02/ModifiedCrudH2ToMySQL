<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IMPORTAR ARCHIVOS</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body style="background-color: #773C36">
	<div>
		<br> <br>
	</div>
	<div>
		<div class="container mt6">
			<form action="/archivo" method="POST" class="col-sm5">
				<div class="card">
					<div class="card-header">
						<h1>Importar lista de productos.</h1>
					</div>
					<div class="card-body">
						<h2>El archivo a importar debe ser un archivo de extencion
							CSV, XLS o XLSX.</h2>
						<p>Verifique que el archivo tenga las columnas de Nombre,
							Descripcion, Tipo de producto, Cantidad y Costo. Los demas campos
							seran creados automaticamente teniendo en cuenta los valores
							ingresados.</p>
					</div>
					<div class="card-body">
						<input type="file" name="archivo"
							accept="application/vnd.openxmlformats-officedocument.spreadsheetml; text/plain" />
					</div>
					<div class="card-footer">

						<input type="submit" name="enviar" value="Enviar"
							class="btn btn-info" /> <a href="/" class="btn btn-link">Regresar</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>