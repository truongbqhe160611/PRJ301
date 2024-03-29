
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Room Booked</title>
        <link rel="stylesheet" href="css/updatebooked.css">
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
            <form action="updateByCid" method="post">
                <div class="form-box">
                    <div class="form-value" style="margin-left: -130px;">
                        <c:set var="b" value="${requestScope.bUpdate}"/>
                        <label for="name">Name:</label>
                        <input type="name" id="name" name="name" value="${b.name}" readonly><br><br> 
                        <label for="roomNumber">RoomID:</label>
                        <select id="roomId" name="roomId" value="${b.roomId}">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                        </select><br><br> 
                        <label for="roomType">Room Type:</label>
                        <select id="roomType" name="roomType"><%--${b.roomType}--%>
                            <option value="Single">Single</option>
                            <option value="Double">Double</option>
                            <option value="VIP">VIP</option>
                        </select><br><br> 
                        <label for="roomNumber">Room Number:</label>
                        <select id="roomNumber" name="roomNumber" value="${b.roomNumber}">
                            <option value="101">Room101</option>
                            <option value="102">Room102</option>
                            <option value="103">Room103</option>
                            <option value="201">Room201</option>
                            <option value="202">Room202</option>
                            <option value="203">Room203</option>
                            <option value="301">Room301</option>
                            <option value="302">Room302</option>
                            <option value="303">Room303</option>
                        </select><br><br> 
                        <label for="checkInDate">Check-in Date:</label>
                        <input type="date" name="checkInDate" value="${b.checkInDate}"><br><br>

                        <label for="checkOutDate">Check-out Date:</label>
                        <input type="date" name="checkOutDate" value="${b.checkOutDate}"><br><br>

                        <button type="submit" style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor:pointer">Update</button>

                    </div>
                </div>  
            </form>
    </body>
</html>
