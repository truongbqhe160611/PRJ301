<%-- 
    Document   : Update_Account
    Created on : Mar 17, 2023, 12:58:36 AM
    Author     : tr498
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/updateaccount.css">
    </head>
        <body  >
        <header>
            <h2 class="logo">Logo</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="Room_List.jsp">Rooms</a>
                <a href="Food.jsp">Services</a>              
                <a href="#">${sessionScope.account.name}</a>                
            </nav>
        </header>
            <form action="updateaccount" method="post">
            <div class="form-box">
                <div class="form-value" style="margin-left: -130px;">                               
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name" value="${acc.name}"><br><br>

                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" value="${acc.email}"><br><br>

                        <label for="phone">Phone:</label>
                        <input type="tel" id="phone" name="phone" value="${acc.phone}"><br><br>

                        <label for="address">Address:</label>
                        <input type="address" id="address" name="address" value="${acc.address}"><br><br>

                        <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer"> <a href="updateaccount?sid={acc.customerId}">Edit Account Information</a></button>                   
   
                </div>
            </div> 
        </form>
    </body>
</html>
