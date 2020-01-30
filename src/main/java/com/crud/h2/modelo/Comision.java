package com.crud.h2.modelo;

public class Comision {

	private float comision;

	public Comision(int tipo) {

		if (tipo == 1) {
			comision = Float.parseFloat("12");
		} else if (tipo == 2) {
			comision = Float.parseFloat("30.5");
		} else if (tipo == 3) {
			comision = Float.parseFloat("8.95");
		} else if (tipo == 4) {
			comision = Float.parseFloat("10.33");
		} else {
			comision = 0;
		}
	}

	public float getComision() {
		return comision;
	}

	public void setComision(float comision) {
		this.comision = comision;
	}
	
}
