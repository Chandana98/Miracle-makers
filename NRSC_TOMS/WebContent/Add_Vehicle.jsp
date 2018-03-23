<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Vehicle</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="add_veh_customstyles.css" rel="stylesheet" />
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

tr:nth-child(even) {
	background-color: #3498DB;
}

tr:nth-child(odd) {
	background-color: #85C1E9;
}
div.dbtab {
	height: 180px;
	overflow: auto;
}



</style>
</head>
<body>
<div class="container">
<form action="serve" method="post">
 <div class="row">
   <div class="col-md-1" img-responsive><img src="nrsc.png" alt="logo" width="90" height="70" border="2"></div>
	  <div class="col-md-9">
			<div class="customdiv"><b>National Remote Sensing Center<br>Transport Operations Management System</b></div>
	  </div>
		<div class="col-md-1" img-responsive><img src="photo.png" alt="Photo" width="70" height="70"></div>
		   <div class="col-md-1">
			<button class="btn btn-primary btn-md">&nbsp;&nbsp;Logout&nbsp;&nbsp;</button>
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

<center><h3><b>Add Vehicle</b></h3></center>
<br>
<br>
<div class="col-xs-12">
<div class="formstyle" id="info">
<b> Ser. Prov:</b>
		<%
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB", "postgres","admin");
			//Connection conn=ConnectionFactory.getConnection();
			String queryd = "select * from sp_mst";
			Statement std = conn.createStatement();
			ResultSet rsd = std.executeQuery(queryd);
	%>
		<select name="vehi_sp_dpdwn" value="">
			<%

			while (rsd.next()) {
		%>
			<option><%=rsd.getString(2)%></option>
			<%
			}
			%>
		</select>
		<%
			conn.close();
			} catch (Exception e) {
				out.println("wrong entry" + e);
			}
		%>
		

<br><br>
</div>
</div>  
<br>
<div class="row">
<div class="col-xs-4">
<div class="customdivblock1">
<div class="formstyle" id="info">
<br>
<div class="col-sm-8">
 	<div class="form-group">
      <label for="vh reg.">Veh. Regdn. No.:</label>
      <input type="text" class="form-control" id="vh reg." name="vhreg">
    </div>
<br/>
<b> &nbsp;&nbsp;Vehicle Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
		<%
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB", "postgres",
					"admin");
			String queryd = "select * from vehicle_types_mst";
			Statement std = conn.createStatement();
			ResultSet rsd = std.executeQuery(queryd);
	%>
		<select name="vehi_type_dpdwn" value="">
		
			<%
				while (rsd.next()) {
			%>
			<option><%=rsd.getString(2)%></option>
			<%
				}
			%>
		</select>
		<%
			conn.close();
			} catch (Exception e) {
				out.println("wrong entry" + e);
			}
		%>
<br><br>
 <b> &nbsp;&nbsp;Brand: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
		<%
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB", "postgres","admin");
			String queryd = "select * from brands_mst";
			Statement std = conn.createStatement();
			ResultSet rsd = std.executeQuery(queryd);
	%>
		<select name="vehi_brand_dpdwn" value="">
		
			<%
				while (rsd.next()) {
			%>
			<option><%=rsd.getString(2)%></option>
			<%
				}
			%>
		</select>
		<%
			conn.close();
			} catch (Exception e) {
				out.println("wrong entry" + e);
			}
		%>
		<br><br>
 <b>&nbsp;&nbsp;Model:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
		<%
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB", "postgres",
					"admin");
			String queryd = "select * from models_mst";
			Statement std = conn.createStatement();
			ResultSet rsd = std.executeQuery(queryd);
	%>
		<select name="vehi_model_dpdwn" value="">
		
			<%
				while (rsd.next()) {
			%>
			<option><%=rsd.getString(2)%></option>
			<%
				}
			%>
		</select>
		<%
			conn.close();
			} catch (Exception e) {
				out.println("wrong entry" + e);
			}
		%>
		

