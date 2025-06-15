package com.smartoryx.interfaces;

import java.util.List;

import com.smartoryx.model.Producto;


public interface ProductoInterface {
	// registrar un nuevo Producto
	public int registrar(Producto p);

	// eliminar un Producto según su codigo
	public int eliminar(String codigo);

	// actualizar los datos de un Producto
	public int actualizar(Producto p);

	// listar todos los Productos
	public List<Producto> listado();

	public List<Producto> filtro(int categoria);

	// obtener un producto segun el codigo
	public Producto obtenerPorCodigo(String codigo);
}
