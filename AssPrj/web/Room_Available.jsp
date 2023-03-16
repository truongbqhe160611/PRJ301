<%-- 
    Document   : Room_Available
    Created on : Mar 16, 2023, 1:57:12 AM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/room_available.css">
    </head>
    <body>
      	<h1>Available Rooms</h1>
	<table>
		<thead>
			<tr>
				<th>Room Number</th>
				<th>Room Type</th>
				<th>Price per Night</th>
			</tr>
		</thead>
		<tbody id="roomsTableBody">
		</tbody>
	</table>

	<script>
		// Example data of available rooms stored in a JavaScript object
		const availableRooms = [
			{ roomNumber: 101, roomType: 'Single', pricePerNight: 50 },
			{ roomNumber: 102, roomType: 'Double', pricePerNight: 80 },
			{ roomNumber: 103, roomType: 'Suite', pricePerNight: 150 },
			{ roomNumber: 104, roomType: 'Single', pricePerNight: 50 },
			{ roomNumber: 105, roomType: 'Double', pricePerNight: 80 }
		];

		// Loop through the available rooms data and create table rows dynamically
		for (let i = 0; i < availableRooms.length; i++) {
			const room = availableRooms[i];
			const newRow = document.createElement('tr');
			newRow.innerHTML = `
				<td>${room.roomNumber}</td>
				<td>${room.roomType}</td>
				<td>$${room.pricePerNight}</td>
			`;
			document.getElementById('roomsTableBody').appendChild(newRow);
		}
	</script>
    </body>
</html>
