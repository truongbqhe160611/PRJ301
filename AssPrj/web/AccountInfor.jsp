<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information Account</title>
        <link rel="stylesheet" href="css/AccountInfor.css">
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
        <div class="form-box">
            <div class="form-value">
                <form style="margin-left: -130px;">

                    <label for="id">ID:</label>
                    <input type="text" id="id" name="id" value="${sessionScope.account.id}" readonly><br><br>

                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" value="${sessionScope.account.name}" readonly><br><br>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value="${sessionScope.account.email}" readonly><br><br>

                    <label for="phone">Phone:</label>
                    <input type="tel" id="phone" name="phone" value="${sessionScope.account.phone}" readonly><br><br>

                    <label for="address">Address:</label>
                    <input type="address" id="address" name="address" value="${sessionScope.account.address}" readonly><br><br>
                    <c:forEach items="${requestScope.Account}" var="x">
                        <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer"> <a href="updateaccount?customerId=${x.customerId}">Update</a></button>
                    </c:forEach>
                </form>   
            </div>
        </div> 
    </form>
</body>

</html>
