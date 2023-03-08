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
        <title>JSP Page</title>
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
<body>
    <header>
      <!-- Add your hotel logo and navigation menu here -->
    </header>
    
    <main>
      <h1>Room List</h1>
      
      <!-- Display a list of all rooms in the hotel -->
      <section class="room-list">
        <h2>All Rooms</h2>
        <ul>
          <!-- Repeat the following code block for each room in the hotel -->
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
          <!-- End of repeated code block -->
        </ul>
      </section>
      
      <!-- Optionally, display a list of available rooms -->
      <section class="available-rooms">
        <h2>Available Rooms</h2>
        <ul>
          <!-- Repeat the following code block for each available room in the hotel -->
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
          <!-- End of repeated code block -->
        </ul>
      </section>
      
    </main>
    
    <footer>
      <!-- Add any additional footer content here -->
    </footer>
  </body>
</html>
