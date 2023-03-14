<%-- 
    Document   : Room_Booked
    Created on : Mar 12, 2023, 6:15:38 PM
    Author     : tr498
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Room_Booked.css">
    </head>
    <body style="background: url(css/img/room_booking.jpg) no-repeat;">
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
            <div class="booking-details">
                <h3>Booking Information</h3>
                <table>
                    <tr>                      
                        <th>customer_id</th>
                        <th>room_id</th>
                        <th>name</th>
                        <th>room_type</th>
                        <th>room_number</th>
                        <th>check_in</th>
                        <th>check_out</th>
                    </tr>
                    <c:forEach begin="1" end="5" var="x">
                        <tr>
                            <td>1</td>
                            <td>1</td>
                            <td>truong</td>
                            <td>single</td>
                            <td>101</td>
                            <td>2023-03-12</td>
                            <td>2023-03-14</td>
                            <td>
                                <a href="#">Update</a>
                                <a href="#">Delete</a>
                            </td>
                        </tr>
                        
                        </c:forEach>
                    </tr>                 
                </table>
            </div>
        </div>
    </body>
</html>
