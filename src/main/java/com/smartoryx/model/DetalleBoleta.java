package com.smartoryx.model
;

public class DetalleBoleta {
	private String idprod;
	private double preciovnta;
	private int cantidad;
	private  String nomprod;
	private double importe;
	
	@Override
	public String toString() {
		return "DetalleBoleta [idprod=" + idprod + ", preciovnta=" + preciovnta + ", cantidad=" + cantidad
				+ ", nomprod=" + nomprod + ", importe=" + importe + "]";
	}
	public String getIdprod() {
		return idprod;
	}
	public void setIdprod(String idprod) {
		this.idprod = idprod;
	}
	public double getPreciovnta() {
		return preciovnta;
	}
	public void setPreciovnta(double preciovnta) {
		this.preciovnta = preciovnta;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public String getNomprod() {
		return nomprod;
	}
	public void setNomprod(String nomprod) {
		this.nomprod = nomprod;
	}
	public double getImporte() {
		return importe;
	}
	public void setImporte(double importe) {
		this.importe = importe;
	}
	
	

}
