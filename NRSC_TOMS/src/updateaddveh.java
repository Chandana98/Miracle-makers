

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
@WebServlet("/updateaddveh")
public class updateaddveh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateaddveh() {
        super();
        // TODO Auto-generated constructor stub
    }

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
			   String reply=(String) request.getParameter("submit1234");
			   System.out.println("update page ");
			   int id_vehsno=Integer.parseInt(reply);
			   Class.forName("org.postgresql.Driver").newInstance();
			   Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5433/TOMS_DB?user=postgres&password=admin");
			   String query = "select DISTINCT serpro,vehregnno,drivname,active from veh_mst where vehsno=?";
			
			   PreparedStatement st = conn.prepareStatement(query);
			   st.setInt(1, id_vehsno);
			   ResultSet rs = st.executeQuery();
			  if(rs.next())
			  {
				 
				  String serpro=rs.getString("serpro"); 
				  String vehregnno=rs.getString("vehregnno");
				  String drivname=rs.getString("drivname");
				  String active=rs.getString("active");
				  request.setAttribute("id_vehsno", id_vehsno);
				  request.setAttribute("serpro", serpro);
			      request.setAttribute("vehregnno", vehregnno);
			      System.out.println(vehregnno);
				  request.setAttribute("drivname", drivname);
				  request.setAttribute("active", active);
				  request.getRequestDispatcher("populateformaddveh.jsp").include(request, response);
				  
			
			  }
	}
catch(Exception e)
		{
	     System.out.println(e.getMessage());
		}
	
	}

}
