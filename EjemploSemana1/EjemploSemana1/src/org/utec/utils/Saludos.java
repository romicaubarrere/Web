package org.utec.utils;

public class Saludos {

	public Saludos() {
		super();
	}
	
	public String saludar(String nombre) {
		String textoSaludo= " Hola "+nombre.toUpperCase() +"!!!";
		return textoSaludo;
	}
	
}
