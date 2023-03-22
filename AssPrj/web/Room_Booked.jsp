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
        <title>Room Booked</title>
        <link rel="stylesheet" href="css/Room_Booked.css">
    </head>
    <body >
        <header>
            <h2 class="logo">Room Booked</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>               

                <c:if test="${sessionScope.account.isAdmin == 1}">
                    <a href="loadbooked">Room Booked</a>
                    <a href="loadaccount">List Account</a>  
                    <a href="AccountInfor.jsp">Account</a>
                    <a href="login.jsp">Log Out</a>  
                </c:if>
                <c:if test="${sessionScope.account.isAdmin == 0}">
                    <a href="Room_Double.jsp">Room Double</a>
                    <a href="Room_Single.jsp">Room Single</a>
                    <a href="Room_VIP.jsp">Room VIP</a>     
                </c:if>

            </nav>
        </header>

        <section>
            <div class="room-details">
                <div class="booking-details">
                    <h3>Booking Information</h3>
                    <table>
                        <tr>  
                            <c:if test="${sessionScope.account.getIsAdmin() == 1}">
                                <th>customerId</th>
                                </c:if>
                            <th>roomId</th>
                            <th>name</th>
                            <th>room_type</th>
                            <th>room_number</th>
                            <th>check_in</th>
                            <th>check_out</th>
                        </tr>
                        <c:forEach items="${booking}" var="x">
                            <tr>
                                <c:if test="${sessionScope.account.getIsAdmin() == 1}">
                                    <td>${x.customerId}</td>
                                </c:if>
                                <td>${x.roomId}</td>
                                <td>${x.name}</td>
                                <td>${x.roomType}</td>
                                <td>${x.roomNumber}</td>
                                <td>${x.checkInDate}</td>
                                <td>${x.checkOutDate}</td>
                                <td style="display: flex">
                                    <c:if test="${sessionScope.account.getIsAdmin() == 1}">
                                        <div style="font-size: x-large;margin: 5px;">                                      
                                            <a href="updatebooked?scustomerId=${x.customerId}"><ion-icon name="pencil"></ion-icon></ion-icon></a>
                                        </div>
                                        <div style="font-size: x-large;margin: 5px;">                                      
                                            <a href="#" onclick="showMess(${x.customerId})"> <ion-icon name="trash"></ion-icon></ion-icon></a>
                                        </div>
                                    </c:if>

                                </td>
                            </tr>

                        </c:forEach>
                        </tr>                 
                    </table>
                </div>
            </div>
        </section>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
    <script>
                                                function showMess(customerId) {
                                                    var option = confirm('Are you sure to DELETE!!!');
                                                    if (option === true) {
                                                        window.location.href = 'deletebooked?scustomerId=' + customerId;
                                                    }
                                                }
    </script>
</html>
