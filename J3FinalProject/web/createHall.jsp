
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/J3FinalProject/css/main.css">
        <title>Create Hall</title>
    </head>
    <body>
        <div class="main-div">
            <h1 class="text-label">Create Hall</h1>
            <form action="BookingSystemControllerServlet" method="POST">
                <br><br><input placeholder="Name" type="text" name="name" class="menu-input" required>
                <input name="route" value="addHall" class="hidden">
                <br><br>
                <input class="menu-btn" type="submit" value="Create Hall">
            </form>
        </div>
    </body>
</html>
