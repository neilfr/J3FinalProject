<%-- 
    Document   : index.jsp
    Created on : 3-Apr-2019, 12:58:49 PM
    Author     : neilf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.DBManager"%>
<%@page import="data.ClientDAO"%>
<%@page import="beans.Client"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>edit a client</h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <br>Client ID: <input type="number" name="ID">
            <br>Name: <input type="text" name="name">
            <br>Credit Card: <input type="text" name="creditCard">
            <input type="submit" name="route" value="updateClient">
        </form>
    </body>
</html>
