package ofo.dl;

import ofo.dto.*;
import java.sql.*;

public class CartDL {
	
	public static int addToCart(FoodDTO food,String customer_id)
	{
		int result;
		Connection con=null;
		PreparedStatement ps=null;
		try
		{
			
			con=DBHelper.getConnection();
			String sql="INSERT INTO cart_details VALUES(?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,customer_id);
			ps.setInt(2,1);
			ps.setString(3,food.getFood_id());
			ps.setString(4,food.getItem_name());
			ps.setDouble(5,food.getPrice());
			
			result=ps.executeUpdate();
			
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** : CartDL.addToCart() "+e.getMessage());
			
		}
		
		return result;
		
	}
	

}
