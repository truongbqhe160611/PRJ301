<%-- 
    Document   : Room_Booking
    Created on : Mar 3, 2023, 1:51:51 AM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Room_Booking.css">
    </head>
    <body class="container">
        <section>
            <div class="form-box">
                <div class="form-value">
                    <h1 style="font-size: 3em;color: #fff;text-align: center;margin: 0 0 20px;">Room Booking</h1>
                    <form class="form">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name"><br><br>

                        <label for="room-type">Room Type:</label>
                        <select id="room-type" name="room-type">
                            <option value="single">Single</option>
                            <option value="double">Double</option>
                            <option value="suite">Suite</option>
                        </select><br><br>

                        <label for="check-in-date">Check-in Date:</label>
                        <input type="date" id="check-in-date" name="check-in-date"><br><br>

                        <label for="check-out-date">Check-out Date:</label>
                        <input type="date" id="check-out-date" name="check-out-date"><br><br>

                        <input style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room">
                    </form>
                </div>
            </div>
        </section>        
    </body>
    <footer style=" background-color: #0b0b0b; color: #fff; text-align: center; padding: 10px;">
            <p>© Trgbui Hotel Management</p>
        </footer>
</html>

