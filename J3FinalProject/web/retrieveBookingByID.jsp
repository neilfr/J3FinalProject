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
        <title>Show Booking by ID</title>
    </head>
    <body>
        <h1>show booking by ID where ID is <%=request.getParameter("ID")%></h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <%
            BookingDAO bookingDAO=new BookingDAO();
            Booking booking = bookingDAO.retrieveBookingByID(Integer.parseInt(request.getParameter("ID")));
            %>
            <h3>Booking ID:<%=booking.getID()%>, Hall ID:<%=booking.getHallID()%>, Client ID:<%=booking.getClientID()%>, Date:<%=booking.getDate()%></h3>
        </form>
    </body>
</html>
