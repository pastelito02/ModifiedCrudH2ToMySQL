package com.crud.h2.modelo;

import java.sql.Date;

public class Producto {
	
	private int id;
	private String nombre;
	private String descripcion;
	private int tipo;
	private int cantidad;
	private float costo;
	private float comision;
	private float iva;
	private float precio;
	private Date fecha;
	
	public Producto() {
		
	}

	public Producto(int id, String nombre, String descripcion, int tipo, int cantidad, float costo, float comision,
			float iva, float precio, Date fecha) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.costo = costo;
		this.comision = comision;
		this.precio = precio;
		this.setFecha(fecha);
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getTipo() {
		return tipo;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public float getCosto() {
		return costo;
	}

	public void setCosto(float costo) {
		this.costo = costo;
	}

	public float getComision() {
		return comision;
	}

	public void setComision(float comision) {
		this.comision = comision;
	}

	public float getIva() {
		return iva;
	}

	public void setIva(float iva) {
		this.iva = iva;
	}

	public float getPrecio() {
		return precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
}
