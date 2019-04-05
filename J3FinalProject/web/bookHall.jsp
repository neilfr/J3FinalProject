
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.ClientDAO"%>
<%@page import="beans.Client"%>
<%@page import="data.HallDAO"%>
<%@page import="beans.Hall"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/J3FinalProject/css/main.css">
        <title>Book Hall</title>
    </head>
    <body>
        <%
            String errorMsg = "";
            if (request.getParameter("errorMsg") != null) {
                errorMsg = request.getParameter("errorMsg");
            }
        %>
        <%
            String allHalls = "";

            HallDAO hallDAO = new HallDAO();
            ArrayList<Hall> halls = hallDAO.retrieveAllHalls();
            for (Hall h : halls) {
                allHalls += "<option value='" + h.getID() + "'>" + h.getName() + "</option> ";
            }
        %>
        <%
            String allClients = "";

            ClientDAO clientDAO = new ClientDAO();
            ArrayList<Client> clients = clientDAO.retrieveAllClients();
            for (Client c : clients) {
                allClients += "<option value='" + c.getID() + "'>" + c.getName() + "</option> ";
            }
        %>
        <div class="main-div">
            <h1>Book Hall</h1>
            <br>
            <p class="red-text"><%=errorMsg %></p>
            <form action="BookingSystemControllerServlet" method="POST">
                <br><label class="text-label">Hall:</label><select class="menu-input" required name="hallID"><%=allHalls%></select>
                <br><br><label class="text-label">Client:</label><select class="menu-input" required name="clientID"><%=allClients%></select>
                <br><br><label class="text-label">Date:</label> <input type="date" name="date" class="menu-input" required>
                <input name="route" value="addBooking" class="hidden">
                <br><br>
                <input class="menu-btn" type="submit" value="Book Now">
            </form>
        </div>
    </body>
</html>
