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
        <header>
            <h2 class="logo">Room Double</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="Room_Single.jsp">Room Single</a>
                <a href="Room_Double.jsp">Room Double</a>
                <a href="Room_VIP.jsp">Room VIP</a>               
            </nav>
        </header>  
        <section>
            <div class="form-box">
                <div class="form-value">
                    <h1 style="font-size: 3em;color: #fff;text-align: center;margin: 0 0 20px;">Room Booking</h1>
                    <form class="form">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name"><br><br>
                        <label for="Address">Address:</label>
                        <input type="text" id="Address" name="Address"><br><br>
                        <label for="Phone">Phone</label>
                        <input type="text" id="Phone" name="Phone"><br><br>
                        <label for="room-type">Room Type:</label>
                        <select id="room-type" name="room-type">
                            <option value="single">Single</option>
                            <option value="double">Double</option>
                            <option value="suite">VIP</option>
                        </select><br><br>
                        <label for="room-type">Room Type:</label>
                        <select id="room-number" name="room-number">
                            <option value="Room101">Room101</option>
                            <option value="Room102">Room102</option>
                            <option value="Room103">Room103</option>
                            <option value="Room101">Room201</option>
                            <option value="Room102">Room202</option>
                            <option value="Room103">Room203</option>
                            <option value="Room101">Room301</option>
                            <option value="Room102">Room302</option>
                            <option value="Room103">Room303</option>
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
        <footer style=" background-color: #0b0b0b; color: #fff; text-align: center; padding: 20px;">
            <p>© Trgbui Hotel Management</p>
        </footer>
    </body>
</html>

