package com.crud.h2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.h2.modelo.Producto;
import com.crud.h2.modeloDAO.IProducto;

@Service
public class ProductoService implements IProductoService {

	@Autowired
	private IProducto dao;
	
	@Override
	public List<Producto> listar() {
		return dao.listar();
	}

	@Override
	public Producto listProductoId(int id) {
		return 	dao.listProductoId(id);
	}

	@Override
	public int agregar(Producto p) {
		dao.agregar(p);
		return 0;
	}

	@Override
	public int editar(Producto p) {
		dao.editar(p);
		return 0;
	}

	@Override
	public void delete(int id) {
		dao.delete(id);
	}

}
