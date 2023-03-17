<%-- 
    Document   : Room_List
    Created on : Mar 3, 2023, 2:09:18 AM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Room List</title>
        <link rel="stylesheet" href="css/Room_List.css">

    </head>
    <!--    <body>
            <h1 style=" text-align: center;font-size: 3em">Rooms List</h1>
            <div>
                <div class="form-box">
                    <div>
                        <h2>Single Room</h2>
                        <img src="css/img/Login.jpg"style="width: 100%;height:540px">
                    </div>
                    <div>                   
                        <p>Our comfortable single rooms feature a single bed, flat-screen TV, and a private bathroom with a shower.</p>
                        <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer;margin: 0 0 10px;">Price per night: $80</button>
                    </div> 
                </div> 
                <div class="form-box">
                    <div>
                        <h2>Double Room</h2>
                        <img src="css/img/Login.jpg" style="width: 100%;height:540px">
                    </div>
                    <div>                    
                        <p>Our spacious double rooms feature a double bed, flat-screen TV, and a private bathroom with a shower.</p>
                        <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer;margin: 0 0 10px;">Price per night: $120</button>
                    </div>
                </div>
                <div class="form-box">
                    <div>
                        <h2>Suite Room</h2>
                        <img src="css/img/Login.jpg" style="width: 100%;height:540px">
                    </div>
                    <div>                           
                        <p>Our family rooms feature a double bed and two single beds, flat-screen TV, and a private bathroom with a shower.</p>
                        <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer;margin: 0 0 10px;">Price per night: $160</button>
                    </div>
                </div>
            </div>
            <footer style=" background-color: #232f3e; color: #fff; text-align: center; padding: 10px;">
                <p>© 2023 Hotel Management</p>
            </footer>
        </body>
    </body>-->
    <!--<body>
        <header>
           Add your hotel logo and navigation menu here 
        </header>
        
        <main>
          <h1>Room List</h1>
          
           Display a list of all rooms in the hotel 
          <section class="room-list">
            <h2>All Rooms</h2>
            <ul>
               Repeat the following code block for each room in the hotel 
              <li>
                <article class="room">
                  <h3>Room Name or Number</h3>
                  <div class="room-image">
                    <img src="room-image.jpg" alt="Room Image">
                  </div>
                  <ul class="room-details">
                    <li><strong>Type:</strong> Room Type</li>
                    <li><strong>Price:</strong> Room Price per night</li>
                    <li><strong>Capacity:</strong> Room Capacity</li>
                    <li><strong>Features:</strong> Room Features</li>
                    <li><strong>Status:</strong> Room Availability Status</li>
                    <li><strong>Book Now:</strong> Link to room booking page</li>
                  </ul>
                </article>
              </li>
               End of repeated code block 
            </ul>
          </section>
          
           Optionally, display a list of available rooms 
          <section class="available-rooms">
            <h2>Available Rooms</h2>
            <ul>
               Repeat the following code block for each available room in the hotel 
              <li>
                <article class="room">
                  <h3>Room Name or Number</h3>
                  <div class="room-image">
                    <img src="room-image.jpg" alt="Room Image">
                  </div>
                  <ul class="room-details">
                    <li><strong>Type:</strong> Room Type</li>
                    <li><strong>Price:</strong> Room Price per night</li>
                    <li><strong>Capacity:</strong> Room Capacity</li>
                    <li><strong>Features:</strong> Room Features</li>
                    <li><strong>Book Now:</strong> Link to room booking page</li>
                  </ul>
                </article>
              </li>
               End of repeated code block 
            </ul>
          </section>
          
        </main>
        
        <footer>
           Add any additional footer content here 
        </footer>
      </body>-->
    <body style="margin: 0px">   
        <header>
            <h2 class="logo">Room List</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="Room_Single.jsp">Room Single</a>
                <a href="Room_Double.jsp">Room Double</a>
                <a href="Room_VIP.jsp">Room VIP</a>               
            </nav>
        </header>
        <section id="rooms" style="background: url(css/img/back_doi.jpg);backdrop-filter:brightness(0.3); margin: 0px">
            <div class="room-list" style="margin-top: 100px">
                <article class="room">
                    <h3>Single Room</h3>
                    <img src="css/img/backdon.jpg" alt="Single Room">
                    <ul class="room-features">
                        <li>Queen-sized bed</li>
                        <li>Flat-screen TV</li>
                        <li>Free Wi-Fi</li>
                    </ul>
                    <div class="room-price">
                        <span>Starting from</span>
                        <span class="price">$99</span>
                        <span>per night</span>
                    </div>
                    <a href="Room_Single.jsp" class="book-now"><input style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>
                </article>
                <article class="room">
                    <h3>Double Room</h3>
                    <img src="css/img/back_doi.jpg" alt="Double Room">
                    <ul class="room-features">
                        <li>King-sized bed</li>
                        <li>Balcony with a view</li>
                        <li>Mini-fridge</li>
                    </ul>
                    <div class="room-price">
                        <span>Starting from</span>
                        <span class="price">$199</span>
                        <span>per night</span>
                    </div>
                    <a href="Room_Double.jsp" class="book-now"><input style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>
                </article>
                <article class="room">
                    <h3>VIP Room</h3>
                    <img src="css/img/back_vip.jpg" alt="VIP Room">
                    <ul class="room-features">
                        <li>Separate living room</li>
                        <li>Jacuzzi bathtub</li>
                        <li>Kitchenette</li>
                    </ul>
                    <div class="room-price">
                        <span>Starting from</span>
                        <span class="price">$299</span>
                        <span>per night</span>
                    </div>
                    <a href="Room_VIP.jsp" class="book-now"><input style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer" type="submit" value="Book Room"></a>
                </article>
            </div>
        </section>   
         <footer style=" background-color: #0b0b0b; color: #fff; text-align: center; padding: 20px;">
            <p>© Trgbui Hotel Management</p>
        </footer>
    </body>
</html>
