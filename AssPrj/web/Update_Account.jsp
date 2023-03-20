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
        <form action="updatebycustomerid" method="post">
            <div class="form-box">
                <div class="form-value" style="margin-left: -130px;">   
                    <c:set var="acc" value="${requestScope.Aupdate}"/>

                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" value="${Aupdate.name}"><br><br>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value="${Aupdate.email}"><br><br>
                    
                    <label for="password">password:</label>
                    <input type="text" id="password" name="password" value="${Aupdate.password}"><br><br>

                    <label for="phone">Phone:</label>
                    <input type="tel" id="phone" name="phone" value="${Aupdate.phone}"><br><br>

                    <label for="address">Address:</label>
                    <input type="address" id="address" name="address" value="${Aupdate.address}"><br><br>

                    <button name="mod" value="${Aupdate.id}" style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Update</button>                   

                </div>
            </div> 
        </form>
    </body>
</html>
