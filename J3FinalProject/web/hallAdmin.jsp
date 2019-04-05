
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="data.HallDAO"%>
<%@page import="beans.Hall"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/J3FinalProject/css/main.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" >
        <title>Hall Admin</title>
    </head>

    <%
        String tableData = "";
        HallDAO hallDAO = new HallDAO();
        ArrayList<Hall> halls = hallDAO.retrieveAllHalls();
        for (Hall h : halls) {
            tableData += "<tr class='text-label'><td>"+h.getName()+"</td><td><a href='editHall.jsp?id="+h.getID()+"'><i class='far fa-edit green-text'></i></a>&nbsp;<a href='BookingSystemControllerServlet?route=deleteHall&ID="+h.getID()+"'><i class='fas fa-trash red-text'></i></a></td></tr>";
        }
    %>

    <body>
        <div class="main-div">
            <h1 class="label-text">Hall Admin</h1>
            <br><br>
            <a href="createHall.jsp" class="menu-btn">Create Hall</a>
            <br><br><br>
            <table class="admin-table">
                <tr class="blue-text">
                    <th >Hall Name</th>
                    <th >Actions</th>
                </tr>
                <%=tableData %>
            </table>
        </div>
    </body>
</html>
