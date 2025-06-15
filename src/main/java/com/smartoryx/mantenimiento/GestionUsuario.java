package com.smartoryx.mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.smartoryx.conexion.MySQLConexion;
import com.smartoryx.interfaces.UsuarioInterface;
import com.smartoryx.model.Usuario;

public class GestionUsuario implements UsuarioInterface{

	@Override
	public Usuario validarAcceso(Usuario u) {
		Usuario usuario = null; 
		// Plantilla de BD
		Connection con = null; 
		PreparedStatement pst = null; 
		ResultSet rs = null;
		try {
			con = MySQLConexion.getConexion();

			// sentencia sqlhg
			String sql = "{call usp_validaAcceso(?,?)}";

			pst = con.prepareStatement(sql);
			pst.setString(1, u.getUsuario());
			pst.setString(2, u.getClave());

			rs = pst.executeQuery();
			
			
			if (rs.next()) {
				usuario = new Usuario();
				usuario.setCodigo(rs.getInt("codigo"));
				usuario.setNombre(rs.getString("nombre"));
				usuario.setApellido(rs.getString("apellido"));
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setClave(rs.getString("clave"));
				usuario.setFnacim(rs.getString("fnacim"));
				usuario.setTipo(rs.getInt("tipo"));
				usuario.setEstado(rs.getInt("estado"));
			}
			
		} catch (Exception e) {
			System.out.println("Error en validar: " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con); // cierra la conexión
		}
		return usuario ;
	}

	@Override
	public int registrarUsuario(Usuario u) {
	    int ok = 0;
	    // Conexión a la BD
	    Connection con = null; 
	    PreparedStatement pst = null; 

	    try {
	        con = MySQLConexion.getConexion(); // Obtiene la conexión

	        // Sentencia SQL para insertar un nuevo usuario
	        String sql = "INSERT INTO tb_usuarios (nombre, apellido, usuario, clave, fnacim) VALUES (?, ?, ?, ?, ?)";

	        pst = con.prepareStatement(sql); // Prepara la sentencia SQL

	        // Asigna los parámetros
	        pst.setString(1, u.getNombre());
	        pst.setString(2, u.getApellido());
	        pst.setString(3, u.getUsuario());
	        pst.setString(4, u.getClave());
	        pst.setString(5, u.getFnacim());
	        // 'u.getUsuario()' debería ser el correo o nombre de usuario

	        // Ejecuta la sentencia
	        ok = pst.executeUpdate(); // Devuelve el número de filas afectadas
	    } catch (Exception e) {
	        System.out.println("Error en registrar: " + e.getMessage());
	    } finally {
	        MySQLConexion.closeConexion(con); // Cierra la conexión
	    }

	    return ok;
	}
}