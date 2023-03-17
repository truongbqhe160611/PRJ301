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
        <title>Room Booking</title>
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
                    <form class="form" action="booking" method="POST">
                        <label for="customerId">CustomerId:</label>
                        <input type="text" id="customerId" name="customerId" value="${sessionScope.account.id}" readonly><br><br>
                        <label for="roomId">roomId:</label>
                        <input type="text" id="roomId" name="roomId"><br><br>
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name"><br><br>
                        <label for="roomType">Room Type:</label>
                        <select id="roomType" name="roomType">
                            <option value="single">Single</option>
                            <option value="double">Double</option>
                            <option value="suite">VIP</option>
                        </select><br><br> 
                        <label for="roomNumber">Room Number:</label>
                        <select id="roomNumber" name="roomNumber">
                            <option value="101">Room101</option>
                            <option value="102">Room102</option>
                            <option value="103">Room103</option>
                            <option value="201">Room201</option>
                            <option value="202">Room202</option>
                            <option value="303">Room203</option>
                            <option value="101">Room301</option>
                            <option value="102">Room302</option>
                            <option value="103">Room303</option>
                        </select><br><br> 
                        <label for="checkInDate">Check-in Date:</label>
                        <input type="date" id="checkInDate" name="checkInDate"><br><br>

                        <label for="checkOutDate">Check-out Date:</label>
                        <input type="date" id="checkOutDate" name="checkOutDate"><br><br>

                                              
                        
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

