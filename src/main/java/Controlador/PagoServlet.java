/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import DAO.eventoDAO;
import DAO.pagoDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kevin
 */
public class PagoServlet extends HttpServlet {

    private pagoDAO pagoDAO = new pagoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String menu = request.getParameter("menu");
        if (menu != null && menu.equals("listaPagos")) {
            String idCliente = request.getParameter("idCliente");
            int idEvento = Integer.parseInt(request.getParameter("idEvento"));
            List<Object[]> listarPagos = pagoDAO.ListarPagos(idCliente, idEvento);
            request.setAttribute("Pagos", listarPagos);
            
            request.getRequestDispatcher("pagos.jsp").forward(request, response);
            
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
