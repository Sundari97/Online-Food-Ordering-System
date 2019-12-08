package ofo.bl;

import ofo.dl.DeliveryAgentDL;
import ofo.dto.DeliveryAgentDTO;

public class DeliveryAgentBL {
	
	public static int addDeliveryAgent(DeliveryAgentDTO deliveryagent)
	{
		int result=0;
		
		try
		{
			
			
			result = DeliveryAgentDL.addDeliveryAgent(deliveryagent);
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at DeliveryAgentBL.addDeliveryAgent()"+e.getMessage());
		}
		
		return result;
	}

}
