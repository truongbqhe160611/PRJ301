<%-- 
    Document   : Room_Single
    Created on : Mar 9, 2023, 11:53:23 PM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Room_Single.css">

    </head>
    <body>
        <header>
            <h2 class="logo">Room Single</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="Room_List.jsp">Room List</a>
                <a href="#Room101">Room101</a>
                <a href="#Room102">Room102</a>
                <a href="#Room103">Room103</a>               
            </nav>
        </header>
        <main style="background: url(css/img/backdon.jpg); margin-top: -23px">
            <div style="backdrop-filter: brightness(0.3);">    
                <div class="room-details" style="margin-top:100px;" >            
                    <div style="text-align: left">
                        <section id="Room101">
                            <h2>Room101 ID:1</h2>
                            <p class="room-type">Room Type: Single</p>
                            <p class="room-price">Price: $100/night</p>
                        </section>
                    </div>
                    <img src="css/img/Don1.jpg" style="width: 80%; height: 450px">           
                    <p class="room-description">Description: Our deluxe room offers a spacious and comfortable stay with a king-sized bed and a balcony overlooking the ocean. The room is equipped with a flat-screen TV, a mini bar, and free Wi-Fi for your convenience. You'll also enjoy a luxurious en-suite bathroom with a bathtub and complimentary toiletries.</p>
                    <ul class="room-amenities">
                        <li>King-sized bed with premium bedding</li>
                        <li>Balcony with ocean view</li>
                        <li>Air conditioning</li>
                        <li>Flat-screen TV with cable channels</li>
                        <li>Mini bar stocked with drinks and snacks (charges apply)</li>
                        <li>Free Wi-Fi</li>
                        <li>In-room safe</li>
                        <li>Iron and ironing board</li>
                        <li>Desk and chair</li>
                        <li>Telephone</li>
                        <li>Complimentary bottled water</li>
                    </ul>
                    <p class="room-policies">Cancellation Policy: Free cancellation up to 24 hours before check-in. After that, the first night will be charged.</p>
                    <a href="Room_Booking.jsp"><input style="background-color: #fff;color: #0b0b0b;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>
                </div>
                <div class="room-details">            
                    <div style="text-align: left">
                        <section id="Room102">
                            <h2>Room102 ID:2</h2>
                            <p class="room-type">Room Type: Single</p>
                            <p class="room-price">Price: $100/night</p>
                        </section>
                    </div>
                    <img src="css/img/don2.jpg" style="width: 80%; height: 450px">            
                    <p class="room-description">Description: Our deluxe room offers a spacious and comfortable stay with a king-sized bed and a balcony overlooking the ocean. The room is equipped with a flat-screen TV, a mini bar, and free Wi-Fi for your convenience. You'll also enjoy a luxurious en-suite bathroom with a bathtub and complimentary toiletries.</p>
                    <div>
                        <ul class="room-amenities">
                            <li>King-sized bed with premium bedding</li>
                            <li>Balcony with ocean view</li>
                            <li>Air conditioning</li>
                            <li>Flat-screen TV with cable channels</li>
                            <li>Mini bar stocked with drinks and snacks (charges apply)</li>
                            <li>Free Wi-Fi</li>
                            <li>In-room safe</li>
                            <li>Iron and ironing board</li>
                            <li>Desk and chair</li>
                            <li>Telephone</li>
                            <li>Complimentary bottled water</li>
                        </ul>
                    </div>
                    <p class="room-policies">Cancellation Policy: Free cancellation up to 24 hours before check-in. After that, the first night will be charged.</p>
                    <a href="Room_Booking.jsp"><input style="background-color: #fff;color: #0b0b0b;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>
                </div>
                <div class="room-details">            
                    <div style="text-align: left">
                        <section id="Room103">
                            <h2>Room103 ID:3</h2>
                            <p class="room-type">Room Type: Single</p>
                            <p class="room-price">Price: $100/night</p>
                        </section>
                    </div>
                    <img src="css/img/Don3.jpg" style="width: 80%; height: 450px">
                    <p class="room-description">Description: Our deluxe room offers a spacious and comfortable stay with a king-sized bed and a balcony overlooking the ocean. The room is equipped with a flat-screen TV, a mini bar, and free Wi-Fi for your convenience. You'll also enjoy a luxurious en-suite bathroom with a bathtub and complimentary toiletries.</p>
                    <ul class="room-amenities">
                        <li>King-sized bed with premium bedding</li>
                        <li>Balcony with ocean view</li>
                        <li>Air conditioning</li>
                        <li>Flat-screen TV with cable channels</li>
                        <li>Mini bar stocked with drinks and snacks (charges apply)</li>
                        <li>Free Wi-Fi</li>
                        <li>In-room safe</li>
                        <li>Iron and ironing board</li>
                        <li>Desk and chair</li>
                        <li>Telephone</li>
                        <li>Complimentary bottled water</li>
                    </ul>
                    <p class="room-policies">Cancellation Policy: Free cancellation up to 24 hours before check-in. After that, the first night will be charged.</p>
                    <a href="Room_Booking.jsp"><input style="background-color: #fff;color: #0b0b0b;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>
                </div>
            </div>
        </main>
        <footer style=" background-color: #0b0b0b; color: #fff; text-align: center; padding: 20px;">
            <p>© Trgbui Hotel Management</p>
        </footer>
    </body>
</html>
