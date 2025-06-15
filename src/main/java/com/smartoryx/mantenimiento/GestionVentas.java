package com.smartoryx.mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.smartoryx.conexion.MySQLConexion;
import com.smartoryx.interfaces.VentaIntercafe;
import com.smartoryx.model.CabeceraBoleta;
import com.smartoryx.model.DetalleBoleta;

public class GestionVentas implements VentaIntercafe {

	@Override
	public String generaNumBoleta() {
String codigo = "B0001";  // valor del código x default, cuando no hay datos
		
		// Plantilla
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			con = MySQLConexion.getConexion();
			String sql = "select substr(max(NUM_BOL),2) from tb_cab_boleta";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();

			if (rs.next()) {
				codigo = String.format("B%04d", rs.getInt(1) + 1);
			}
		} catch (Exception e) {
			System.out.println("Error en generaNumBoleta : " + e.getMessage());
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				System.out.println("Error al cerrar: " + e.getMessage());
			}
		}
		return codigo;
	}

	@Override
	public int realizarVenta(CabeceraBoleta cab, ArrayList<DetalleBoleta> det) {
		int rs = 0;
		// Plantilla
		Connection con = null;
		PreparedStatement pst1 = null;//registrar los datos en la cabecera
		PreparedStatement pst2 = null;//registrar datos en le detalle
		PreparedStatement pst3 = null;//registrar los productos
		try {
			con = MySQLConexion.getConexion();

			con.setAutoCommit(false);//deshabilita la confirmacion automatica

			String sql1 = "insert into tb_cab_boleta values (?,curdate(),?)";
			pst1 = con.prepareStatement(sql1);

			cab.setNum_bol(generaNumBoleta());
			pst1.setString(1, cab.getNum_bol());
			pst1.setInt(2, cab.getCod_ciente());
			rs = pst1.executeUpdate();

			String sql2 = "insert into tb_det_boleta values (?,?,?,?)";
			String sql3 = "update tb_productos set stock = stock - ? where idprod = ?";
			for (DetalleBoleta d : det) {
				pst2 = con.prepareStatement(sql2);
				pst2.setString(1, cab.getNum_bol()); // mismo dato de la cabecera
				pst2.setString(2, d.getIdprod());
				pst2.setInt(3, d.getCantidad());
				pst2.setDouble(4, d.getPreciovnta());
				rs += pst2.executeUpdate();

				pst3 = con.prepareStatement(sql3);
				pst3.setInt(1, d.getCantidad());
				pst3.setString(2, d.getIdprod());

				rs += pst3.executeUpdate();
			}

			con.commit();//acepta todas las operaciones
		} catch (Exception e) {
			System.out.println("Error en registrar : " + e.getMessage());
			rs = 0;
			try {
				con.rollback();
			} catch (SQLException e1) {
				System.out.println("Error al cerrar : " + e1.getMessage());
			}
		} finally {
			MySQLConexion.closeConexion(con);
		}
		return rs;
	}

}
