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
        <title>New booking</title>
    </head>
    <body>
        <h1>create a new booking</h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <br>HallID: <input type="text" name="hallID">
            <br>ClientID: <input type="text" name="clientID">
            <br>Date: <input type="date" name="date">
            <input type="submit" name="route" value="addBooking">
        </form>
    </body>
</html>
