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
    <body >
        <header>
            <h2 class="logo">Room Booked</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="Room_Single.jsp">Room Single</a>
                <a href="Room_Double.jsp">Room Double</a>
                <a href="Room_VIP.jsp">Room VIP</a>               
            </nav>
        </header>

        <section>
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
                        <c:forEach items="${booking}" var="x">
                            <tr>
                                <td>${x.customerId}</td>
                                <td>${x.roomId}</td>
                                <td>${x.name}</td>
                                <td>${x.roomType}</td>
                                <td>${x.roomNumber}</td>
                                <td>${x.checkInDate}</td>
                                <td>${x.checkOutDate}</td>
                                <td>
                                    <c:if test="${sessionScope.account.getIsAdmin() == 1}">
                                        <a href="updatebooked?scustomerId=${x.customerId}">Update</a>
                                        <a href="#" onclick="showMess(${x.customerId})">Delete</a>
                                    </c:if>

                                </td>
                            </tr>

                        </c:forEach>
                        </tr>                 
                    </table>
                </div>
            </div>
        </section>
    </body>
    <script>
        function showMess(customerId) {
            var option = confirm('Are you sure to DELETE!!!');
            if (option === true) {
                window.location.href = 'deletebooked?scustomerId' + customerId;
            }
        }
    </script>
</html>
