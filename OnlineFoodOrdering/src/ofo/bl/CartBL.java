package ofo.bl;


import ofo.dl.CartDL;
import ofo.dto.FoodDTO;

public class CartBL {

	public static int addToCart(FoodDTO food,String customer_id)
	{
		int result;
		
		try
		{
			result = CartDL.addToCart(food, customer_id);
						
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** : CartBL.addToCart() "+e.getMessage());
			
		}
		
		return result;
		
	}
	
			
}
