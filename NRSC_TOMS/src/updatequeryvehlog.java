

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.ConnectionFactory;

/**
 * Servlet implementation class updatequery
 */
@WebServlet("/updatequeryvehlog")
public class updatequeryvehlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");	
		  
			  try {
				   PrintWriter out= response.getWriter();
					int opgkm=Integer.parseInt(request.getParameter("Opg.km"));
					int clgkm=Integer.parseInt(request.getParameter("Clg.km"));
					int claimkm=Integer.parseInt(request.getParameter("Claim.km"));
					int lesskm=Integer.parseInt(request.getParameter("Less.km"));
					int actualkm=Integer.parseInt(request.getParameter("Actual.km"));
					int logsno=Integer.parseInt(request.getParameter("sno"));
					int vehid=Integer.parseInt(request.getParameter("Veh.ID"));
					Connection con=ConnectionFactory.getConnection();
		      PreparedStatement pst=con.prepareStatement("update veh_log_book set opg_km=?,clg_km=?,claim_km=?,less_km=?,actual_km=?,veh_id=? where log_sno=?");
		      System.out.println("connection insertion"+logsno); 
		      try {
		      pst.setInt(1, opgkm );
		      pst.setInt(2, clgkm );
		      pst.setInt(3, claimkm );
		      pst.setInt(4, lesskm );
		      pst.setInt(5, actualkm );
		      pst.setInt(6, logsno );
		      pst.setInt(7, vehid);
		      }catch(Exception e)
		      {
		    	  System.out.println(e.getMessage());
		      }
		      int i= pst.executeUpdate();
				if(i>0)
				{	 
					out.print("<script type= 'text/javascript'>alert('updated Sucessfully' );</script>");
					request.getRequestDispatcher("vehicle_log.jsp").include(request, response);
			    	out.print("\n<input type='button' value='Print' onclick='window.print()'>");
				}
				else
				{
					out.print("<script type= 'text/javascript'>alert('updated Sucessfully' );</script>");
					request.getRequestDispatcher("vehicle_log.jsp").include(request, response);
			    	out.print("\n<input type='button' value='Print' onclick='window.print()'>");
				}
				
			
			  }catch(Exception e) {
				  System.out.println(e.getMessage());
			  }
	}
}
