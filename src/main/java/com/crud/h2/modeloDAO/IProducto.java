package com.crud.h2.modeloDAO;

import java.util.List;

import com.crud.h2.modelo.Producto;

public interface IProducto {
	public List<Producto> listar();

	public Producto listProductoId(int id);

	public int agregar(Producto p);

	public int editar(Producto p);

	public void delete(int id);
}
