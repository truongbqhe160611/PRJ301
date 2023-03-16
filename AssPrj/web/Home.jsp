<%-- 
    Document   : Home
    Created on : Mar 3, 2023, 1:35:27 AM
    Author     : tr498
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/home.css">
    </head>
    <!--    <body>
            <div class="container">
                <div class="row">
                    <nav class="navar_1">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="collapse" id="navbar-collapse-1">
                            <ul class="navbar-nav">
                                <li class="active"><a href="Home.jsp">Home <span class="sr-only"></span></a></li>
                                <li class="active"><a href="Room_Booking.jsp">Booking <span class="sr-only"></span></a></li>
                                <li class="active"><a href="Room_List.jsp">List <span class="sr-only"></span></a></li>
                                <li class="active"><a href="Food.jsp">Food <span class="sr-only"></span></a></li>                            
                                <li><a href="contact.html">Contact</a></li>
                            </ul>                        
                        </div>                
                    </nav>
                </div>
            </div>
        </body>-->
    <!--  <body>-->
    <!--    <header>
          <nav>
            <ul>
              <li><a href="#">Home</a></li>
              <li><a href="#">Rooms</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </nav>
        </header>
        <main>
          <h1>Welcome to Our Hotel</h1>
          <p>Book a room today and experience the ultimate in comfort and relaxation.</p>
          <form action="#" method="get">
            <label for="check-in-date">Check-in Date</label>
            <input type="date" id="check-in-date" name="check-in-date" required>
            <label for="check-out-date">Check-out Date</label>
            <input type="date" id="check-out-date" name="check-out-date" required>
            <label for="room-type">Room Type</label>
            <select id="room-type" name="room-type">
              <option value="single">Single Room</option>
              <option value="double">Double Room</option>
              <option value="suite">Suite</option>
            </select>
            <button type="submit">Book Now</button>
          </form>
        </main>
        <footer>
          <p>&copy; 2023 Hotel Management. All rights reserved.</p>
        </footer>
      </body>-->
    <body>            
        <main>
            <header>
                <h2 class="logo">Logo</h2>
                <nav class="navigation">
                    <a href="Home.jsp">Home</a>
                    <a href="loadbooked">Room Booked</a>
                    <c:if test="${sessionScope.account.isAdmin == 0}">
                        <a href="Food.jsp">Services</a> 
                    </c:if>
                    <c:if test="${sessionScope.account.isAdmin == 1}">
                        <a href="loadaccount">List Account</a>  
                    </c:if>
                    <a href="AccountInfor.jsp">Account</a>
                    <a href="login.jsp">Log Out</a>
                </nav>
            </header>
            <section class="hero">
                <h1>Welcome to Our Hotel</h1>
                <p>Experience luxury and comfort at our hotel.</p>
                <a href="Room_List.jsp" class="btn btn-primary">Book Now</a>
            </section>     
            <section class="rooms" style="margin-right: 140px">
                <h2 style="color: white">Our Rooms</h2>
                <div class="room">
                    <img src="css/img/backdon.jpg" alt="Room 1" class="room-img">
                    <h3>Single Room</h3>
                    <p>Spacious room with a king-sized bed, en-suite bathroom, and city view.</p>                   
                </div>
                <div class="room">
                    <img src="css/img/back_doi.jpg" alt="Room 2" class="room-img">
                    <h3>Double Room</h3>
                    <p>Comfortable room with a queen-sized bed, en-suite bathroom, and garden view.</p>
                </div>
                <div class="room">
                    <img src="css/img/back_vip.jpg" alt="Room 3" class="room-img">
                    <h3>VIP Room</h3>
                    <p>Cosy room with a twin-sized bed, en-suite bathroom, and pool view.</p>
                </div>
            </section>

            <section class="features" style="margin-left: -140px;">
                <h2 style="color: white">Our Services</h2>
                <div class="feature">
                    <img src="css/img/background_nha_an.jpg" alt="Restaurant" class="feature-img">
                    <h3>Restaurant</h3>
                    <p>Savor delicious food and drinks at our restaurant.</p>
                </div>
                <div class="feature">
                    <img src="css/img/spa.jpg" alt="Spa" class="feature-img">
                    <h3>Spa</h3>
                    <p>Relax and rejuvenate with our spa treatments.</p>
                </div>
                <div class="feature">
                    <img src="css/img/gym.jpg" alt="Gym" class="feature-img">
                    <h3>Gym</h3>
                    <p>Stay fit and healthy with our fully-equipped gym.</p>
                </div>       
            </section>
        </main>
        <footer style=" background-color: #0b0b0b; color: #fff; text-align: center; padding: 20px;">
            <p>© Trgbui Hotel Management</p>
        </footer>
    </body>
</html>
