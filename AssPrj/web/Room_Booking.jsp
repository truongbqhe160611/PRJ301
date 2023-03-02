<%-- 
    Document   : Room_Booking
    Created on : Mar 3, 2023, 1:51:51 AM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Room_Booking.css">
    </head>
    <body>
       <h2>Room Booking</h2>
	<form>
		<label for="name">Name:</label>
		<input type="text" id="name" name="name"><br><br>

		<label for="room-type">Room Type:</label>
		<select id="room-type" name="room-type">
			<option value="single">Single</option>
			<option value="double">Double</option>
			<option value="suite">Suite</option>
		</select><br><br>

		<label for="check-in-date">Check-in Date:</label>
		<input type="date" id="check-in-date" name="check-in-date"><br><br>

		<label for="check-out-date">Check-out Date:</label>
		<input type="date" id="check-out-date" name="check-out-date"><br><br>

		<input type="submit" value="Book Room">
	</form>
    </body>
</html>
