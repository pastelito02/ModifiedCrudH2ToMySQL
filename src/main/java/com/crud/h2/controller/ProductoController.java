package com.crud.h2.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.crud.h2.modelo.Producto;
import com.crud.h2.service.IProductoService;


@Controller
public class ProductoController {
	
	@Autowired
	private IProductoService service;
		
	@GetMapping("/")
	public String listar(Model model) {
		service.listar();
		model.addAttribute("inventario", service.listar());
		return "index";
	}
	
	@GetMapping("/nuevo")
	public String nuevo() {
		return "agregar";
	}
	
	@GetMapping("/importar")
	public String importar() {
		return "importar";
	}
	
	@GetMapping("/detalle/{id}")
	public String detalle(@PathVariable int id, Model model) {
		Producto producto=service.listProductoId(id);
		model.addAttribute("inventario",producto);
		return "detalle";
		
	}
	
	@PostMapping("/agregar")
	public String agregar(@Valid Producto p) {
		service.agregar(p);
		return "redirect:/";
	}
	
	@GetMapping("/editar/{id}")
	public String editar(@PathVariable int id, Model model) {
		Producto producto=service.listProductoId(id);
		model.addAttribute("inventario", producto);
		return "editar";
	}
	
	@PostMapping("/actualizar")
	public String actualizar(@Valid Producto p) {
		service.editar(p);
		return "redirect:/";
	}
	
	@GetMapping("/eliminar/{id}")
	public String delete(@PathVariable int id) {
		service.delete(id);
		return "redirect:/";
	}
	
	@PostMapping("/archivo")
	public String importar(@Valid Producto p) {
		return "redirect:/";
	}
	
}
