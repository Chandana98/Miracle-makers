<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<link href="vehlogcustomstyles.css" rel="stylesheet" />
	
	<title>Insert title here</title>
  <script>
function actual() {
    var result=0;
       var Opg_km = document.getElementById('id1').value;
       var Clg_km = document.getElementById('id2').value;
    if ( Opg_km!="" && Clg_km ==""){
        result = parseInt(Opg_km);
    }else if( Opg_km== "" && Clg_km != ""){
        result= parseInt(Clg_km);
    }else if (Clg_km!= "" && Opg_km != ""){
        result = parseInt(Clg_km) - parseInt(Opg_km);
    }
       if (!isNaN(result)) {
           document.getElementById('id5').value = result;
       }
   }
</script>
  <script>
function less() {
    var result=0;
       var Actual_km = document.getElementById('id5').value;
       var Claim_km = document.getElementById('id3').value;
    if ( Actual_km!="" && Claim_km ==""){
        result = parseInt(Actual_km);
    }else if( Actual_km== "" && Claim_km != ""){
        result= parseInt(Clg_km);
    }else if (Claim_km!= "" && Actual_km != ""){
        result = parseInt(Claim_km) - parseInt(Actual_km);
    }
       if (!isNaN(result)) {
           document.getElementById('id4').value = result;
       }
   }
</script>
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
			<button class="btn"><a href="login_page.php">Logout</a></button>
		</div>
	</div>
	

		<div class="row">
            	<div class="col-xs-12">
		<div class="dropdown">
                   <button class="dropbtn">Vehicle</button>
                               <div class="dropdown-content">
					
                                         <a href="#">service provider</a>
					
					 <a href="Add_Vehicle.php">add vehicle</a>
						
					 <a href="#">daily log</a>
					
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
<br>

<%String num=String.valueOf(request.getAttribute("log.sno")); %>
<%int id=Integer.parseInt(num);%>
<%String num1=String.valueOf(request.getAttribute("opg.km")); %>
<%int id1=Integer.parseInt(num1);%>
<%String num2=String.valueOf(request.getAttribute("clg.km")); %>
<%int id2=Integer.parseInt(num2);%>
<%String num3=String.valueOf(request.getAttribute("claim.km")); %>
<%int id3=Integer.parseInt(num3);%>
<%String num4=String.valueOf(request.getAttribute("less.km")); %>
<%int id4=Integer.parseInt(num4);%>
<%String num5=String.valueOf(request.getAttribute("actual.km")); %>
<%int id5=Integer.parseInt(num5);%>
<%String num6=String.valueOf(request.getAttribute("Veh.id")); %>
<%int id6=Integer.parseInt(num6);%>
<form name="insert" action="updatequeryvehlog" method="POST" >
Vehicle ID:<select name="Veh.ID" id="id6">
  <option value="12">12</option>
  <option value="24">24</option>
  <option value="34">34</option>
  <option value="43">43</option>
</select><br>

 Opg km: <input type="text" name="Opg.km" value=<%=id1 %> id="id1" onkeyup="actual();"><br><br>
 Clg km:<input type="text" name="Clg.km" value=<%=id2 %> id="id2"onkeyup="actual();"><br><br>
 Claim km:<input type="text" name="Claim.km" value=<%=id3 %> id="id3"onkeyup="less();"><br><br>
 Less km:<input type="text" name="Less.km" value=<%=id4 %> id="id4"><br><br>
 Actual km:<input type="text" name="Actual.km" value=<%=id5 %> id="id5" onkeyup="less();"><br><br>
  <input type="text" style="visibility:hidden" name="sno" value=<%=id%>>
  
  <br>
  <br>

<input type="submit" name="submit" value="Add" style="background-color:#49743D;font-weight:bold;color:#ffffff;">
</form>
</body>
</html>