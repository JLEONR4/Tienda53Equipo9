package com.grupo53.tienda53.BO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Saludar {
	
	@RequestMapping("/saludo")
	public String saludo() {
		return "Hola mundo soy un servicio web (API)";
	}
	
	@RequestMapping("/listanum")
	public ArrayList<Integer> listanum(){
		ArrayList<Integer> lista = new ArrayList<Integer>();
		for (int i = 0; i < 10; i++) {
			lista.add(i);
		}
		return lista;
		
	}
	
	public ArrayList<Pais> listapais(){
		ArrayList<Pais> lista = new ArrayList<>();
		lista.add(new Pais(1,"POLOMBIA"));
		lista.add(new Pais(2,"BAHREIN"));
		lista.add(new Pais(3,"RUSIA"));
		lista.add(new Pais(4,"FRANCIA"));
		lista.add(new Pais(5,"ESPAÑA"));
		lista.add(new Pais(6,"UCRANIA"));
		lista.add(new Pais(17,"SOMALIA"));
		return lista;
	}
	
	static class Pais implements Serializable{
		int id;
		String nombre;
		public Pais() {
			
		}
		
		public Pais(int id, String nombre) {
			
		}
	}
	
}

