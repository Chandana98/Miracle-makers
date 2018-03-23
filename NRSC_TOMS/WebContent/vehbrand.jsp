<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="customstyles.css" rel="stylesheet" />
<style>
div.dbtab
{height: 140px;
	overflow: auto;
}
</style>
  </head>
  <body>
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script> -->
<div class="container">
	<div class="row">
		<div class="col-md-1" img-responsive><img src="nrsc.png" alt="logo" width="70" height="70" border="2"></div>
		<div class="col-md-9">
			<div class="customdiv"><b>National Remote Sensing Centre<br>Transport Operations Management System</b></div>
		</div>
		<div class="col-md-1" img-responsive><img src="photo.png" alt="Photo" width="70" height="70"></div>
		<div class="col-md-1">
			<button class="btn"><a href="Login.html">Logout</a></button>
		</div>
	</div>
	</br>

<head><style>
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
</style></head>

<script>
function validateForm() {
    var x = document.forms["insert"]["vehiclebrand"].value;
    if (x == "") {
        alert("Name must be filled out");
 
        return false;
    }
    if((document.insert.Active[0].checked==false)&&(document.insert.Active[1].checked==false))
 {
  document.insert.Active[0].focus();
  alert("check the radio button");
  return false;
 }
 else 
    return true;

}
</script>
</head>
<body>
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
					  <a href="vehicletypes.jsp">add vehicle type</a>
					<a href="#">routes</a>
					<a href="#">tarrif slabs</a>
 				 </div>
                    </div>
    		<div class="dropdown">
		   <button class="dropbtn">Operations</button>
					
                               <div class="dropdown-content">
                                         <a href="#">vehicle request</a>
				         <hr>
					 <a href="#">approval</a>
						<hr>
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
<h2 align="center"> Vehicle Brands </h2>
<form name="insert" action="brand"  onsubmit="return validateForm()"  method="POST" >
<center>
Vehicle Brand:
  <input type="text" name="vehiclebrand" value="">
  <br>
  <br>
Active:
 <input type="radio" name="Active" value="Y"> Yes
 <input type="radio" name="Active" value="N"> No<br>
 <input type="submit" name="Add" value="Add">
</center>
</form>

<form method="post" action="updatevehbrand">
<div class="dbtab">
<table>
<tr><th>sno</th><th>brand</th><th>active</th><th>Update</th></tr>
<%
try {
Class.forName("org.postgresql.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB?user=postgres&password=admin");
String query = "select * from brands_mst order by brand_sno";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
int idsno;
while(rs.next()){
%>
<tr>
<%  idsno=rs.getInt("brand_sno");%>
<td><%=idsno %></td>
<td><%=rs.getString("brand")%></td>
<td><%=rs.getString("active")%></td>


<td><button type="submit" name="submitvehbrand" value=<%=idsno %> style="background-color:#49743D;font-weight:bold;color:#ffffff;">Update</button></td>

</tr>
<%
}
}
catch(Exception e){System.out.println("Exception");}
%>
</table>
</div>
</form>
</body>