<br><br>

<b> &nbsp;&nbsp;Slab:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
		<%
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB", "postgres",
					"admin");
			String queryd = "select * from slabs_mst";
			Statement std = conn.createStatement();
			ResultSet rsd = std.executeQuery(queryd);
	%>
		<select name="vehi_slabs_dpdwn" value="">
		
			<%
				while (rsd.next()) {
			%>
			<option><%=rsd.getString(10)%></option>
			<%
				}
			%>
		</select>
		<%
			conn.close();
			} catch (Exception e) {
				out.println("wrong entry" + e);
			}
		%>
		<br><br><br>
<div class="col-sm-2" style="float: left;">
<button type="button" class="btn btn-sm btn-primary" name="vehphoto">Upload Veh. photo</button>
</div>
<div class="col-sm-2" style="float: right;">
<button type="button" class="btn btn-sm  btn-primary" name="vehrc">&nbsp;Upload Veh. RC&nbsp;</button>
<br>
</div>
</div>
</div>
</div>
</div>
<div class="customdivblock2">
<div class="formstyle" id="info">
<br>
<div class="col-sm-11">
  <div class="form-inline">
<div class="form-group">
      <label for="driver name">Driver Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
      <input type="text" class="form-control" id="dri name" name="driname">
    </div>
    <br><br>
    <div class="form-group">
      <label for="mob no.">Mobile No.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
      <input type="text" class="form-control" id="mob no." name="mobno">
    </div>
    <br><br>
    <div class="form-group">
      <label for="adhr no.">Aadhar No.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
      <input type="text" class="form-control" id="adhr no." name="adhrno">
    </div>
<br>
<br>
<br>
    <div class="form-group">
      <label for="alt dr">Alt. Driver:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
      <input type="text" class="form-control" id="alt dr" name="altdr">
    </div><br>
<br>
    <div class="form-group">
      <label for="alt drmob">Alt. Driver Mob.:&nbsp;</label>
      <input type="text" class="form-control" id="alt drmob" name="altdrmob">
    </div>
<br>
<br><br>
<div class="col-xs-4" style="float: right;">
<button type="button" class="btn btn-sm  btn-primary" name="drivphoto">&nbsp;Upload Driver photo&nbsp;&nbsp;&nbsp;</button>
</div>
<div class="col-xs-5" style="float: right;">
<button type="button" class="btn btn-sm  btn-primary" name="drivlicence">Upload Driver License</button>
<br>
<br>
</div>

</div>
</div>
</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<div class="container">
			<div class="center">
				<br> Active : <input type="radio" name="Active" value="Y"
					checked>Yes <input type="radio" name="Active" value="N">No

			</div>
		</div>
		</div>	

<div class="container">


 <center>
		<input type="submit" value="Add">
			 
   </center>
</div>        
<br>
</form>
<div class="col-md-10 col-md-offset-1" >
<form method="post" action="updateaddveh">
<div class="dbtab">
		<table class="table table-stripped">
			<tr>
				<th>SNo</th>
				<th>Ser. Pro.</th>
				<th>Veh. Regn. No.</th>
				<th>Driv Name</th>
				<th>Update</th>
			</tr>
			<%
				try {
					Class.forName("org.postgresql.Driver").newInstance();
					Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB", "postgres",
							"admin");
					String query = "select vehsno,serpro,vehregnno,drivname from veh_mst order by vehsno";
					Statement st = conn.createStatement();
					ResultSet rs = st.executeQuery(query);
					while (rs.next()) {
			%>
			<tr>
				<%
					int idsno = rs.getInt("vehsno");
				%>
				<td><%=idsno%></td>
				<td><%=rs.getString("serpro")%></td>
				<td><%=rs.getString("vehregnno")%></td>
				<td><%=rs.getString("drivname")%></td>


				<td><button type="submit" name="submit1234" value=<%=idsno%>
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
		
		</div>
	</form>
	<br><br><br>
</div>
</body>
</html>