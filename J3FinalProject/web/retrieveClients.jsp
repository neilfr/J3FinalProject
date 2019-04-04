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
        <title>Show Clients</title>
    </head>
    <body>
        <h1>show all clients</h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <ul>
            <%
            ClientDAO clientDAO=new ClientDAO();
            ArrayList <Client> clients = clientDAO.retrieveAllClients();
            for(Client c:clients){
                %>
                <li><%=c.getName()%>, <%=c.getCreditCard()%></li>
                <%
            }
            %>
            </ul>
        </form>
    </body>
</html>
