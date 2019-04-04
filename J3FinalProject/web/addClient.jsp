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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>create a new client</h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <br>Name: <input type="text" name="name">
            <br>Credit Card: <input type="text" name="creditCard">
            <input type="submit" name="route" value="addClient">
        </form>
    </body>
</html>
