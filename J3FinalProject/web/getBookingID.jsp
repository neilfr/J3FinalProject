<%-- 
    Document   : index.jsp
    Created on : 3-Apr-2019, 12:58:49 PM
    Author     : neilf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Booking ID for retrieve booking by id</title>
    </head>
    <body>
        <h1>get booking id for retrieve booking by id</h1>
        <form action="retrieveBookingByID.jsp" method="POST">
            <br>ID: <input type="number" name="ID">
            <input type="submit" name="action" value="getBookingByID">
        </form>
    </body>
</html>
