
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/J3FinalProject/css/main.css">
        <title>Register</title>
    </head>
    <body>
        <div class="main-div">
            <h1>Register</h1>
            <br>
        <form action="BookingSystemControllerServlet" method="POST">
            <br><input type="text" name="name" placeholder="Name" class="menu-input" required>
            <br><br><input type="text" name="creditCard" placeholder="Credit Card" class="menu-input" required>
            <input name="route" value="addClient" class="hidden">
            <br><br>
            <input class="menu-btn" type="submit" value="Register">
        </form>
        </div>
    </body>
</html>
