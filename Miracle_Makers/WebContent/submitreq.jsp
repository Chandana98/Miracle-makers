<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String pname,bg,padhaar,dd,hn,dc,kidney,heart,blood,pcity;
int patientage,bu;
String[] organs;
organs = request.getParameterValues("organ");
if (organs != null) 
{
   for (int i = 0; i < organs.length; i++) 
   {
      System.out.println (organs[i]);
   }
}

pname=request.getParameter("patientname");
bg=request.getParameter("bloodgrp");
patientage=Integer.parseInt(request.getParameter("patientage"));
padhaar=request.getParameter("patientaadhar");
bu=Integer.parseInt(request.getParameter("bloodunit"));
dd=request.getParameter("deldate");
hn=request.getParameter("hosname");
dc=request.getParameter("docname");
pcity=request.getParameter("pcity");
Connection con=null;int i=0;

try{

	Class.forName("org.postgresql.Driver").newInstance();
	Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sch", "postgres", "postgres");	    
	   if (organs[0] != null)
		   kidney="y";
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
		   
		   
		    PreparedStatement pst=conn.prepareStatement("insert into request_mst(patientname,bloodgrp,patientage,patientaadhar,bloodunit,deldate,hosname,docname,kidney,heart,blood,pcity) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			
	      pst.setString(1, pname);
	      pst.setString(2,bg);
	      pst.setInt(3,patientage);
	      pst.setString(4,padhaar);
	      pst.setInt(5,bu);
	      pst.setString(6,dd);
	      pst.setString(7,hn);
	      pst.setString(8,dc);
	      pst.setString(9,kidney);
	      pst.setString(10,heart);
	      pst.setString(11,blood);
	   //   pst.setString(7,daddress);
	     pst.setString(12,pcity);
	     // pst.setString(9,dpincode);
	    //  pst.setString(10,demail);
	     // pst.setString(11,dmobileno);
	      i=pst.executeUpdate();
	    
	   
	      if(i>0)
	    	  { System.out.println("in");
	    	  out.print("<script type= 'text/javascript'>alert('Registered Sucessfully' );</script>");
	  		request.getRequestDispatcher("requestform.jsp").include(request, response);
	      	
	      	out.print("\n<input type='button' value='Print' onclick='window.print()'>");
		}
		
		}
		catch(Exception e)
		{ 
		 System.out.println(e.getMessage());
		}


System.out.println(bg);
System.out.println(dd);
%>
</body>
</html>
