package database;
import java.sql.Connection;
import java.sql.DriverManager;
public class ConnectionFactory {
	public static Connection con;
	
	   public static Connection getConnection()
	   {
		     try {
		    	 Class.forName("org.postgresql.Driver");	
					con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","postgres");
			
		     
		     } catch (Exception e) {
				 
				e.printStackTrace();
			}
		     
		    return con;
	   }

}