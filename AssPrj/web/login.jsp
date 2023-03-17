<%-- 
    Document   : login
    Created on : Feb 28, 2023, 8:54:01 PM
    Author     : tr498
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css">
        <title>Login</title>
    </head>
    <body class="container" >  
        <form action="login" method="POST">
            <header>
                <h2 class="logo">Logo</h2>
                <nav class="navigation">
                    <a href="#">Home</a>
                    <a href="#">About</a>              
                    <a href="#">Contact</a>
                    <button class="btnlogin-popup">Login</button>
                </nav>
            </header>
            <section>
                <div class="form-box">
                    <div class="form-value">
                        <c:set var="cookie" value="${pageContext.request.cookies}"/>
                        <form method="post" action="Login">
                        <h2>Login</h2>
                        <div class="inputbox">
                            <ion-icon name="mail"></ion-icon>
                            <input type="email" name="email" value="${cookie.cemail.value}" required>
                            <label for="">Email </label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed"></ion-icon>
                            <input type="password" name="password" value="${cookie.cpass.value}" required>
                            <label for="">Password </label>
                        </div>
                        <div class="forget"></div>
                        <label for=""> <input type="checkbox" ${cookie.cremember != null ? 'checked':''} name="remember" value="ON"/> Remember Me</label>
                        <a href="#">Forget password?</a></br>
                        <a href=""><button>Log in</button></a>      
                        <div class="register">
                            <p>Don't have a account <a href="Register.jsp"> Register</a></p>
                        </div>
                        </form>
                    </div>
                </div>

            </section>
        </form>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
    <!--    <body>
            <form action="login" method="POST">
            <header>
                <h2 class="logo">Logo</h2>
                <nav class="navigation">
                    <a href="#">Home</a>
                    <a href="#">About</a>              
                    <a href="#">Contact</a>
                    <button class="btnlogin-popup">Login</button>
                </nav>
            </header>
    
                <div class="wrapper">
                <span class="icon-close"><ion-icon name="close-outline"></ion-icon></span>
    
                <div class="form-box login">
                    <h2>Login</h2> 
                    <c:set var="cookie" value=""/>
                    
                        <div class="input-box">
                            <span class="icon"><ion-icon name="mail"></ion-icon></span>
                            <input type="email" name="email"  required>
                            <label>Email</label>
                        </div>
                        <div class="input-box">
                            <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                            <input type="password" name="password"  required>
                            <label>Password</label>
                        </div>
                        <div class="remember-forgot">
                            <label><input type="checkbox" >Remember me</label>
                            <a href="#">Forgot Password?</a>
                        </div>
                        <button type="submit" class="btn">Login</button>
                        <div class="login-register">
                            <p>Don't have an account? <a href="#" class="register-link">Register</a></p>
                        </div>
                    </form>
                </div>           -->
    <!--            <div class="form-box register">
                    <h2>Registration</h2>  
                    <form method="post" action="Login">
                         <div class="input-box">
                            <span class="icon"><ion-icon name="person"></ion-icon></span>
                            <input type="text" required>
                            <label>UserName</label>
                        </div>
                        <div class="input-box">
                            <span class="icon"><ion-icon name="mail"></ion-icon></span>
                            <input type="email" required>
                            <label>Email</label>
                        </div>
                        <div class="input-box">
                            <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                            <input type="password" required>
                            <label>Password</label>
                        </div>
                        <div class="remember-forgot">
                            <label><input type="checkbox">I agree to the terms & conditions</label>                       
                        </div>
                        <button class="btn"> <input type="hidden" name="action" value="register"> Register </button>
                        <button type="submit" class="btn">Register</button>
                        <div class="login-register">
                            <p>Already have an account? <a href="#" class="login-link">Login</a></p>
                        </div>
                    </form>
                </div>           
            </div>-->
    <!--            <script src="js/script.js"></script>
            <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
            <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>-->
</form>      
</body> 
</html>
