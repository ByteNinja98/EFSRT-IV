package com.smartoryx.model;

public class CabeceraBoleta {
	 private String num_bol;
	 private String fch_bol;
	 private int cod_ciente;
	public String getNum_bol() {
		return num_bol;
	}
	@Override
	public String toString() {
		return "CabeceraBoleta [num_bol=" + num_bol + ", fch_bol=" + fch_bol + ", cod_ciente=" + cod_ciente + "]";
	}
	public void setNum_bol(String num_bol) {
		this.num_bol = num_bol;
	}
	public String getFch_bol() {
		return fch_bol;
	}
	public void setFch_bol(String fch_bol) {
		this.fch_bol = fch_bol;
	}
	public int getCod_ciente() {
		return cod_ciente;
	}
	public void setCod_ciente(int cod_ciente) {
		this.cod_ciente = cod_ciente;
	}
	 
}
