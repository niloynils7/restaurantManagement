<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Menu</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
		<link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Lobster&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Lobster|Pacifico&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/style.css">

				
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
<body>

	

	<section class="header">
		  <nav class="navbar navbar-default">
			  <div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				  <a class="navbar-brand" href="#"><img src = "images/bevanda.png" class="logo"></a>	
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav navbar-right">
					<li><a href="index.html"> Home</a></li>
					<li><a href="Restaurent.html">Restaurent</a></li>
					<li><a href="menu.jsp">Menu</a></li>
					<li><a href="join.html">Join Our Team </a></li>
					<li><a href="location.html">Location</a></li>
					<li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="login.html">Login </a></li>
                  <li><a href="#">Logout</a></li>
                  <li><a href="registration.html">Registration</a></li>
                 
                  
                </ul>
              </li>
				  </ul>
				</div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
	 </section >

	 <br>
	 <br>

	 <section class="pricing-table">
			<div class="container">
				<div class="row">
					<h1 class="text-c"><span class="r-heading">Here our's Combo Pacages </span><span class="r-heading1">You Can try it</span> </h1>

					<div class="col-md-4 pricing-box pricing-details">
						<div class="pricing-border">
							<div class="pricing-amount">
								<h1><sup>৳</sup>499</h1>
								<p>It's New</p>
								
							</div>
							<h2>Combo 1</h2>
							<ul>
								<li>Thai Clear/Corn Soup</li>
								<li>Wonthon</li>
								<li>Wedges</li>
								<li>Pasta Salad</li>
								<li>Steam Rice</li>
								<li>Thai Rice</li>
								<li>Chicken Massala</li>
								<li>Thai Noodles</li>
								<li>Ice Cream</li>
							</ul>
							<form method="POST" action="orderServlet">

								<button type="submit" name="set1" class="order-btn">Order</button>>

							</form>
						</div>
					</div>

					<div class="col-md-4 pricing-details">
						<div class="pricing-border">
							<div class="pricing-amount">
								<h1><sup>৳</sup>999</h1>
								<p>It's Hot</p>
								
							</div>
							<h2>Combo 2</h2>
							<ul>
								<li>Chicken Pasta-1</li>
								<li>Mexican Hot Pizza - 6 inc</li>
								<li>Chicken/Beef Burger - 1pc</li>
								<li>pasta Salad</li>
								<li>Thai soup</li>
								<li>Dosa</li>
								<li>Special Apple Juice</li>
								<li>Ice Cream</li>
								<li>Pepsi/Coca Cola/Dew</li>
							</ul>
							<form method="POST" action="orderServlet">

								<button type="submit" name="set2" class="order-btn">Order</button>>

							</form>
							</div>
					</div>

					<div class="col-md-4 pricing-details">
						<div class="pricing-border">
							<div class="pricing-amount">
								<h1><sup>৳</sup>1550</h1>
								<p>It's Amazing</p>
							</div>
							<h2>Combo 3</h2>
							<ul>
								<li>T-Bone Steak</li>
								<li>BBQ Half Chicken</li>
								<li>Mexican Half Chicken</li>
								<li>Rib eye Steak</li>
								<li>Meat Supreme Pizza</li>
								<li>Pepperoni Pizza</li>
								<li>Red valvet Cake</li>
								<li>Ice Cream</li>
								<li>Pepsi/Coca Cola/Dew</li>
							</ul>
							<form method="POST" action="orderServlet">

								<button type="submit" name="set3" class="order-btn">Order</button>>

							</form>

						</div>
					</div>
				</div>
			</div>
		</section>





		<!------>
			<section class="pricing-table">
			<div class="container">
				<div class="row">
					<div class="col-md-4 pricing-box pricing-details">
						<div class="pricing-border">
							<div class="pricing-amount">
								<h1><sup>৳</sup>700</h1>
								<p>It's New</p>
								
							</div>
							<h2>Combo 4</h2>
							<ul>
								<li>Potato Wedges-8 pieces</li>
								<li>Cheesy Chicken Pasta-1 set(oven baked)</li>
								<li>Nachos-1 set</li>
								<li>BBQ Chicken Wings -4 pieces</li>
								<li>Mini Burger-2 set</li>
								<li>Drinks for 2 persons</li>
								<li>Cream of Caramel for 2 persons</li>
								
								<li>Ice Cream</li>
							</ul>
							<form method="POST" action="orderServlet">

								<button type="submit" name="set4" class="order-btn">Order</button>>
							</form>

						</div>
					</div>

					<div class="col-md-4 pricing-details">
						<div class="pricing-border">
							<div class="pricing-amount">
								<h1><sup>৳</sup>899</h1>
								<p>It's Hot</p>
								
							</div>
							<h2>Combo 5</h2>
							<ul>
								<li>1 10" Four Season Pizza</li>
								<li>2 Smoky Pounder Burger</li>
								<li>1 Chicken/Beef Burger - 1pc</li>
								<li>1 Thai Soup (FREE)</li>
								<li>1 Foodgeek Special Chowmein (FREE)</li>
								<li>Dosa</li>
								
								<li>Ice Cream</li>
								<li>Pepsi/Coca Cola/Dew</li>
							</ul>
							<form method="POST" action="orderServlet">

								<button type="submit" name="set5" class="order-btn">Order</button>>
							</form>
							</div>
					</div>

					<div class="col-md-4 pricing-details">
						<div class="pricing-border">
							<div class="pricing-amount">
								<h1><sup>৳</sup>850</h1>
								<p>It's Amazing</p>
							</div>
							<h2>Combo 6</h2>
							<ul>
								<li>2 Smoky Pounder Burger</li>
								<li>BBQ Half Chicken</li>
								<li>Mexican Half Chicken</li>
								<li>Mini Burger-2 set</li>
								<li>1 Chicken/Beef Burger - 1pc</li>
								<li>Pepperoni Pizza</li>
								<li>Red valvet Cake</li>
								<li>Ice Cream</li>
								<li>Drinks for 2 persons</li>
							</ul>
							<form method="POST" action="orderServlet">

								<button type="submit" name="set6" class="order-btn">Order</button>>

							</form>
						</div>
					</div>
				</div>
			</div>
		</section>



		<section class="footer">
			<div class= "container">
				<div class="row">
					<p>© 2018 Bevanda Veneziana. All Rights Reserved. Vallagena BD group</p>
					
				</div>
				
			</div>
		</section>
	  
  

</body>
</html>