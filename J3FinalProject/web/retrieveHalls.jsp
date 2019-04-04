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
        <title>Show Halls</title>
    </head>
    <body>
        <h1>show all halls</h1>
        <form action="BookingSystemControllerServlet" method="POST">
            <ul>
            <%
            HallDAO hallDAO=new HallDAO();
            ArrayList <Hall> halls = hallDAO.retrieveAllHalls();
            for(Hall h:halls){
                %>
                <li>ID<%=h.getID()%>, Hall Name:<%=h.getName()%></li>
                <%
            }
            %>
            </ul>
        </form>
    </body>
</html>
