package com.smartoryx.mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.smartoryx.conexion.MySQLConexion;
import com.smartoryx.interfaces.EstadoInterface;
import com.smartoryx.model.Estado;

public class GestionEstado implements EstadoInterface{

	@Override
	public List<Estado> listado() {
		List<Estado> lista = null;
		// Plantilla
		Connection con = null; // Prepara conexión
		PreparedStatement pst = null; // preparar sentencia
		ResultSet rs = null;

		try {
			con = MySQLConexion.getConexion();
			String sql = "select * from tb_estados";
			pst = con.prepareStatement(sql); 
			rs = pst.executeQuery();
			
			lista = new ArrayList<Estado>();
			while (rs.next()) {
				Estado e = new Estado();
				e.setIdestado(rs.getInt("idestado"));
				e.setDescripcion(rs.getString("descripcion"));
				lista.add(e);
			}

		} catch (Exception e) {
			System.out.println("Error en registrar: " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con); // cierra la conexión
		}
		return lista;
	}

}
