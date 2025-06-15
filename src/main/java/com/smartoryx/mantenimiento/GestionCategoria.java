package com.smartoryx.mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.smartoryx.conexion.MySQLConexion;
import com.smartoryx.interfaces.CategoriaInterface;
import com.smartoryx.model.Categoria;

public class GestionCategoria implements CategoriaInterface {

	@Override
	public List<Categoria> listado() {
		List<Categoria> lista = null;
		// Plantilla
		Connection con = null; // Prepara conexión
		PreparedStatement pst = null; // preparar sentencia
		ResultSet rs = null;

		try {
			con = MySQLConexion.getConexion();
			String sql = "select * from tb_categorias";
			pst = con.prepareStatement(sql); 
			rs = pst.executeQuery();
			
			lista = new ArrayList<Categoria>();
			while (rs.next()) {
				Categoria c = new Categoria();
				c.setIdcategoria(rs.getInt("idcategoria"));
				c.setDescripcion(rs.getString("descripcion"));
				lista.add(c);
			}

		} catch (Exception e) {
			System.out.println("Error en registrar: " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con); // cierra la conexión
		}
		return lista;
	}

}

