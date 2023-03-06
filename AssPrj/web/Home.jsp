<%-- 
    Document   : Home
    Created on : Mar 3, 2023, 1:35:27 AM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/home.css">
    </head>
	<header>
		<h1>My Store</h1>
	</header>
	<main>
		<h2>Order Confirmation</h2>
		<!-- Display a table of purchased items with details -->
		<table>
			<thead>
				<tr>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Product 1</td>
					<td>2</td>
					<td>$19.99</td>
				</tr>
				<tr>
					<td>Product 2</td>
					<td>1</td>
					<td>$9.99</td>
				</tr>
				<tr>
					<td>Product 3</td>
					<td>3</td>
					<td>$24.99</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">Subtotal:</td>
					<td>$84.96</td>
				</tr>
				<tr>
					<td colspan="2">Shipping:</td>
					<td>$5.00</td>
				</tr>
				<tr>
					<td colspan="2">Total:</td>
					<td>$89.96</td>
				</tr>
			</tfoot>
		</table>
	</main>
</body>
</html>
