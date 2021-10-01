package com.grupo53.tienda53.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo53.tienda53.DAO.ProductosDAO;
import com.grupo53.tienda53.DTO.ProductosVO;



@RestController
public class ProductosController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarproducto")
	public void registrarProducto(ProductosVO producto) {
		ProductosDAO Dao = new ProductosDAO();
		Dao.registrarProducto(producto);
	}

	@GetMapping("/consultarproducto")
	public ArrayList<ProductosVO> consultarProducto(Integer codigo_producto) {
		ProductosDAO Dao = new ProductosDAO();
		return Dao.consultarProducto(codigo_producto);
	}

	@GetMapping("/listarproductos")
	public ArrayList<ProductosVO> listaDeProductos() {
		ProductosDAO Dao = new ProductosDAO();
		return Dao.listaDeProductos();
	}
	
	@DeleteMapping("/eliminarproducto")
	public void eliminarProducto(Integer codigo_producto) {
		ProductosDAO Dao = new ProductosDAO();
		Dao.eliminarProducto(codigo_producto);
	}
	
	@DeleteMapping("/eliminartodoproducto")
	public void eliminarTodoProducto() {
		ProductosDAO Dao = new ProductosDAO();
		Dao.eliminarTodoProducto();
	}
	
	@PutMapping("/actualizarproducto")
	public void actualizarProducto(ProductosVO producto) {
		ProductosDAO Dao = new ProductosDAO();
		Dao.actualizarProducto(producto);
	}

}
