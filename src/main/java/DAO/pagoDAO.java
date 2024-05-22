/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Modelo.conexion;
import Modelo.cotizante;
import Modelo.pago;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kevin
 */
public class pagoDAO {
    
    pago pago = new pago();
    cotizante cotizante = new cotizante();

    Connection con = new conexion().conectar();
    PreparedStatement ps;
    ResultSet rs;

    public List<Object[]> ListarPagos() {
        List<Object[]> lista = new ArrayList<>();
        String sql = "SELECT p.No_Pagos, c.Nombre_Cotizante, c.Apellido_Cotizante, p.Dia_hora_pagos, p.Valor_pagos FROM pagos p "
                + "JOIN cliente cl ON p.Evento_Cliente_idCliente = cl.idCliente "
                + "JOIN cotizante c ON cl.Correo_cotizante = c.Correo_Cotizante "
                + "JOIN evento e ON p.Evento_idEvento = e.idEvento";
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                pago.setIdPagos(rs.getString("No_Pagos"));
                cotizante.setCotizanteNombre(rs.getString("Nombre_Cotizante"));
                cotizante.setCotizanteApellido(rs.getString("Apellido_Cotizante"));
                pago.setFechaPagos(rs.getDate("Dia_hora_pagos"));
                pago.setValorPagos(rs.getInt("Valor_pagos"));
                 Object[] pagoArray = {pago.getIdPagos(), cotizante.getCotizanteNombre(), cotizante.getCotizanteApellido(), pago.getFechaPagos(), pago.getValorPagos()};
                lista.add(pagoArray);

                
            }
        } catch (Exception e) {
            e.printStackTrace(); // Imprimir el error
        }
        return lista;
    }

}
