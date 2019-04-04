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
        <title>Edit Booking</title>
    </head>
    <body>
        <h1>edit a booking</h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <br>Booking ID: <input type="number" name="ID">
            <br>Hall ID: <input type="number" name="hallID">
            <br>Client ID: <input type="number" name="clientID">
            <br>Date: <input type="date" name="date">
            <input type="submit" name="route" value="updateBooking">
        </form>
    </body>
</html>
