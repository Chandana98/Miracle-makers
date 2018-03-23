package bean;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddVehicleBean 
{
	String Ser_Pro,Veh_Regn_No,Veh_Type,Veh_Brand,Veh_Model,Veh_slab,Veh_Photo_Upload,Veh_RC_Upload,Driv_Name,Driv_Aadhar,Alt_Driv_Name,Driv_Photo_Upload,Driv_Licence_Upload,Driv_Mobile_No,Alt_Driv_Mobile_No,Active;

	public AddVehicleBean(String Ser_Pro,String Veh_Regn_No,String Veh_Type,String Veh_Brand,String Veh_Model,String Veh_slab,String Veh_Photo_Upload,String Veh_RC_Upload,String Driv_Name,String Driv_Mobile_No,String Driv_Aadhar,String Alt_Driv_Name,String Alt_Driv_Mobile_No,String Driv_Photo_Upload,String Driv_Licence_Upload,String Active) 
	{
		this.Ser_Pro=Ser_Pro; System.out.println(Ser_Pro);
		 this.Veh_Regn_No=Veh_Regn_No;
		this.Veh_Type=Veh_Type;
		 this.Veh_Brand=Veh_Brand;
		this.Veh_Model=Veh_Model;
		this.Veh_slab=Veh_slab;
		this.Veh_Photo_Upload=Veh_Photo_Upload;
		this.Veh_RC_Upload=Veh_RC_Upload;
		 this.Driv_Name=Driv_Name;
		 this.Driv_Mobile_No=Driv_Mobile_No;
		 this.Driv_Aadhar=Driv_Aadhar;
		 this.Alt_Driv_Name=Alt_Driv_Name;
		 this.Alt_Driv_Mobile_No=Alt_Driv_Mobile_No;
		this.Driv_Photo_Upload=Driv_Photo_Upload;
		this.Driv_Licence_Upload=Driv_Licence_Upload;
		 this.Active=Active;
	}
	public String getSer_Pro() {
		return Ser_Pro;
	}


	public String getVeh_Regn_No() {
		return Veh_Regn_No;
	}
	
	public String getVeh_Type() {
		return Veh_Type;
	}
	
	public String getVeh_Brand() {
		return Veh_Brand;
	}
	
	public String getVeh_Model() {
		return Veh_Model;
	}
	
	public String getVeh_slab() {
		return Veh_slab;
	}
	
	public String getVeh_Photo_Upload() {
		return Veh_Photo_Upload;
	}
	
	public String getVeh_RC_Upload() {
		return Veh_RC_Upload;
	}
	
	public String getDriv_Name() {
		return Driv_Name;
	}
	
	public String getDriv_Mobile_No() {
		return Driv_Mobile_No;
	}
	
	public String getDriv_Aadhar() {
		return Driv_Aadhar;
	}
	
	public String getAlt_Driv_Name() {
		return Alt_Driv_Name;
	}
	
	public String getAlt_Driv_Mobile_No() {
		return Alt_Driv_Mobile_No;
	}
	
	public String getDriv_Photo_Upload() {
		return Driv_Photo_Upload;
	}
	
	public String getDriv_Licence_Upload() {
		return Driv_Licence_Upload;
	}
	public String getActive()
	{
		return Active;
	}
}
