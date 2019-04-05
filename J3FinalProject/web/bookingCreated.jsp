
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/J3FinalProject/css/main.css">
        <title>Booking Created!</title>
    </head>
    <body>
        
        <% 
            String date = "";
            if (request.getParameter("date") != null) {
                date = request.getParameter("date");
            }
        %>
        
        <div class="main-div">
            <h1 class="green-text">Booking Created!</h1>
            <p class="text-label">You have been booked for <%=date%></p>
            <br>
            <a href="index.jsp" class="menu-btn">Home</a>
        </div>
    </body>
</html>
