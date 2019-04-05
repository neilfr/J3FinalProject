<%@page import="java.util.ArrayList"%>
<%@page import="data.HallDAO"%>
<%@page import="beans.Hall"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/J3FinalProject/css/main.css">
        <title>Edit Hall</title>
    </head>
    <%
        String hallName = "";
        int hallId = 84498234; //Default ID, placeholder incase getHallId() dosent work.
        if (request.getParameter("id") != null) {
            HallDAO hallDAO = new HallDAO();
            Hall hall = hallDAO.retrieveHallByID(Integer.parseInt(request.getParameter("id")));
            hallName = hall.getName();
            hallId = hall.getID();
        }
    %>
    <body>
        <div class="main-div">
            <h1 class="text-label">Edit Hall</h1>
            <form action="BookingSystemControllerServlet" method="POST">
                <br><br><label class="text-label">Hall Name:</label><input type="text" name="name" value=<%=hallName %> />
                <input class="hidden" name="ID" value=<%=hallId %> />
                <input name="route" value="updateHall" class="hidden">
                <br><br>
                <input class="menu-btn" type="submit" value="Edit Hall">
            </form>
        </div>
    </body>
</html>
