<%-- 
    Document   : Update_Booked
    Created on : Mar 15, 2023, 10:55:59 PM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/updatebooked.css">
    </head>

    <body>
        <form>
            <header>
                <h2 class="logo">Room Booked</h2>
                <nav class="navigation">
                    <a href="Home.jsp">Home</a>
                    <a href="Room_Single.jsp">Room Single</a>
                    <a href="Room_Double.jsp">Room Double</a>
                    <a href="Room_VIP.jsp">Room VIP</a>               
                </nav>
            </header>
            <form action="updatebooked" method="post">
            <div class="form-box">
                <div class="form-value" style="margin-left: -130px;">
                        <label for="name">Name:</label>
                        <input type="name" id="name" name="name" value="${bu.name}"><br><br>
                        <label for="roomType">Room Type:</label>
                        <select id="roomType" name="roomType" value="${bu.roomType}">
                            <option value="single">Single</option>
                            <option value="double">Double</option>
                            <option value="suite">VIP</option>
                        </select><br><br> 
                        <label for="roomNumber">Room Number:</label>
                        <select id="roomNumber" name="roomNumber" value="${bu.roomNumber}">
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
                        <input type="date" id="checkInDate" name="checkInDate" value="${bu.checkInDate}"><br><br>

                        <label for="checkOutDate">Check-out Date:</label>
                        <input type="date" id="checkOutDate" name="checkOutDate" value="${bu.checkOutDate}"><br><br>

                               <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor:pointer">Update</button>
                   
                </div>
            </div>  
        </form>
    </body>
</html>
