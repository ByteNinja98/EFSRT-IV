package com.smartoryx.model;

public class Estado {
	private int idestado;
	private String descripcion ;
	
	
	@Override
	public String toString() {
		return "Estado [idestado=" + idestado + ", descripcion=" + descripcion + "]";
	}
	public int getIdestado() {
		return idestado;
	}
	public void setIdestado(int idestado) {
		this.idestado = idestado;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
}
