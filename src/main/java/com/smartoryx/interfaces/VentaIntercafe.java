package com.smartoryx.interfaces;

import java.util.ArrayList;

import com.smartoryx.model.CabeceraBoleta;
import com.smartoryx.model.DetalleBoleta;

public interface VentaIntercafe {
	public String generaNumBoleta();

	public int realizarVenta(CabeceraBoleta cab, ArrayList<DetalleBoleta> det);

}
