<%-- 
    Document   : index.jsp
    Created on : 3-Apr-2019, 12:58:49 PM
    Author     : neilf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.DBManager"%>
<%@page import="data.HallDAO"%>
<%@page import="beans.Hall"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Hall</title>
    </head>
    <body>
        <h1>edit a hall</h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <br>Hall ID: <input type="number" name="ID">
            <br>Hall Name: <input type="text" name="name">
            <input type="submit" name="route" value="updateHall">
        </form>
    </body>
</html>
