<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="customstylesservice.css" rel="stylesheet" />
    
     <style>
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
</head>
<body>
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
	</br>

	<div class="row">
            <div class="col-md-12">
		<div class="dropdown">
                   <button class="dropbtn">Vehicle</button>
                               <div class="dropdown-content">
					
                                         <a href="service_provider.html">service provider</a>
					<hr>
					 <a href="#">add vehicle</a>
						<hr>
					 <a href="#">daily log</a>
					<hr>
                                         <a href="#">routes</a>
					<hr>
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
					 <hr>
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
                                         <a href="#">routes</a>
					<hr>
   					 <a href="#">RTA rules</a>
 				 </div>
                   </div>


 		   <button class="dropbtn">Query</button>
                   <button class="dropbtn">Sys Admin</button>
 		
	     </div>
	</div>
</br>
</br>
</br>

	<%
		String sp_name = String.valueOf(request.getAttribute("sp_name"));
	%>
	<%
		String po_number = (String) request.getAttribute("po_number");
	%>
	<%
		String tel_no = (String) request.getAttribute("tel_no");
	%>
	<%
		String sp_sno_temp = String.valueOf(request.getAttribute("sp_sno"));
	%>
	<%
		int sp_sno = Integer.parseInt(sp_sno_temp);
	%>
	
<form action="UpdateQuerySP" method="POST">
		<div class="row">
		<div class="col-md-10">

		
  		<label for="spname">Service Provider Name: </label>
 		 <input type="text" name="sp_name" value=<%=sp_name %>>
 		 
		
		
	
	<label for="vdate">Valid from: </label>
  		<input type="date"  name="vdate" >
		
		</div>


		<div class="col-md-2">
                  <button class="btn">Upload PO</button>
		</div>
</div>
</br>

<div class="row">
		<div class="col-md-10 ">

		
	
  		<label for="orderno"> Purchase  order  no . :&nbsp;&nbsp;&nbsp;&nbsp; </label>
		<input type="text" name="po_number" value=<%=po_number %>>

	
 		
		 <label for="vudate">Valid upto: </label>
		<input type="date"  name="vudate" >
		
             
	
		</div>


		<div class="col-md-2">
                  <button class="btn">Upload owner</br>photo</button>
		</div>

     </div>
<p><br/></p>
<div class="row">
		<div class="col-sm-2">

<div class="formstyle" id="info">
 
  Hiring Mode: <select name="modes" class="form-control">
    <option value="-1">Select Type</option>
   
  </select>
<br>

  Vehicle Type: <select class="form-control" name="cars">
    <option value="-1">Select Type</option>
   
  </select>
<br>

 No. of vehicles:  <select name="cars">
     <option value="-1">Select Type</option>
   

  </select>
  </div>
</div>
     
	<div class="col-sm-8">
	<div class="customdivblock">

<div class="formstyle" id="info">
<br>

  Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="spaddress"> 

<br/>

  Contact person:&nbsp;&nbsp;
  <input type="text" name="spcontact_person"><br>

<br/>

 Contact No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="number" name="tel_no" value=<%=tel_no %>>

<br/>

  E-mail  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="service_email"><br>

<br/>

</div>
</div>
<br/>

      </div>
	</div>
</div>

		
		<input type="text" style="visibility: hidden" name="sp_sno" value=<%=sp_sno%>>

		<input type="submit" name="Submit" value="Update"
			style="background-color: #49743D; font-weight: bold; color: #ffffff;">
</form>

</body>
</html>