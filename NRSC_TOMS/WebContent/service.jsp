<%@ page import ="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>service provider</title>

    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="customstylesservice.css" rel="stylesheet" />
   <style>
   @media (max-width: 320px) { .container{
				width: 220px;
			            }
		           }
@media (min-width: 320px) { .container {
				width: 320px;
			            }
		           }
@media (min-width: 481px) { .container{
				width: 481px;
			            }
		           }
@media (min-width: 641px) { .container{
				width: 641px;
			            }
		           }
@media (min-width: 961px) { .container{
				width: 961px;
			            }
		           }
@media (min-width: 1000px) { .container{
				width: 1000px;
			            }
		           }
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {background-color: #3498DB;}
tr:nth-child(odd) {background-color: #85C1E9;}
</style>
<script>
function validateForm() {
   var x = document.forms["service1"]["spname"].value;
    if (x == "") {
        alert("Service provider name must be filled out");
 
        return false;
    }
    
    x = document.forms["service1"]["orderno"].value;
    if (x == ""||isNaN(x)) {
        alert("check the order no");
 
        return false;
    }
    
    x = document.forms["service1"]["vdate"].value;
    if (x == "") {
        alert(" 'valid date from' must be filled out");
 
        return false;
    }
    
    
    x = document.forms["service1"]["vudate"].value;
    if (x == "") {
        alert(" 'valid date upto' must be filled out");
 
        return false;
    }
    
    
    x = document.forms["service1"]["spaddress"].value;
    if (x == ""||x.length<=20) {
        alert("check the address");
 
        return false;
    }
    x = document.forms["service1"]["spcontact_person"].value;
    if (x == "" || !isNaN(x)) {
        alert(" check the contact person ");
 
        return false;
    }
     x = document.forms["service1"]["usrtel"].value;
    if (x == ""||x.length!=10) {
        alert("check the contact no");
 
        return false;
    }
    
    var x = document.forms["service1"]["service_email"].value;
    if (x == "") {
        alert("email must be filled");
 
        return false;
    }
    
    var e = document.getElementById("modes");
            var optionSelIndex = e.options[e.selectedIndex].value;
            var optionSelectedText = e.options[e.selectedIndex].text;
            if (optionSelIndex == 0) {
                alert("Please select a hiring mode");
                return false;
            }
      var e = document.getElementById("cars");
            var optionSelIndex = e.options[e.selectedIndex].value;
            var optionSelectedText = e.options[e.selectedIndex].text;
            if (optionSelIndex == 0) {
                alert("Please select vehicle type");
                return false;
            }
       var e = document.getElementById("cars1");
            var optionSelIndex = e.options[e.selectedIndex].value;
            var optionSelectedText = e.options[e.selectedIndex].text;
            if (optionSelIndex == 0) {
                alert("Please select no of vehicles");
                return false;
            }
        
 else 
    return true;

}
</script>


  </head>
  

<body>
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  
<div class="container">
	<div class="row">
		<div class="col-md-1" img-responsive><img src="nrsc.png" alt="logo" width="60" height="60"></div>
		<div class="col-md-9">
			<div class="customdiv"><b>National Remote Sensing Centre<br>Transport Operations Management System</b></div>
		</div>
		<div class="col-md-1" img-responsive><img src="photo.png" alt="Photo" width="60" height="60"></div>
		<div class="col-md-1">
			<button class="btn btn-primary">Logout</button>
		</div>
	</div>
	<br>

	 <div class="row">
            <div class="col-xs-12">
		        <div class="dropdown">
                   <button class="dropbtn">Vehicle</button>
                               <div class="dropdown-content">
                                         <a href="service_provider.html">service provider</a>
		  								 <a href="Add_Vehicle.jsp">add vehicle</a>
		  								 <a href="vehicle_log.jsp">daily log</a>
		  								 <a href="VehicleAddModelJSP.jsp">add vehicle model</a>
					 					 <a href="vehbrand.jsp">add vehicle brand</a>
					  					 <a href="tabledata.jsp">add vehicle type</a>
		  								 <a href="#">routes</a>
                                         <a href="tslabs.jsp">tariff slabs</a>	 		
 	          				   </div>
                </div>
    			<div class="dropdown">
		   			<button class="dropbtn">Operations</button>
					
                               <div class="dropdown-content">
                                         	<a href="#">vehicle request</a>
				         				
					 						<a href="#">approval</a>
											
					 						<a href="#">allotment</a>
                                        			
 				 			   </div>
                </div>
                <div class="dropdown">
		  			<button class="dropbtn">Billing</button>
                               <div class="dropdown-content">
									 <a href="#">diesel prices</a>
					 					<a href="#">fuel bills</a>
					 					
					 					<a href="#">defect reporting</a>
					  					
                                         <a href="#">defect repair approval</a>
   					
 								 </div>
                </div>
				<div class="dropdown">
		    		<button class="dropbtn">Reports</button>
                               <div class="dropdown-content">
									 	<a href="#">daily mileage</a>
									
					 					<a href="#">requests for hiring</a>
										
					 					<a href="#">request for pickup/drop</a>
										
                                         <a href="#">routes</a>
   					 					<a href="#">RTA rules</a>
 				 				</div>
                 </div>
				   <button class="dropbtn">Query</button>
                   <button class="dropbtn">Sys Admin</button>
 		
	     </div>
	</div>
<br>
	
<br>
<form name="service1" onsubmit="return validateForm()" action="ServiceProvider"  method="POST">
	<div class="container">
	<div class="row">
		<div class="col-md-10">

		
  		<label for="spname">Service Provider Name: </label>
 		 <input type="text" name="spname">
 		 
		
		
	
	<label for="vdate">Valid from: </label>
  		<input type="date"  name="vdate" >
		
		</div>


		<div class="col-md-2">
                  <button class="btn">Upload PO</button>
		</div>
</div>
<br>

<div class="row">
		<div class="col-md-10 ">	
  		<label for="orderno"> Purchase  order  no . :&nbsp;&nbsp;&nbsp;&nbsp; </label>
		<input type="text" name="orderno">

	
 		
		 <label for="vudate">Valid upto: </label>
		<input type="date"  name="vudate" >
		
             
	
		</div>


		<div class="col-md-2">
                  <button class="btn">Upload owner<br>photo</button>
		</div>

     </div>
<p><br/></p>
<div class="row">
		<div class="col-sm-2">

<div class="formstyle" id="info">
 
  Hiring Mode: <select id="modes">
    <option value="0">Select Type</option>
    <option value="1">personal</option>
    <option value="2">Friend</option>
    </select>
 
<br>

  Vehicle Type: <select id="cars">
    <option value="0">Select Type</option>
    <option value="1">personal</option>
    <option value="2">Friend</option>
  
  </select>
<br>

 No. of vehicles:  <select id="cars1">
     <option value="0">Select Type</option>
    <option value="1">personal</option>
    <option value="2">Friend</option>
     </select>
  </div>
</div>
     
	<div class="col-sm-8">
	<div class="customdivblock">

<div class="formstyle" id="info">
<br>

  Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="spaddress"> 
<br>
<br/>

  Contact person:&nbsp;&nbsp;
  <input type="text" name="spcontact_person"><br>
<br>
<br/>

 Contact No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="usrtel">

<br><br>

  E-mail  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="service_email"><br>

<br/>

</div>
</div>
<br/>

      </div>
	</div>
</div>
</div>


<div class="container">

	<div class="row">
	
     <input type="submit" name="Add" value="Add">
 </div>

</div>	
</form>

<form method="post" action="UpdateServiceProvider">
		<table>
			<tr>
				<th>SNo</th>
				<th>Sp_Name</th>
				<th>PO_No</th>
				<th>Contact_No</th>
				<th>Update</th>
			</tr>
			<%
				try {
					Class.forName("org.postgresql.Driver");
					Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres","postgres");
					String query = "select * from sp_mst";
					Statement st = conn.createStatement();
					ResultSet rs = st.executeQuery(query);
					while (rs.next()) {
			%>
			<tr>
				<%
					int sp_sno = rs.getInt("sp_sno");
				%>
				<td><%=sp_sno%></td>
				<td><%=rs.getString("sp_name")%></td>
				<td><%=rs.getString("po_no")%></td>
				<td><%=rs.getInt("tel_no")%></td>


				<td><button type="submit" name="Submit1" value=<%=sp_sno%>
						style="background-color: #49743D; font-weight: bold; color: #ffffff;">Update</button></td>
			</tr>
			<%
				conn.close();
					}
				} catch (Exception e) {
					System.out.println("Exception");
				}
			%>
		</table>
	</form>
</body>
</html>
    