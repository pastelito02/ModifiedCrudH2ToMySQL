let actualizar
function actualizar() {
	var tipo = parseFloat(document.getElementById("tipo").value);
	var comision;
	var iva = 1.19;
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
	document.getElementById("comision").value = parseFloat(comision).toFixed(2);
	var resultado = costo * ((comision / 100) + 1) * iva;
	document.getElementById("precio").value = parseFloat(resultado).toFixed(2);
	var precio = parseFloat(document.getElementById("precio").value).toFixed(2);
}

actualizar();