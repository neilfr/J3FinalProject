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
        <title>Get Hall ID for retrieve hall by id</title>
    </head>
    <body>
        <h1>get hall id for retrieve hall by id</h1>
        <form action="retrieveHallByID.jsp" method="POST">
            <br>ID: <input type="number" name="ID">
            <input type="submit" name="action" value="getHallByID">
        </form>
    </body>
</html>
