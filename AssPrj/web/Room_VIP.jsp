<%-- 
    Document   : Room_VIP
    Created on : Mar 9, 2023, 11:54:08 PM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Room_Vip.css">

    </head>
    <body>  
        <header>
            <h2 class="logo">Room VIP</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="Room_List.jsp">Room List</a>
                <a href="#Room301">Room301</a>
                <a href="#Room302">Room302</a>
                <a href="#Room303">Room303</a>               
            </nav>
        </header>
        <main style="background: url(css/img/back_vip.jpg); margin-top: -23px">
            <div style="backdrop-filter: brightness(0.3);">        
                <div class="vip-room" style="margin-top:100px;">
                    <section id="Room301">
                        <h2 style="text-align: left">Room 301 ID:7</h2>   
                    </section>
                    <img src="css/img/phong vip.jpg" alt="VIP Room">
                    <p class="description">Experience luxury like never before in our VIP Room. Located on the top floor, this spacious room boasts stunning ocean views and features premium amenities to ensure a comfortable and unforgettable stay.</p>
                    <ul>
                        <li>Room size: 600 square feet</li>
                        <li>Bed type: King-size bed with premium bedding</li>
                        <li>View: Ocean view with private balcony</li>
                        <li>Occupancy: 2 adults and 2 children (under 12 years old)</li>
                        <li>Features: 
                            <ul>
                                <li>Jacuzzi bathtub</li>
                                <li>Flat-screen TV with cable channels</li>
                                <li>Mini-bar with complimentary bottled water and soft drinks</li>
                                <li>Free Wi-Fi</li>
                                <li>Bathrobes and slippers</li>
                                <li>Complimentary breakfast at our hotel restaurant</li>
                                <li>24-hour room service</li>
                                <li>Private check-in and check-out at our VIP lounge</li>
                                <li>Exclusive access to our Executive Lounge with complimentary refreshments and snacks throughout the day</li>
                            </ul>
                        </li>
                        <li style="font-weight: bold;">Price per night: $300</li>
                    </ul>
                    <a href="Room_Booking.jsp"><input style="background-color: #fff;color: #0b0b0b;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>
                </div>
                <div class="vip-room">
                    <section id="Room302">
                        <h2 style="text-align: left">Room302 ID:8</h2> 
                    </section>
                    <img src="css/img/phong vip 2.jpg" alt="VIP Room">
                    <p class="description">Experience luxury like never before in our VIP Room. Located on the top floor, this spacious room boasts stunning ocean views and features premium amenities to ensure a comfortable and unforgettable stay.</p>
                    <ul>
                        <li>Room size: 600 square feet</li>
                        <li>Bed type: King-size bed with premium bedding</li>
                        <li>View: Ocean view with private balcony</li>
                        <li>Occupancy: 2 adults and 2 children (under 12 years old)</li>
                        <li>Features: 
                            <ul>
                                <li>Jacuzzi bathtub</li>
                                <li>Flat-screen TV with cable channels</li>
                                <li>Mini-bar with complimentary bottled water and soft drinks</li>
                                <li>Free Wi-Fi</li>
                                <li>Bathrobes and slippers</li>
                                <li>Complimentary breakfast at our hotel restaurant</li>
                                <li>24-hour room service</li>
                                <li>Private check-in and check-out at our VIP lounge</li>
                                <li>Exclusive access to our Executive Lounge with complimentary refreshments and snacks throughout the day</li>
                            </ul>
                        </li>
                        <li style="font-weight: bold;">Price per night: $300</li>
                    </ul>
                    <a href="Room_Booking.jsp"><input style="background-color: #fff;color: #0b0b0b;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>
                </div>
                <div class="vip-room">
                    <section id="Room303">
                        <h2 style="text-align: left">Room303 ID:9</h2> 
                    </section>
                    <img src="css/img/phong_vip3.jpg" alt="VIP Room">
                    <p class="description">Experience luxury like never before in our VIP Room. Located on the top floor, this spacious room boasts stunning ocean views and features premium amenities to ensure a comfortable and unforgettable stay.</p>
                    <ul>
                        <li>Room size: 600 square feet</li>
                        <li>Bed type: King-size bed with premium bedding</li>
                        <li>View: Ocean view with private balcony</li>
                        <li>Occupancy: 2 adults and 2 children (under 12 years old)</li>
                        <li>Features: 
                            <ul>
                                <li>Jacuzzi bathtub</li>
                                <li>Flat-screen TV with cable channels</li>
                                <li>Mini-bar with complimentary bottled water and soft drinks</li>
                                <li>Free Wi-Fi</li>
                                <li>Bathrobes and slippers</li>
                                <li>Complimentary breakfast at our hotel restaurant</li>
                                <li>24-hour room service</li>
                                <li>Private check-in and check-out at our VIP lounge</li>
                                <li>Exclusive access to our Executive Lounge with complimentary refreshments and snacks throughout the day</li>
                            </ul>
                        </li>
                        <li style="font-weight: bold;">Price per night: $300</li>
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
