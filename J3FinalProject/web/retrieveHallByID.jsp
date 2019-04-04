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
        <title>Show Hall by ID</title>
    </head>
    <body>
        <h1>show hall by ID where ID is <%=request.getParameter("ID")%></h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <%
            HallDAO hallDAO=new HallDAO();
            Hall hall = hallDAO.retrieveHallByID(Integer.parseInt(request.getParameter("ID")));
            %>
            <h3>Hall ID:<%=hall.getID()%>, Hall Name:<%=hall.getName()%></h3>
        </form>
    </body>
</html>
