<%-- 
    Document   : List_Account
    Created on : Mar 16, 2023, 1:10:21 AM
    Author     : tr498
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Account</title>
        <link rel="stylesheet" href="css/ListAccount.css">
    </head>
    <body>
        <header>
            <h2 class="logo">Room Booked</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="loadbooked"">Room Booked</a>
                <a href="loadaccount">List Account</a>
                <a href="AccountInfor.jsp">Account</a>
                <a href="login.jsp">Log Out</a>               
            </nav>
        </header>
        <section>
            <div class="room-details">
                <div class="booking-details">
                    <h3>List Account</h3>
                    <table>
                        <tr>  
                            <c:if test="${sessionScope.account.getIsAdmin() == 0}">  
                            <th>name</th>
                            </c:if>
                            <th>name</th>
                            <th>email</th>
                            <th>password</th>
                            <th>phone</th>
                            <th>address</th>
                        </tr>
                        
                        <c:forEach items="${Account}" var="x">
                            <tr>   
                                <td>${x.name}</td>
                                <td>${x.email}</td>
                                <td>${x.password}</td>
                                <td>${x.phone}</td>
                                <td>${x.address}</td>                              
                                <td style="display: flex">                                   
                                    <div style="font-size: x-large;margin: 5px;">
                                        <a href="updateaccount?scustomerId=${x.id}"><ion-icon name="pencil"></ion-icon></ion-icon></a>
                                    </div>
                                    <div style="font-size: x-large;margin: 5px;">
                                        <a href="#" onclick="showMess(${x.id})"><ion-icon name="trash"></ion-icon></ion-icon></a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>                
                    </table>
                </div>
            </div>
        </section>    
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
    <script>
        function showMess(id) {
            var option = confirm('Are you sure to DELETE!!!');
            if (option === true) {
                window.location.href = 'deleteaccount?sid=' + id;
            }
        }
    </script>
</html>
