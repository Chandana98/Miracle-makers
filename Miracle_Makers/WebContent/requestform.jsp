<!DOCTYPE html>

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
								<li class="current"><a href="requestform.jsp">Request form</a>
								
								
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</header>

<p>
Already registered ? click here to check the status!
<form action="match.jsp" method="post">
Email-id:
<input type="text" name="email" required>
<input type="submit">
</form>
<br><br><br>
</p>
<div>
<h1> REGISTRATION FORM</h1>
<br>
<br>
<form action="submitreq.jsp" method="post">
  Patient Name: <input type="text" name="patientname" required><br><br>
  Patient Blood Group:
<select name=bloodgrp required>
   <option value="A+">A+</option>
   <option  value="A-">A-</option>
   <option value="B+">B+</option>
   <option value="B-">B-</option>
   <option value="AB+">AB+</option>
   <option value="AB-">AB-</option>
   <option value="A1+">A1+</option>
   <option value="A1-">A1-</option>
   <option value="A2+">A2+</option>
   <option value="A2-">A2-</option>
   <option value="A1B+">A1B+</option>
   <option value="A1B-">A1B-</option>
   <option value="A2B+">A2B+</option>
   <option value="A2B-">A2B-</option>
   <option value="INRA">INRA</option>
   <option value="Bombay Blood Group">Bombay Blood Group</option>
   </select><br><br>
 Patient Age:<input type="number" name="patientage" required><br><br>
 Patient Aadhar No.:<input type="text" name="patientaadhar" required><br><br>
  Which organs do you require?<input type="checkbox" name="organ" value="kidney">Kidney
<input type="checkbox" name="organ" value="heart">Heart 
<input type="checkbox" name="organ" value="blood">Blood<br><br>
How many units  of blood required ?<input type="number" name="bloodunit" required><br><br>
 When you need blood/organ?<input type="date" name="deldate" required><br>
(DD/MM/YYYY)<br><br>
 Hospital the patient is admitted in? <input type="text" name="hosname" required><br><br>
 In-charge Doctor name <input type="text" name="docname" required><br><br>
 City:<input type="text" name="pcity" required><br>
  <input type="submit">
</form>
</div>

</body>
</html>
