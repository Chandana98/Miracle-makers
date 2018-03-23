<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String model_brand = (String) request.getAttribute("model_brand");
	%>
	<%
		String model_modelentered = String.valueOf(request.getAttribute("model_modelentered"));
	%>
	<%
		String model_status = (String) request.getAttribute("model_status");
	%>
	<%
		String id_modelsno_temp = String.valueOf(request.getAttribute("id_modelsno"));
	%>
	<%
		int id_modelsno = Integer.parseInt(id_modelsno_temp);
	%>

	<form name="insert" action="AddVehicleModelUpdateQuery" method="POST">
		Vehicle Brand:
		<%
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB", "postgres",
					"admin");
			String queryd = "select * from brands_mst";
			Statement std = conn.createStatement();
			ResultSet rsd = std.executeQuery(queryd);
	%>
		<select name="vehi_brand_dpdwn" value=<%=model_brand%>>
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
		<br> <br> Vehicle Model: <input type="text"
			name="vehiclemodel" value=<%=model_modelentered%>> <br>
		<br> Active:
		<%
			if (model_status.equals("Y")) {
				out.write(
						"<input type=radio name=Active value=Y checked> Yes<input type=radio name=Active value=N> No<br>");
			} else {

				out.write(
						"<input type=radio name=Active value=Y > Yes<input type=radio name=Active value=N checked> No<br>");
			}
		%>
		<input type="text" style="visibility: hidden" name="id_modelsno" value=<%=id_modelsno%>>

		<input type="submit" name="Submit" value="Update"
			style="background-color: #49743D; font-weight: bold; color: #ffffff;">
	</form>
</body>
</html>