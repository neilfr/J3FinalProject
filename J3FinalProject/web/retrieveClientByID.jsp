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
        <h1>show client by ID where ID is <%=request.getParameter("ID")%></h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <%
            ClientDAO clientDAO=new ClientDAO();
            Client client = clientDAO.retrieveClientByID(Integer.parseInt(request.getParameter("ID")));
            %>
            <h3><%=client.getName()%></h3>
        </form>
    </body>
</html>
