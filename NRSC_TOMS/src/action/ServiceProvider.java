package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ServiceProviderbean;
import dao.ServiceProviderDao;

/**
 * Servlet implementation class ServiceProvider
 */
@WebServlet("/ServiceProvider")






public class ServiceProvider extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public int sp_phno=321;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");	
		  try {
		   PrintWriter out= response.getWriter();
		    String service_name=request.getParameter("spname");
		    String valid_from=request.getParameter("vdate");
			String order_number=request.getParameter("orderno");
			String valid_upto=request.getParameter("vudate");
			String sp_address=request.getParameter("spaddress");
			String sp_contact=request.getParameter("spcontact_person");
	      
	        	sp_phno=Integer.parseInt(request.getParameter("usrtel"));
	        	String sp_email=request.getParameter("service_email");
	        	ServiceProviderbean sp = new ServiceProviderbean(service_name,order_number,valid_from,valid_upto,sp_address,sp_contact,sp_phno,sp_email);
	       
			
			
			//out.println("helloooo");
			
	
	
	boolean status = true;
	try {
		status = ServiceProviderDao.insertService(sp);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	if(status)
	{
		out.print("<script type= 'text/javascript'>alert('Registered Sucessfully' );</script>");
		request.getRequestDispatcher("service.jsp").include(request, response);
    	out.print("\n<input type='button' value='Print' onclick='window.print()'>");
    	
	}
	else
	{
		 out.println("<script> alert('Invalid Details');</script>");
         request.getRequestDispatcher("service.jsp").include(request, response);
	}
		  }
		  catch(NumberFormatException e)
		  {
			  System.out.println("Number Exception");
		  }
}
}