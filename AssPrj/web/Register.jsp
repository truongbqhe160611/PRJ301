<%-- 
    Document   : Register
    Created on : Mar 13, 2023, 8:46:20 PM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/register.css">
        <title>TRUONGBUI HOTEL</title>
    </head>      
    <body class="container" >  
        <header>
            <h2 class="logo">Logo</h2>
            <nav class="navigation">
                <a href="#">Home</a>
                <a href="#">About</a>              
                <a href="#">Contact</a>
                <a href="login.jsp"><button class="btnlogin-popup">Login</button></a>
            </nav>
        </header>
        <section>
            <div class="form-box">
                <div class="form-value">
                    <form action="register" method="POST">
                        <h2>Register</h2>
                        <div class="inputbox">
                            <ion-icon name="person"></ion-icon>
                            <input type="name" name="name" required>
                            <label for="">Name</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input type="email" name="email" required>
                            <label for="">Email</label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input type="Password" name="password" required>
                            <label for="">Password </label>  
                        </div>
                        <div class="inputbox">
                            <ion-icon name="phone"></ion-icon>
                            <input type="phone" name="phone" required>
                            <label for="">Phone </label>  
                        </div>
                        <div class="inputbox">
                            <ion-icon name="address"></ion-icon>
                            <input type="address" name="address" required>
                            <label for="">Address </label>  
                        </div>
                        <a href=""><button>Register</button></a>                             
                    </form>
                </div>
            </div>
        </section>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>
