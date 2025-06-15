package com.smartoryx.mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.smartoryx.conexion.MySQLConexion;
import com.smartoryx.interfaces.ProductoInterface;
import com.smartoryx.model.Producto;

public class GestionProducto implements ProductoInterface {

	@Override
	public int registrar(Producto p) {
		int ok = 0; // variable de control
		// TODO Auto-generated method stub
		// Plantilla

		Connection con = null; // Prepara conexión
		PreparedStatement pst = null; // preparar sentencia

		try {
			con = MySQLConexion.getConexion(); // obtiene la conexión

			// sentencia sql

			// String sql2 = "insert into tb_usuarios values
			// (null,?,?,?,?,?,default,default)";
			String sql = "insert into tb_productos values (?,?,?,?,?,?)";

			pst = con.prepareStatement(sql); // setea los parámetros si existe
			// values ('P0001','Panadol cj 10',20,1.85,1,1);
			pst.setString(1, p.getIdprod());
			pst.setString(2, p.getDescripcion());
			pst.setInt(3, p.getStock());
			pst.setDouble(4, p.getPrecio());
			pst.setInt(5, p.getIdcategoria());
			pst.setInt(6, p.getEstado());

			// actualiza la variable de control, ejecutando la sentencia
			ok = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error en registrar: " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con); // cierra la conexión
		}

		return ok;
	}
	
	

	@Override
	public int eliminar(String codigo) {
		int ok = 0;
		// TODO Auto-generated method stub
		return ok;
	}

	@Override
	public int actualizar(Producto p) {
			int ok = 0; // variable de control
			// TODO Auto-generated method stub
			// Plantilla
			System.out.println("Entro al actualizar ");
			Connection con = null; // Prepara conexión
			PreparedStatement pst = null; // preparar sentencia

			try {
				con = MySQLConexion.getConexion(); // obtiene la conexión

				// sentencia sql

				// String sql2 = "insert into tb_usuarios values
				// (null,?,?,?,?,?,default,default)";
				String sql = "UPDATE tb_productos SET descripcion=?, stock=?, precio=?, idcategoria=?, estado=? WHERE idprod=?";

				pst = con.prepareStatement(sql); // setea los parámetros si existe
				// values ('P0001','Panadol cj 10',20,1.85,1,1);
				
				pst.setString(1, p.getDescripcion());
				pst.setInt(2, p.getStock());
				pst.setDouble(3, p.getPrecio());
				pst.setInt(4, p.getIdcategoria());
				pst.setInt(5, p.getEstado());
				pst.setString(6, p.getIdprod());

				// actualiza la variable de control, ejecutando la sentencia
				ok = pst.executeUpdate();
			} catch (Exception e) {
				System.out.println("Error en registrar: " + e.getMessage());
			} finally {
				MySQLConexion.closeConexion(con); // cierra la conexión
			}

			return ok;
		}

	@Override
	public List<Producto> listado() {
		List<Producto> lista = null;
		// TODO Auto-generated method stub
		// Plantilla

		Connection con = null; // Prepara conexión
		PreparedStatement pst = null; // preparar sentencia
		ResultSet rs = null;
		try {
			con = MySQLConexion.getConexion(); // obtiene la conexión

			// sentencia sql
			String sql = "select * from tb_productos";

			pst = con.prepareStatement(sql); // setea los parámetros si existe

			// actualiza la variable de control, ejecutando la sentencia
			rs = pst.executeQuery();
			
			lista = new ArrayList<Producto>();
			while (rs.next()) {
				Producto p = new Producto();
				p.setIdprod(rs.getString("idprod"));
				p.setDescripcion(rs.getString("descripcion"));
				p.setStock(rs.getInt("stock"));
				p.setPrecio(rs.getDouble("precio"));
				p.setIdcategoria(rs.getInt("idcategoria"));
				p.setEstado(rs.getInt("estado"));
				lista.add(p);
			}
			
		} catch (Exception e) {
			System.out.println("Error en registrar: " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con); // cierra la conexión
		}

		return lista;
	}

	@Override
	public List<Producto> filtro(int categoria) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Producto obtenerPorCodigo(String codigo) {
		Producto producto = null;
		//PLANTILLA DE BD
		Connection con = null; // Prepara conexión
		PreparedStatement pst = null; // preparar sentencia
		ResultSet rs = null;
		try {
			con = MySQLConexion.getConexion(); // obtiene la conexión

			// sentencia sql
			String sql = "select * from tb_productos where idprod = ?";

			pst = con.prepareStatement(sql); // setea los parámetros si existe
			pst.setString(1, codigo);
			// actualiza la variable de control, ejecutando la sentencia
			rs = pst.executeQuery();
			
			if (rs.next()) {
				producto = new Producto();
				producto.setIdprod(rs.getString("idprod"));
				producto.setDescripcion(rs.getString("descripcion"));
				producto.setStock(rs.getInt("stock"));
				producto.setPrecio(rs.getDouble("precio"));
				producto.setIdcategoria(rs.getInt("idcategoria"));
				producto.setEstado(rs.getInt("estado"));
			}
			
		} catch (Exception e) {
			System.out.println("Error en OBTENERPORCODIGO: " + e.getMessage());
		} finally {
			MySQLConexion.closeConexion(con); // cierra la conexión
		}

		
		return producto;
	}

}