<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>

<html lang="en">
	<head>
		<title>Registration Form</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/slider.css">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.1.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/owl.carousel.js"></script>
		<script src="js/jquery.flexslider-min.js"></script>
		<script src="js/kwiks.js"></script>
		
		
		<style>
		
		.left
     {
         right=40px;
     }
		
		
		
		</style>
	</head>
	
	
	
	<body>
	<header>
			<div class="clear"></div>
			<div class="container_12">
				<div class="grid_12">
					<h1>
						<a href="index.html">
							<img src="images/logo.png" alt="Your Happy Family">
						</a>
					</h1>
					<div class="menu_block">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
							<ul class="sf-menu">
								<li class="current"><a href="index.html">Home</a>
									<ul>
										<li><a href="#">history</a></li>
										<li><a href="#">offers</a></li>
										<li><a href="#">news</a>
										<ul>
											<li><a href="#">fresh </a></li>
											<li><a href="#">archive</a></li>
										</ul>
									</ul>
								</li>
								<li><a href="index-1.html">Videos </a></li>
								<li><a href="index-2.html">Campaigns</a></li>
							
								<li><a href="index-4.html">Contacts</a></li>
								<li><a href="requestform.jsp">Request form</a>
								
								
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>
	
	<p style="fontfamily: Arial;font-size:130%;">
  	
	Our mission is to spread awareness about Organ Donation in India. Once you register your wish on this website, you can download and print your donor card which will state your consent to having your organs and tissue made available for transplantation upon your death.

<br><br>Print and keep this card with you at all times. Do understand that this card is not a legal document, but an acknowledgement of your wish to donate your organs. Remember that your family and dear ones would be the ones to who will give the final consent.<br>

<br>All information submitted will be kept completely confidential. We will not share, sell or otherwise compromise this information. Please note that the person you have nominated as an emergency contact will also receive an email informing him/her about your wish to donate
	</p>
	<br>
	<br>
	
	<p style="text-align:center;font-size:120%;">REGISTRATION FORM</p>
	 
	     <div class="container">
	     <div class="left">
	      <form action="donordb.jsp" method="post">
	       <div class="row">
	            State: <input type="text" name="state" >
	    </div><br>
	    
	      <div class="row">
	      First Name: <input type="text" name="fname" >
	    </div><br>
	    
	    
	      <div class="row">
	     Last Name: <input type="text" name="lname" >
	    </div><br>
	    
	    
	      <div class="row">
	     Date of Birth: <input type="Date" name="dob" >
	    </div><br>
	      
	     Sex: <input type="radio" name="sex" value="f"
					>Female <input type="radio" name="sex" value="m">Male
					 <br>
					 <br>
	   
	      <div class="row">
	     Blood group: 
	                     	<select name="bloodgrp" id="bloodgrp" value="">
	                     	<option></option>
	                     	 <option value="A+">A+</option>
   <option  value="A-">A-</option>
   <option value="B+">B+</option>
   <option value="B-">B-</option>
   <option value="AB+">AB+</option>
   <option value="AB-">AB-</option>
   <option value="A1+">A1+</option>
   <option value="A1-">A1-</option>
   <option value="A2+">A2+</option>
   <option value="O+">O+</option>
   <option value="O-">O-</option>
   <option value="A2-">A2-</option>
   <option value="A1B+">A1B+</option>
   <option value="A1B-">A1B-</option>
   <option value="A2B+">A2B+</option>
   <option value="A2B-">A2B-</option>
   <option value="INRA">INRA</option>
   <option value="Bombay Blood Group">Bombay Blood Group</option>
	                     	</select>
	                     	
	    </div><br>
	     organs to donate:<input type="checkbox" name="organ" value="kidney">Kidney
<input type="checkbox" name="organ" value="heart">Heart 
<input type="checkbox" name="organ" value="blood">Blood<br><br>
	     <div class ="row">
	     Address: <input type="text" name="address" >
	    </div><br>
	     <div class ="row">
	     City: <input type="text" name="city" >
	    </div><br>
	     <div class ="row">
	     pincode: <input type="text" name="pincode" >
	    </div><br>
	     <div class ="row">
	     Email: <input type="email" name="emailid" >
	    </div><br>
	     <div class ="row">
	     Mobile no: <input type="text" name="mobileno" >
	    </div><br>
	    <br>
	    <center><input type="submit" name="submit" value ="submit"></center>
	    </form>
	      </div>
	      </div>
	</body>
	
	</html>