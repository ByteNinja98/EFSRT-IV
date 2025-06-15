package com.smartoryx.model;

public class Categoria {
	private int idcategoria;
	private String descripcion;
	
	
	@Override
	public String toString() {
		return "Categoria [idcategoria=" + idcategoria + ", descripcion=" + descripcion + "]";
	}
	public int getIdcategoria() {
		return idcategoria;
	}
	public void setIdcategoria(int idcategoria) {
		this.idcategoria = idcategoria;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
}
