

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Update
 */
@WebServlet("/Updatevehlog")
public class Updatevehlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");	
		try {
			   PrintWriter out= response.getWriter();
			   String reply=(String) request.getParameter("submit");
			   int id=Integer.parseInt(reply);
			   Class.forName("org.postgresql.Driver").newInstance();
			   Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB?user=postgres&password=admin");
			   String query = "select * from veh_log_book where log_sno=?";
			
			   PreparedStatement st = conn.prepareStatement(query);
			   st.setInt(1,id);
			   ResultSet rs = st.executeQuery();
			  if(rs.next())
			  {
				  int opgkm=rs.getInt("opg_km");
				  int clgkm=rs.getInt("clg_km");
				  int claimkm=rs.getInt("claim_km");
				  int lesskm=rs.getInt("less_km");
				  int actualkm=rs.getInt("actual_km");
				  int logsno=rs.getInt("log_sno");
				  int vehid=rs.getInt("veh_id");
				  

				  request.setAttribute("opg.km", opgkm);
				  request.setAttribute("clg.km", clgkm);
				  request.setAttribute("claim.km", claimkm);
				  request.setAttribute("less.km", lesskm);
				  request.setAttribute("actual.km", actualkm);
				  request.setAttribute("log.sno", logsno);
				  request.setAttribute("Veh.id", vehid);

				  request.getRequestDispatcher("populateformvehlog.jsp").include(request, response);
				  
			  }
	}
catch(Exception e)
		{
	     System.out.println(e.getMessage());
		}
	
	}

}
