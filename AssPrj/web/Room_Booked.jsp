<%-- 
    Document   : Room_Booked
    Created on : Mar 12, 2023, 6:15:38 PM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Room_Double.css">
    </head>
    <body>
        <header>
            <h2 class="logo">Room Booked</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="Room_Single.jsp">Room Single</a>
                <a href="Room_Double.jsp">Room Double</a>
                <a href="Room_VIP.jsp">Room VIP</a>               
            </nav>
        </header>
        <div class="room-details">
            <h2>Room 101</h2>
            <p class="description">This cozy room features a comfortable queen-sized bed and a private bathroom. Amenities include a flat-screen TV, air conditioning, and free Wi-Fi.</p>
            <div class="booking-details">
                <h3>Booking Information</h3>
                <ul>
                    <li>Booking ID: 123456789</li>
                    <li>Check-in date: 2023-03-10</li>
                    <li>Check-out date: 2023-03-15</li>
                    <li>Number of guests: 2</li>
                    <li>Total cost: $750</li>
                    <li>Payment method: Credit card</li>
                    <li>Special requests: Non-smoking room, extra pillows, and blanket</li>
                    <li>Notes: The guest has requested a late check-out at 2:00 pm on the day of departure.</li>
                </ul>
                <h3>User Information</h3>
                <ul>
                    <li>Guest name: John Doe</li>
                    <li>Guest email: johndoe@example.com</li>
                    <li>Guest phone: +1 (555) 555-5555</li>
                    <li>Guest address: 123 Main St, Anytown, USA</li>
                </ul>
            </div>
            <div class="room-image">
                <img src="room101.jpg" alt="Room 101">
            </div>
        </div>
    </body>
</html>
