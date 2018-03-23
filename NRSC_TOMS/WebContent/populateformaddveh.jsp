<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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


</style>

</head>
<body>
<div class="container">

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
                                         <a href="service_provider.html">service provider</a><hr>
		  								 <a href="Add_Vehicle.jsp">add vehicle</a><hr>
		  								 <a href="vehicle_log.jsp">daily log</a><hr>
		  								 <a href="VehicleAddModelJSP.jsp">add vehicle model</a>
					 					 <a href="vehbrand.jsp">add vehicle brand</a>
					  					 <a href="tabledata.jsp">add vehicle type</a>
		  								 <a href="#">routes</a><hr>	 
                                         <a href="tslabs.jsp">tariff slabs</a>	 		
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
									 <a href="#">diesel prices</a><hr>
					 					<a href="#">fuel bills</a>
					 					<hr>
					 					<a href="#">defect reporting</a>
					  					<hr>
                                         <a href="#">defect repair approval</a>
   					
 								 </div>
                </div>
				<div class="dropdown">
		    		<button class="dropbtn">Reports</button>
                               <div class="dropdown-content">
									 	<a href="#">daily mileage</a>
										<hr>
					 					<a href="#">requests for hiring</a>
										<hr>
					 					<a href="#">request for pickup/drop</a>
										<hr>
                                         <a href="#">routes</a><hr>
   					 					<a href="#">RTA rules</a>
 				 				</div>
                 </div>
				   <button class="dropbtn">Query</button>
                   <button class="dropbtn">Sys Admin</button>
 		
	     </div>
	</div>
	</div>
	
	<div class="container">

	<%
		String serpro = (String) request.getAttribute("serpro");
	%>
	<%
		String vehregnno = (String)request.getAttribute("vehregnno");
	String active = (String) request.getAttribute("active");
	%>
	<%
		String drivname = (String) request.getAttribute("drivname");
	%>
	<%
		String id_vehsno_temp = String.valueOf(request.getAttribute("id_vehsno"));
	%>
	<%
		int id_vehsno = Integer.parseInt(id_vehsno_temp);
	%>
<b> &nbsp;&nbsp;Add Vehicle &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
	<form name="insert" action="updatequeryaddveh" method="POST">
		<%
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB", "postgres",
					"admin");
			String queryd = "select DISTINCT sp_name from sp_mst";
			Statement std = conn.createStatement();
			ResultSet rsd = std.executeQuery(queryd);
	%>
	<b>Ser. Provider:</b>
		<select name="vehi_sp_dpdwn" value=<%=serpro%>>
			<option> <%=serpro%> </option>
			<%	while (rsd.next()) {
			%>
			<option><%=rsd.getString(1)%></option>
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
			
			<br> <br> Registration No <input type="text"
			name="vehreg" value=<%=vehregnno%>> <br>
			
			<br> <br>Driver Name : <input type="text"
			name="driname" value=<%=drivname%>> <br>
			
		<br> Active:
		<%
			if (active.equals("Y")) {
				out.write(
						"<input type=radio name=Active value=Y checked> Yes<input type=radio name=Active value=N> No<br>");
			} else {

				out.write(
						"<input type=radio name=Active value=Y > Yes<input type=radio name=Active value=N checked> No<br>");
			}
		%>
		<input type="text" style="visibility: hidden" name="id_vehsno" value=<%=id_vehsno%>>

		<input type="submit" name="Submit" value="Update"
			style="background-color: #49743D; font-weight: bold; color: #ffffff;">
	</form>
	</div>
</body>
</html>