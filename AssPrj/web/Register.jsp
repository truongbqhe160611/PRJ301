<%-- 
    Document   : Register
    Created on : Mar 10, 2023, 4:51:33 PM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/register.css">
        <!--        <style>
                    .a{
                        font-size: 20px;
                        font-weight: bold;
                        color:  black;
                    }
                    .b{
                        font-size: 20px;
                        font-weight: bold;
                        color: red;
                    }
                </style>-->
    </head>
    <body>
        <!--        <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-12 col-xl-11">
                            <div class="card text-black" style="border-radius: 25px;">
                                <div class="card-body p-md-5">
                                    <div class="row justify-content-center">
                                        <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                                            <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
                                            <form action="register" method="post" class="mx-1 mx-md-4">
                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <label class="form-label" for="form3Example1c">Your Name</label>
        
                                                        <input name="fullname" type="text" id="form3Example1c" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <label class="form-label" for="form3Example3c">Your Email</label>
                                                        <input name="email" type="email" id="form3Example3c" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <div class="form-check form-check-inline">
                                                        <label class="form-check-label" for="femaleGender">Female</label>
                                                        <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                                                               value="0" checked />
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="gender" id="maleGender"
                                                               value="1" />
                                                        <label class="form-check-label" for="maleGender">Male</label>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <label class="form-label" for="form3Example4c">Password</label>
                                                        <input name="password" type="password" id="password" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-row align-items-center mb-4">
                                                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                    <div class="form-outline flex-fill mb-0">
                                                        <label class="form-label" for="form3Example4cd">Repeat your password</label>
                                                        <input type="password" id="rpassword" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-check d-flex justify-content-center mb-5">
                                                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                                                    <label class="form-check-label" for="form2Example3">
                                                        I agree all statements in <a href="#!">Terms of service</a>
                                                    </label>
                                                </div>
                                                <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                    <button type="submit" class="btn btn-primary btn-lg">Register</button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                                 class="img-fluid" alt="Sample image">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
            </body>-->
        <!--<body>
                <form method="POST" action="register.php">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" required>
        
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
        
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
        
                        <input type="submit" value="Register">
                </form>
        </body>-->
<body class="container" >             
        <section>
            <div class="form-box">
                <div class="form-value">
                    <form action="login" method="POST">
                        <h2>Register</h2>
                        <div class="inputbox">
                            <input type="username" required> 
                            <label for="">Username</label>
                        </div>
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
                        <a href="login.jsp"><button>Register</button></a>                             
                    </form>
                </div>
            </div>
        </section>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>
