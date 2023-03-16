<%-- 
    Document   : List_Account
    Created on : Mar 16, 2023, 1:10:21 AM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/ListAccount.css">
    </head>
    <body>
        <header>
            <h2 class="logo">Room Booked</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="loadbooked"">Room Booked</a>
                <a href="Room_Double.jsp">List Account</a>
                <a href="Room_VIP.jsp">Room VIP</a>               
            </nav>
        </header>

        <section>
            <div class="room-details">
                <div class="booking-details">
                    <h3>List Account</h3>
                    <table>
                        <tr>   
                            <th>name</th>
                            <th>email</th>
                            <th>password</th>
                            <th>phone</th>
                            <th>address</th>
                        </tr>
                        <c:forEach items="${Account}" var="x">
                            <tr>
                                <td>${x.id}</td>
                                <td>${x.isAdmin}</td>
                                <td>${x.name}</td>
                                <td>${x.email}</td>
                                <td>${x.password}</td>
                                <td>${x.phone}</td>
                                <td>${x.address}</td>
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
</body>
</html>
