package com.crud.h2.modeloDAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.crud.h2.modelo.Producto;

@Repository
public class ProductoDAO implements IProducto {

	@Autowired
	private JdbcTemplate template;
	
	@Override
	public List<Producto> listar() {
		String sql="select * from inventario";
		List<Producto>productos=template.query(sql, new BeanPropertyRowMapper<Producto>(Producto.class));
		return productos;
	}

	@Override
	public Producto listProductoId(int id) {
		String sql="select * from inventario where id=?";
		Producto per=template.queryForObject(sql, new Object[] {id}, new BeanPropertyRowMapper<Producto>(Producto.class));
		return per;
	}

	@Override
	public int agregar(Producto p) {
		String sql="insert into inventario(nombre,descripcion,tipo,cantidad,costo,comision,iva,precio,fecha)values(?,?,?,?,?,?,19,?,now())";
		int res=template.update(sql,p.getNombre(),p.getDescripcion(),p.getTipo(),p.getCantidad(),p.getCosto(),p.getComision(),p.getPrecio());
		return res;

	}

	@Override
	public int editar(Producto p) {
		String sql="update inventario set nombre=?, descripcion=?, tipo=?, cantidad=?, costo=?, precio=? where id=?";
		int res=template.update(sql,p.getNombre(),p.getDescripcion(),p.getTipo(),p.getCantidad(),p.getCosto(),p.getPrecio(),p.getId());
		return res;
	}

	@Override
	public void delete(int id) {
		String sql="delete from inventario where id=?";
		template.update(sql,id);
		
	}

}
