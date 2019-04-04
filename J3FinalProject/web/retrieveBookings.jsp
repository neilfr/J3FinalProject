<%-- 
    Document   : index.jsp
    Created on : 3-Apr-2019, 12:58:49 PM
    Author     : neilf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.DBManager"%>
<%@page import="data.BookingDAO"%>
<%@page import="beans.Booking"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Bookings</title>
    </head>
    <body>
        <h1>show all bookings</h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <ul>
            <%
            BookingDAO bookingDAO=new BookingDAO();
            ArrayList <Booking> bookings = bookingDAO.retrieveAllBookings();
            for(Booking b:bookings){
                %>
                <li>ID<%=b.getID()%>, HallID:<%=b.getHallID()%>, ClientID:<%=b.getClientID()%>, Date:<%=b.getDate()%></li>
                <%
            }
            %>
            </ul>
        </form>
    </body>
</html>
