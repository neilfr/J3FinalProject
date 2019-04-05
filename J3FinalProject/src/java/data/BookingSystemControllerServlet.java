/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import data.DBManager;
import data.BookingDAO;
import data.ClientDAO;
import data.HallDAO;
import beans.Booking;
import beans.Client;
import beans.Hall;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author neilf
 */
@WebServlet(name = "BookingSystemControllerServlet", urlPatterns = {"/BookingSystemControllerServlet"})
public class BookingSystemControllerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String route=request.getParameter("route");
        System.out.println("MY ROUTE IS: "+route);
        
        
        
        // Client routes
        if(route.equals("addClient")){
            ClientDAO clientDAO = new ClientDAO();
            //create a new client with the provided parameters and then return to the index.jsp page
            Client client = new Client();
            client.setName(request.getParameter("name"));
            client.setCreditCard(request.getParameter("creditCard"));
            clientDAO.createClient(client);
            response.sendRedirect("index.jsp");
        }
        if(route.equals("updateClient")){
            ClientDAO clientDAO=new ClientDAO();
            Client client = new Client();
            client.setName(request.getParameter("name"));
            client.setCreditCard(request.getParameter("creditCard"));
            client.setID(Integer.parseInt(request.getParameter("ID")));
            clientDAO.updateClient(client);
            response.sendRedirect("index.jsp");
        }
        if(route.equals("deleteClient")){
            ClientDAO clientDAO=new ClientDAO();
            clientDAO.deleteClientByID(Integer.parseInt(request.getParameter("ID")));
            response.sendRedirect("index.jsp");
        }
        
        // Booking routes
        if(route.equals("addBooking")){
            BookingDAO bookingDAO = new BookingDAO();
            Booking booking = new Booking();
            booking.setHallID(Integer.parseInt(request.getParameter("hallID")));
            booking.setClientID(Integer.parseInt(request.getParameter("clientID")));
            booking.setDate(request.getParameter("date"));
            
            System.out.println(request.getParameter("hallID"));
            //Check Duplicate
            if (!bookingDAO.hasDuplicate(Integer.parseInt(request.getParameter("hallID")),request.getParameter("date"))) {
                bookingDAO.createBooking(booking);
                response.sendRedirect("bookingCreated.jsp?date="+request.getParameter("date"));
                
            } else {
               response.sendRedirect("bookHall.jsp?errorMsg=Sorry Hall is not Available on "+request.getParameter("date"));
            }
                
        }
        if(route.equals("updateBooking")){
            BookingDAO bookingDAO=new BookingDAO();
            Booking booking = new Booking();
            booking.setID(Integer.parseInt(request.getParameter("ID")));
            booking.setHallID(Integer.parseInt(request.getParameter("hallID")));
            booking.setClientID(Integer.parseInt(request.getParameter("clientID")));
            booking.setDate(request.getParameter("date"));
            bookingDAO.updateBooking(booking);
            response.sendRedirect("index.jsp");
        }
        if(route.equals("deleteBooking")){
            BookingDAO bookingDAO=new BookingDAO();
            bookingDAO.deleteBookingByID(Integer.parseInt(request.getParameter("ID")));
            response.sendRedirect("index.jsp");
        }
        
        // Hall routes
        if(route.equals("addHall")){
            HallDAO hallDAO = new HallDAO();
            Hall hall = new Hall();
            hall.setName(request.getParameter("name"));
            hallDAO.createHall(hall);
            response.sendRedirect("index.jsp");
        }
        if(route.equals("updateHall")){
            HallDAO hallDAO=new HallDAO();
            Hall hall = new Hall();
            hall.setName(request.getParameter("name"));
            hall.setID(Integer.parseInt(request.getParameter("ID")));
            hallDAO.updateHall(hall);
            response.sendRedirect("index.jsp");
        }
        if(route.equals("deleteHall")){
            HallDAO hallDAO=new HallDAO();
            hallDAO.deleteHallByID(Integer.parseInt(request.getParameter("ID")));
            response.sendRedirect("index.jsp");
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
