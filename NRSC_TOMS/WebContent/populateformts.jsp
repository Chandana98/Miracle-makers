<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String t_active =(String)request.getAttribute("ts_status");%>
<%int t_sno=Integer.parseInt(String.valueOf(request.getAttribute("ts_sno"))); %>

<%String t_id=String.valueOf(request.getAttribute("ts_id")); %>

<%String t_type=String.valueOf(request.getAttribute("ts_slabtype")); %>

<%int t_extrakm=Integer.parseInt(String.valueOf(request.getAttribute("ts_extrakm"))); %>

<%int t_slabkm=Integer.parseInt(String.valueOf(request.getAttribute("ts_slabkm"))); %>

<%int t_duration=Integer.parseInt(String.valueOf(request.getAttribute("ts_duration"))); %>

<%int t_slabamt=Integer.parseInt(String.valueOf(request.getAttribute("ts_slabamt"))); %>

<%int t_extrahr=Integer.parseInt(String.valueOf(request.getAttribute("ts_extrahr"))); %>

<%int t_driverda=Integer.parseInt(String.valueOf(request.getAttribute("ts_driverda"))); %>
<%String t_validfrom=String.valueOf(request.getAttribute("ts_validfrom")); %>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>TARIFF SLABS</title>

    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="tariffslabs.css" rel="stylesheet" />
    <!-- Bootstrap -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   <link rel="stylesheet" href="date1.css">
  <script src="date1.js"></script>
  <script src="date2.js"></script>
  <script>
   $(function() {
            $( "#datepicker" ).datepicker({
                showOn: "button",
                buttonText: "Date"
            });
        });
  </script>

  <script>
   $(function() {
            $( "#datepicker2" ).datepicker({
                showOn: "button",
                buttonText: "Date"
            });
        });
  </script>
  <style>
  
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}
div.dbtab {
    height: 140px;
    overflow: auto;
}
    

tr:nth-child(even) {background-color: #3498DB;}
tr:nth-child(odd) {background-color: #85C1E9;}
  
  
  </style>
    

</head>
  

 <body>
    


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

      
<div class="container">
	<div class="row">
		<div class="col-md-1" img-responsive><img src="logo.png" alt="logo" width="60" height="60"></div>
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
					
                                         <a href="#">service provider</a>
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


<p><br/></p>

</div>
</div>


<form action="UpdateQueryts" method="POST">
<div class="container">
<div class="row">
     
	<div class="col-sm-8">
	<div class="customdivblock">
	
<div class="formstyle" id="info">
<div class="center">
</br/>
  Slab Id :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="Slab_Id" value=<%=t_id%>> 
<br/>
  Slab Duration:&nbsp;&nbsp;
  <input type="number" name="Slab_Duration" value=<%=t_duration%>><br>
<br/>
 Slab Km:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="number" name="Slab_Km" value=<%=t_slabkm %>>
<br/>
 Slab Amt:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="number" name="Slab_Amt" value=<%=t_slabamt%>><br>
<br/>

  Slab Type: 
			<%
			try {
				Class.forName("org.postgresql.Driver").newInstance();
				Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "postgres");
				String query_dropdown = "select * from sample";
				Statement std = conn.createStatement();
				ResultSet rsd = std.executeQuery(query_dropdown);
			%>
				<select name="Slab_Type" value=<%=t_type %>>
				<option><%--select--%></option>
		        <%  while(rsd.next()){ %>
					<option><%=rsd.getString(10)%></option>
				<%
				}
				%>
				</select>
			<%
				conn.close();
        		}
        	catch(Exception e)
        	{
             	out.println("wrong entry"+e);
        	}
			%>
          
<br><br>

<br/>
</div>
</div>
   <br/>

 </div>
</div>
</div>

  <div class="container">
      <div class="Right_Attributes_Tariff">
       
        <div class="row">
           Valid From:&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="text" name="Valid_From" id="datepicker" >
        </div> 
        <br> 
         <div class="row">
           Valid Upto:&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="text" name="Valid_Upto" id="datepicker2">
        </div>  
         <br/>
        <div class="row">
           Extra Km:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="number" name="Extra_Km" value=<%=t_extrakm%>>
        </div> 
    <br/>

    <div class="row">
           Extra Hour:&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="number" name="Extra_Hr" value=<%=t_extrahr%>>
        </div> 
    <br/>
   <br/>
<div class="row">
           Driver DA:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="number" name="Driver_Da" value=<%=t_driverda%>>
        </div> 
    <br/>


   </div>
  </div>
</div>
</div>

</div>
<div class="container">
 <div class="center">
   <br>
    Active :
   
   
   <%if(t_active.equals("Y")){ 
 out.write("<input type=radio name=Active value=Y checked> Yes<input type=radio name=Active value=N> No<br>");
 } 
  else {
	
	  out.write("<input type=radio name=Active value=Y > Yes<input type=radio name=Active value=N checked> No<br>");
  } %>
  <input type="text" style="visibility:hidden" name="t_sno" value=<%=t_sno%>>

 </div>
</div>
<br/>
<br/>
<br/>
<div class="container">
   <div class="row">
	<center>
         <input type="submit" name="Add" value="Add">
	</center>
  </div>
</div>	
</form>

</body>
</html>