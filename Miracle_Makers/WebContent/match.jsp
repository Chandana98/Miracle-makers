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
  
  
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}
tr:nth-child(even) {background-color: #e6ff99;}
tr:nth-child(odd) {background-color: #d2ff4d;}
</style>
<title>
</title>

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
								<li><a href="index-3.html">Volunteer </a></li>
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

<h1>DONORS LIST:</h1>
<br>
<br>
<% System.out.println("match");
  String emailid=request.getParameter("email");System.out.println(emailid);
try{

	Class.forName("org.postgresql.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sch", "postgres", "postgres");
       
     // String query="select * from request_mst where pemail=?";
      
     // query.setString(1,emailid);
      PreparedStatement pst=conn.prepareStatement("select * from request_mst where pemail=?");
      pst.setString(1,emailid);
     ResultSet rs=pst.executeQuery();
     while(rs.next())
     {String k=rs.getString("kidney");String h=rs.getString("heart");String b=rs.getString("blood");
      	 
     if(k.equalsIgnoreCase("y"));
     {
     PreparedStatement pd=conn.prepareStatement("select * from donor_mst where bloodgrp=? and city=? and kidney=? and life=?");
    	  pd.setString(1,rs.getString("bloodgrp"));
    	
    	  pd.setString(2,rs.getString("pcity"));
      pd.setString(3,"y"); pd.setString(4,"y");
    	  ResultSet rs1=pd.executeQuery();
    	 
    	    	 %><h1><center>KIDNEY DONORS</center></h1>
       		  <table>
       		  
       		  
       		  <tr>
       		  <th>Donor Name</th>
       		  <th>City</th>
       		  <th>phone no</th>
       		  <th>Address</th>
       		  <th>Blood group</th>
       		  <th>Email-id</th>
       		  </tr>
       		  <%
       		  while(rs1.next()){
    		  %>
    		  <tr>
    		  <td><%=rs1.getString("firstname")+rs1.getString("lastname") %></td>
    		  <td><%=rs1.getString("city")%></td>
    		  
    		    <td><%=rs1.getString("phno")%></td>
    		      <td><%=rs1.getString("address")%></td>
    		        <td><%=rs1.getString("bloodgrp")%></td>
    		          <td><%=rs1.getString("email")%></td>
    		          </tr>
    		             	 
    	 <%
    	 
    	  }
       		  %>
       		  </table><br>
       		  <%
     }
     if(h.equalsIgnoreCase("y"))
     {
    	 PreparedStatement ph=conn.prepareStatement("select * from donor_mst where bloodgrp=? and city=? and heart=? and life=?");
   	  ph.setString(1,rs.getString("bloodgrp"));
   	
   	  ph.setString(2,rs.getString("pcity"));
     ph.setString(3,"y"); ph.setString(4,"n");
   	  ResultSet rs2=ph.executeQuery();
     %>
    	 <h1><center>HEART DONORS</center></h1>
  		  <table>
  		  
  		  
  		  <tr>
  		  <th>Donor Name</th>
  		  <th>City</th>
  		  <th>phone no</th>
  		  <th>Address</th>
  		  <th>Blood group</th>
  		  <th>Email-id</th>
  		  </tr>
    	 
    	<% 
    	 while(rs2.next()){
   		  %>
   		  <tr>
   		  <td><%=rs2.getString("firstname")+rs2.getString("lastname") %></td>
   		  <td><%=rs2.getString("city")%></td>
   		   <td><%=rs2.getString("phno")%></td>
   		      <td><%=rs2.getString("address")%></td>
   		        <td><%=rs2.getString("bloodgrp")%></td>
   		          <td><%=rs2.getString("email")%></td>
   		          </tr>
   	                   
   	 <%
     } %>
		  </table>
		  <br>
		  <%
     }
    	 if(b.equalsIgnoreCase("y"))
         {
        	 PreparedStatement pb=conn.prepareStatement("select * from donor_mst where bloodgrp=? and city=? and blood=? and life=? ");
       	  pb.setString(1,rs.getString("bloodgrp"));
       	
       	  pb.setString(2,rs.getString("pcity"));
         pb.setString(3,"y"); pb.setString(4,"y");
       	  ResultSet rs3=pb.executeQuery();
         %>
        	 <h1><center>BLOOD DONORS</center></h1>
      		  <table>
      		  
      		  
      		  <tr>
      		  <th>Donor Name</th>
      		  <th>City</th>
      		  <th>phone no</th>
      		  <th>Address</th>
      		  <th>Blood group</th>
      		  <th>Email-id</th>
      		  </tr>
        	 
        	<% 
        	 while(rs3.next()){
       		  %>
       		  <tr>
       		  <td><%=rs3.getString("firstname")+rs3.getString("lastname") %></td>
       		  <td><%=rs3.getString("city")%></td>
       		   <td><%=rs3.getString("phno")%></td>
       		      <td><%=rs3.getString("address")%></td>
       		        <td><%=rs3.getString("bloodgrp")%></td>
       		          <td><%=rs3.getString("email")%></td>
       		          </tr>
       	                   
       	 <%
        	 }
  }
}
}
catch(Exception e)
{
	System.out.println(e.getMessage());
}
    	 
    	 %>
 </table>

  
</body>


</head>















</html>