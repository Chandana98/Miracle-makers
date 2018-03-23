<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String vehname=(String)request.getAttribute("vehname");%>
<%String num=String.valueOf(request.getAttribute("vehsno")); %>
<% int vehsno=Integer.parseInt(num);%>
<%String status=(String)request.getAttribute("status");%>

<form name="insert" action="updatequeryvehtype" method="POST" >
Vehicle Type:
  <input type="text" name="vehicletype" value=<%=vehname %>>

  <br>
  <br>
Active:
<%if(status.equals("Y")){ 
 out.write("<input type=radio name=Active value=Y checked> Yes<input type=radio name=Active value=N> No<br>");
 } 
  else {
	
	  out.write("<input type=radio name=Active value=Y > Yes<input type=radio name=Active value=N checked> No<br>");
  } %>
  <input type="text" style="visibility:hidden" name="sno" value=<%=vehsno%>>

<input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;">
</form>
</body>
</html>