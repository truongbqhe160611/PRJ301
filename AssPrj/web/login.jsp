<%-- 
    Document   : login
    Created on : Feb 28, 2023, 8:54:01 PM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/login.css">
        <title>TRUONGBUI HOTEL</title>
    </head>
<body class="container" >             
        <section>
            <div class="form-box">
                <div class="form-value">
                    <form action="login" method="POST">
                        <h2>Login</h2>
                        <div class="inputbox">
                            <ion-icon name="mail-outline"></ion-icon>
                            <input type="email" required>
                            <label for="">Email </label>
                        </div>
                        <div class="inputbox">
                            <ion-icon name="lock-closed-outline"></ion-icon>
                            <input type="Password" required>
                            <label for="">Password </label>
                        </div>
                        <div class="forget"></div>
                        <label for=""> <input type="checkbox"> Remember Me</label>
                        <a href="#">Forget password?</a></br>
                        <button>Log in</button>      
                        <div class="register">
                            <p>Don't have a account <a href="#"> Register</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>
