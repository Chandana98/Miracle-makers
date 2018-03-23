<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

 <form action="download_card.jsp" method="post">
 <p> YOU ARE REGISTERED SUCESSFULLY! </p>
 <p id="demo">
    		  <input type="hidden" value="<%=request.getParameter("emailid")%>" name="demail">
    		  <%=request.getParameter("emailid")%></p>
<h2>GET YOUR CARD!</h2>
<a href="http://localhost:8080/sch/download_card.jsp" target="_blank">Click here to download your premium membership card</a>
<input type="submit">
</form>

<%String kidney,heart,blood;
String dstate=request.getParameter("state");
String dfname=request.getParameter("fname");
String dlname=request.getParameter("lname");
String ddob=request.getParameter("dob");
String dsex=request.getParameter("sex");
String dblood=request.getParameter("bloodgrp");
String daddress=request.getParameter("address");
String dcity=request.getParameter("city");
String dpincode=request.getParameter("pincode");
String demail=request.getParameter("emailid");
String dmobileno=request.getParameter("mobileno");
String[] organs;
organs = request.getParameterValues("organ");

int i=0;

try{ 

	Class.forName("org.postgresql.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sch", "postgres", "postgres");
	 System.out.println("reading11");
	  if (organs[0] != null)
	  {  kidney="y";System.out.println("reading12");
	  } 
	  else
		   kidney="n";
	   if (organs[0] != null)
		   heart="y";
	   else
		   heart="n";
	   if (organs[0] != null)
		   blood="y";
	   else
		   blood="n";
		  //PreparedStatement pst=conn.prepareStatement("insert into donor_mst(state,firstname,lastname) values(?,?,?)");
		  PreparedStatement pst=conn.prepareStatement("insert into donor_mst(state,firstname,lastname,dob,sex,bloodgrp,address,city,pincode,email,phno,kidney,heart,blood) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		    System.out.println("reading22");
	      pst.setString(1, dstate);
	      pst.setString(2,dfname);
	      pst.setString(3,dlname); 
	      
	     pst.setString(4,ddob);
	      pst.setString(5,dsex);
	      pst.setString(6,dblood);
	      pst.setString(7,daddress);
	      pst.setString(8,dcity);
	      pst.setString(9,dpincode);
	      pst.setString(10,demail);
	      pst.setString(11,dmobileno);
	      pst.setString(12,kidney);
	      pst.setString(13,heart);
	      pst.setString(14,blood);
	      
	      i=pst.executeUpdate(); 
	     
if(i>0)
	    	  { System.out.println("in");
	    	  out.print("<script type= 'text/javascript'>alert('Registered Sucessfully' );</script>");
	  		request.getRequestDispatcher("index6.jsp").include(request, response);
	      	
	      
		}
		
		}
		catch(Exception e)
		{ 
		 System.out.println(e.getMessage());
		}

%>

</body>
</html>