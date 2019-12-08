package ofo.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import ofo.dto.*;

public class DeliveryAgentDL {
	
	public static int addDeliveryAgent(DeliveryAgentDTO deliveryagent)
	{
		int result=0;
		Connection con;
		PreparedStatement ps;
		try
		{
			con = DBHelper.getConnection();
			String query = "INSERT INTO delivery_agent VALUES(?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, deliveryagent.getAgent_id());
			ps.setString(2, deliveryagent.getAgent_name());
			ps.setString(3, deliveryagent.getEmail());
			ps.setString(4, deliveryagent.getMobile());
			
			result = ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at DeliveryAgentDL.addDeliveryAgent()"+e.getMessage());
		}
		
		return result;
	}

}
