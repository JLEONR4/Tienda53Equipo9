package com.grupo53.tienda53.DTO;

import java.io.Serializable;

public class ProveedoresVO implements Serializable{
	

	//identificador unico de las clases entidad
	private static long serialVersionUID = 1L;
	
	private Integer NIT_proveedor;
	private String nombre_proveedor;
	private String direccion_proveedor ;
	private String telefono_proveedor;
	private String ciudad_proveedor;
	/**
	 * @param serialversionuid the serialversionuid to set
	 */
	public static void setSerialversionuid(long serialversionuid) {
		serialVersionUID = serialversionuid;
	}
	/**
	 * @return the nIT_proveedor
	 */
	public Integer getNIT_proveedor() {
		return NIT_proveedor;
	}
	/**
	 * @param nIT_proveedor the nIT_proveedor to set
	 */
	public void setNIT_proveedor(Integer nIT_proveedor) {
		NIT_proveedor = nIT_proveedor;
	}
	/**
	 * @return the nombre_proveedor
	 */
	public String getNombre_proveedor() {
		return nombre_proveedor;
	}
	/**
	 * @param nombre_proveedor the nombre_proveedor to set
	 */
	public void setNombre_proveedor(String nombre_proveedor) {
		this.nombre_proveedor = nombre_proveedor;
	}
	/**
	 * @return the direccion_proveedor
	 */
	public String getDireccion_proveedor() {
		return direccion_proveedor;
	}
	/**
	 * @param direccion_proveedor the direccion_proveedor to set
	 */
	public void setDireccion_proveedor(String direccion_proveedor) {
		this.direccion_proveedor = direccion_proveedor;
	}
	/**
	 * @return the telefono_proveedor
	 */
	public String getTelefono_proveedor() {
		return telefono_proveedor;
	}
	/**
	 * @param telefono_proveedor the telefono_proveedor to set
	 */
	public void setTelefono_proveedor(String telefono_proveedor) {
		this.telefono_proveedor = telefono_proveedor;
	}
	/**
	 * @return the ciudad_proveedor
	 */
	public String getCiudad_proveedor() {
		return ciudad_proveedor;
	}
	/**
	 * @param ciudad_proveedor the ciudad_proveedor to set
	 */
	public void setCiudad_proveedor(String ciudad_proveedor) {
		this.ciudad_proveedor = ciudad_proveedor;
	}
}
	