package com.crud.h2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;

@SpringBootApplication
public class CrudSpringBootH2Application implements CommandLineRunner {

	@Autowired
	private JdbcTemplate template;
	
	public static void main(String[] args) {
		SpringApplication.run(CrudSpringBootH2Application.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		
		/* Aqui lo que estamos haciendo es crear una tabla de prueba
		 * dentro de la base de datos ya asignada en la configuracion 
		 * por lo cual por los mismos motivos de prueba en cada arranque
		 * del programa se eliminara la tabla existente y se creara una
		 * nueva con los productos de ejemplo creados a partir del 'for'
		 * por eso recomiendo que si ustedes ya tiene una tabla existente
		 * que deseen cargar eliminen las lineas que hay abajo. */
		
		template.execute("DROP TABLE IF EXISTS inventario");
		template.execute("create table inventario(id int not null primary key auto_increment, nombre varchar(255), descripcion varchar(300), tipo int, cantidad int, costo float(2), comision float(2), iva float(2), precio float(2), fecha date)");
		
		for (int i = 1 ;i <= 3; i++) {
			template.update("insert into inventario(nombre,descripcion,tipo,cantidad,costo,comision,iva,precio,fecha)values('Producto 00"+i+"','','"+i+"','"+(i*10)+"','"+(i*500)+"',12,19,'"+(i*500*2)+"',now())");
		}
	}

}
