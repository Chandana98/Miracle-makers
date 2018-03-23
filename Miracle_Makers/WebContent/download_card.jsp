<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Downloading..</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	width: 40%;
	margin-top: 20px;
	margin-bottom: 20px;
	margin-right: 20px;
	margin-left: 20px;
	background-color: #F0F8FF;
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.container {
	padding: 2px 16px;
}

img {
	margin-top: 10px;
	margin-left: 30px;
	float:left;
}
h1 {
	margin-top: 25px;
	float:center;
	 color: #FF5050;
}

h3 {
	margin-top: 25px;
	color: #000066;
}

input[type=text] {
	width: 250px;
	padding: 10px 10px;
	box-sizing: border-box;
	border: none;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
	margin-left: 5px;
	background-color: #D8DFE6;
	color: black;
}

textarea {
	width: 250px;
	padding: 10px 10px;
	box-sizing: border-box;
	border: none;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
	margin-left: 5px;
	background-color: #D8DFE6;
	color: black;
}
</style>

</head>
<body>
	<div class="card">
		<img src="icon.png" class="w3-circle" 
				height=75px width=75px>
		<center>
			<h1>
				<b>Miracle Donors</b>
			</h1>
			
			<h3>
				<b>Premium Membership</b>
			</h3>
			<p>
			
			</p>
		</center>
		<%	System.out.println("hi");
		
		String email=request.getParameter("demail");
		System.out.println(email);
		Class.forName("org.postgresql.Driver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sch", "postgres", "postgres");
	       
	
	      PreparedStatement pst=conn.prepareStatement("select * from donor_mst where email=?");
	      pst.setString(1,email);
	     ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
			%>
		<div class="container">
			Name:
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" name="personname" value="<%=rs.getString("lastname")%>"> <br>
			Blood Group: &nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
				name="bloodgroup" value="<%=rs.getString("bloodgrp")%>"> <br> Phone Number:
			&nbsp; <input type="text" name="phonenumber" value="9704140676">
			<br> Address:
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 <textarea name="address"><%=rs.getString("address")%></textarea>
			<br>
			<%--<input type="text" name="address" value="<%=rs.getString("address")%>"> <br> --%>
			
			Signature of Issuing Authority: ______________________
			<%
		}
			%>
			<br> <br>
		</div>
	</div>
	<input type="button" value="Print this page" onClick="window.print()">
</body>
</html>