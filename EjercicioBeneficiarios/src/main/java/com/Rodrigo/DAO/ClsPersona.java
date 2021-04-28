package com.Rodrigo.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Rodrigo.Conexion.ConexionBd;
import com.Rodrigo.Entidades.Personas;


public class ClsPersona {

	ConexionBd conexion = new ConexionBd();
    Connection con = conexion.RetornarConexion();
	
	public boolean ComprobarExistencia(Personas per) {
		ConexionBd cn = new ConexionBd();
	    Connection conexion = cn.RetornarConexion();
		boolean Existencia = false;
        try {
            CallableStatement Statement = conexion.prepareCall("Call SP_S_1Persona(?)");
            Statement.setInt("PDUI", per.getDUI());
            ResultSet rs = Statement.executeQuery();
            while (rs.next()) {
                Existencia = true;
            }
        } catch (Exception e) {
        }
        return Existencia;
    }
	
	public String ObtenerNombre(Personas per) {
		ConexionBd cn = new ConexionBd();
	    Connection conexion = cn.RetornarConexion();
		String Nombre = "";
        try {
            CallableStatement Statement = conexion.prepareCall("Call SP_S_1Persona(?)");
            Statement.setInt("PDUI", per.getDUI());
            ResultSet rs = Statement.executeQuery();
            while (rs.next()) {
            	  per.setNombre(rs.getString("nombre"));
            	  Nombre = per.getNombre();
            }
        } catch (Exception e) {
        }
        return Nombre;
    }
	
}
