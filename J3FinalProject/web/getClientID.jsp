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
        <title>Get Client ID for retrieve client by id</title>
    </head>
    <body>
        <h1>Get Client ID for retrieve client by id</h1>
        <form action="retrieveClientByID.jsp" method="POST">
            <br>ID: <input type="number" name="ID">
            <input type="submit" name="action" value="getClientByID">
        </form>
    </body>
</html>
