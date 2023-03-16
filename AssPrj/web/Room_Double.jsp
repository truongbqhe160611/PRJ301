<%-- 
    Document   : Room_Double
    Created on : Mar 9, 2023, 11:53:55 PM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Room_Double.css">

    </head>   
    <body>   
        <header>
            <h2 class="logo">Room Double</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="Room_List.jsp">Room List</a>
                <a href="#Room201">Room201</a>
                <a href="#Room202">Room202</a>
                <a href="#Room203">Room203</a>               
            </nav>
        </header>  
        <main style="background: url(css/img/back_doi.jpg);margin-top: -23px">
            <div style="backdrop-filter: brightness(0.3);">    
                <div class="room-details"  style="margin-top:100px;">                       
                    <div style="text-align: left">           
                        <section id="Room201">
                            <h2>Room201 ID:4</h2>
                        </section>
                            <p class="room-type">Room Type: Double</p>
                            <p class="room-price">Price: $200/night</p>   
                        
                    </div>
                    <div class="room-images">
                        <img src="css/img/doi1.jpg" alt="Double Room Image 1" class="room-img">
                        <img src="css/img/doi1b.jpg" alt="Double Room Image 2" class="room-img">
                        <img src="css/img/doi1c.jpg" alt="Double Room Image 3" class="room-img">
                    </div>
                    <p class="room-description">Our double rooms are perfect for couples or friends traveling together. Each room comes with two double beds and all the amenities you need for a comfortable stay.</p>
                    <ul class="room-amenities">
                        <li>Two double beds</li>
                        <li>Private bathroom with shower</li>
                        <li>Flat-screen TV</li>
                        <li>Air conditioning</li>
                        <li>Free Wi-Fi</li>
                        <li>Mini fridge</li>
                        <li>Desk and chair</li>
                        <li>Hair dryer</li>
                    </ul>
                    <a href="Room_Booking.jsp"><input style="background-color: #fff;color: #0b0b0b;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>

                </div>
                <div class="room-details">  

                    <div style="text-align: left">       
                        <section id="Room202">
                            <h2>Room202 ID:5</h2>
                        </section>
                            <p class="room-type">Room Type: Double</p>
                            <p class="room-price">Price: $200/night</p>
                        
                    </div>

                    <div class="room-images">
                        <img src="css/img/doi2a.jpg" alt="Double Room Image 1" class="room-img">
                        <img src="css/img/doi2b.jpg" alt="Double Room Image 2" class="room-img">
                        <img src="css/img/doi2c.jpg" alt="Double Room Image 3" class="room-img">
                    </div>
                    <p class="room-description">Our double rooms are perfect for couples or friends traveling together. Each room comes with two double beds and all the amenities you need for a comfortable stay.</p>
                    <ul class="room-amenities">
                        <li>Two double beds</li>
                        <li>Private bathroom with shower</li>
                        <li>Flat-screen TV</li>
                        <li>Air conditioning</li>
                        <li>Free Wi-Fi</li>
                        <li>Mini fridge</li>
                        <li>Desk and chair</li>
                        <li>Hair dryer</li>
                    </ul>                    
                    <a href="Room_Booking.jsp"><input style="background-color: #fff;color: #0b0b0b;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>       

                </div>        
                <div class="room-details">            

                    <div style="text-align: left">
                        <section id="Room203"> 
                            <h2>Room203 ID:6</h2>
                            <p class="room-type">Room Type: Double</p>
                            <p class="room-price">Price: $200/night</p>
                        </section>
                    </div>

                    <div class="room-images">
                        <img src="css/img/doi3a.jpg" alt="Double Room Image 1" class="room-img">
                        <img src="css/img/doi3b.jpg" alt="Double Room Image 2" class="room-img">
                        <img src="css/img/doi3c.jpg" alt="Double Room Image 3" class="room-img">
                    </div>
                    <p class="room-description">Our double rooms are perfect for couples or friends traveling together. Each room comes with two double beds and all the amenities you need for a comfortable stay.</p>
                    <ul class="room-amenities">
                        <li>Two double beds</li>
                        <li>Private bathroom with shower</li>
                        <li>Flat-screen TV</li>
                        <li>Air conditioning</li>
                        <li>Free Wi-Fi</li>
                        <li>Mini fridge</li>
                        <li>Desk and chair</li>
                        <li>Hair dryer</li>
                    </ul>
                    <a href="Room_Booking.jsp"><input style="background-color: #fff;color: #0b0b0b;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>
                </div>   
            </div>
        </main>  
        <footer style=" background-color: #0b0b0b; color: #fff; text-align: center; padding: 20px;">
            <p>© Trgbui Hotel Management</p>
        </footer>
    </body>
</html>
