<%-- 
    Document   : Food
    Created on : Mar 5, 2023, 2:24:01 AM
    Author     : tr498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Food.css">
    </head>
    <body style="background: url(css/img/background_nha_an.jpg);backdrop-filter:brightness(0.3);">
         <header>
            <h2 class="logo">Food Service</h2>
            <nav class="navigation">
                <a href="Home.jsp">Home</a>
                <a href="#breakfast">Breakfast</a>
                <a href="#lunch">Lunch</a>
                <a href="#dinner">Dinner</a>
                <a href="#drinks">Drinks</a>
                <a href="#desserts">Desserts</a>               
            </nav>
        </header>
        <main>
            <div style="display: flex">
                <div style="width: 50%;">
                    <img src="css/img/bua_sang.jpg" style="width: 85%;height: 650px;margin: 20px 30px;border: 1px solid #ccc;padding: 20px;border-radius: 5px;">
                </div>
                <div>
                    <section id="breakfast">
                        <h2>Breakfast Menu</h2>
                        <p>Start your day off right with our delicious breakfast menu!</p>
                        <ul>
                            <li>
                                <h3>English Breakfast</h3>
                                <p>Two eggs, bacon, sausage, grilled tomato, mushrooms, and toast</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">
                                    Price: $10.99</button>
                            </li>
                            <li>
                                <h3>Pancakes and Syrup</h3>
                                <p>Three fluffy pancakes with maple syrup</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $7.99</button>
                            </li>
                            <li>
                                <h3>Bagel and Cream Cheese</h3>
                                <p>A toasted bagel with cream cheese</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $4.99</buuton>
                            </li>
                            <li>
                                <h3>Continental Breakfast</h3>
                                <p>A selection of pastries, muffins, and fruit</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $6.99</button>
                            </li>
                        </ul>
                    </section>
                </div>

            </div>
            <div style="display: flex">
                <div>
                    <section id="lunch">
                        <h2>Lunch Menu</h2>
                        <p>Join us for lunch </p>
                        <ul>
                            <li>
                                <h3>Cheeseburger and Fries</h3>
                                <p>Beef patty, cheddar cheese, lettuce, tomato, onion, and fries</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $12.99</button>
                            </li>
                            <li>
                                <h3>Grilled Chicken Salad</h3>
                                <p>Grilled chicken breast, mixed greens, tomato, cucumber, and balsamic vinaigrette</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $9.99</button>
                            </li>
                            <li>
                                <h3>Tuna Sandwich and Chips</h3>
                                <p>Tuna salad, lettuce, tomato, and chips</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $8.99</button>
                            </li>
                            <li>
                                <h3>Soup of the Day</h3>
                                <p>A bowl of our chef's homemade soup of the day</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $5.99</button>
                            </li>
                        </ul>
                    </section>
                </div>
                <div style="width: 50%;">
                    <img src="css/img/bua_trua.jpg" style="width: 85%;height: 650px;margin: 20px 30px;border: 1px solid #ccc;padding: 20px;border-radius: 5px;">
                </div>
            </div>
            <div style="display: flex">
                <div style="width: 50%;">
                    <img src="css/img/bua_toi.jpg" style="width: 85%;height: 650px;margin: 20px 30px;border: 1px solid #ccc;padding: 20px;border-radius: 5px;">
                </div>
                <div>
                    <section id="dinner">
                        <h2>Dinner Menu</h2>
                        <p>Indulge in our delectable dinner menu!</p>
                        <ul>
                            <li>
                                <h3>Steak and Potatoes</h3>
                                <p>Grilled sirloin steak with roasted potatoes and steamed vegetables</p>                               
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $24.99</button>
                            </li>
                            <li>
                                <h3>Seared Salmon</h3>
                                <p>Seared salmon with garlic butter sauce and mixed vegetables</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $19.99</button>
                            </li>
                            <li>
                                <h3>Pork Chops</h3>
                                <p>Grilled pork chops with mashed potatoes and green beans</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $16.99</button>
                            </li>
                            <li>
                                <h3>Vegetable Lasagna</h3>
                                <p>Homemade vegetable lasagna with garlic bread</p>                                
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $14.99</button>
                            </li>
                        </ul>
                    </section>
                </div>
            </div>
            <div style="display: flex">
                <div>

                    <section id="drinks">
                        <h2>Drink Menu</h2>
                        <p>Choose from our wide selection of drinks!</p>
                        <ul>
                            <li>
                                <h3>Soft Drinks</h3>
                                <p>Coca-Cola, Sprite, Fanta, and more</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: Varies</button>
                            </li>
                            <li>
                                <h3>Wine</h3>
                                <p>Red, white, and rosé wines by the glass or bottle</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: Varies</button>
                            </li>
                            <li>
                                <h3>Beer</h3>
                                <p>Domestic and imported beers by the bottle or on tap</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: Varies</button>
                            </li>
                            <li>
                                <h3>Cocktails</h3>
                                <p>Classic and signature cocktails made to order</p>
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: Varies</button>
                            </li>
                        </ul>
                    </section>
                </div>
                <div style="width: 50%;">
                    <img src="css/img/do_uong.png" style="width: 85%;height: 650px;margin: 20px 30px;border: 1px solid #ccc;padding: 20px;border-radius: 5px;">
                </div>
            </div>
            <div style="display: flex">
                <div style="width: 50%;">
                    <img src="css/img/trang_mieng.jpg" style="width: 85%;height: 650px;margin: 20px 30px;border: 1px solid #ccc;padding: 20px;border-radius: 5px;">
                </div>
                <div>

                    <section id="desserts">
                        <h2>Dessert Menu</h2>
                        <p>End your meal on a sweet note!</p>
                        <ul>
                            <li>
                                <h3>Chocolate Cake</h3>
                                <p>Rich chocolate cake with chocolate ganache</p>                               
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $6.99</button>

                            </li>
                            <li>
                                <h3>Crème Brûlée</h3>
                                <p>Classic French dessert with caramelized sugar on top</p>                              
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $7.99</button>
                            </li>
                            <li>
                                <h3>Ice Cream Sundae</h3>
                                <p>Vanilla ice cream with your choice of toppings</p>                               
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $4.99</button>
                            </li>
                            <li>
                                <h3>Fruit Tart</h3>
                                <p>Butter pastry crust filled with vanilla custard and fresh fruit</p>                              
                                <button style="background-color: #060a0e;color: #fff;border: none;padding: 10px 20px;border-radius: 5px;cursor: pointer">Price: $8.99</button>
                            </li>
                        </ul>
                    </section>
                </div>
            </div>
        </main>
        <footer style=" background-color: #0b0b0b; color: #fff; text-align: center; padding: 20px;">
            <p>© Trgbui Hotel Management</p>
        </footer>
    </body>
</html>
