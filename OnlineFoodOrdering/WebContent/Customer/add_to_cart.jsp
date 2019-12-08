<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.dto.*,ofo.bl.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Add Page</title>
</head>
<body>
<%
String food_id;
FoodDTO food;
int result;
String customer_id;

%>

<% 
	customer_id = (String)session.getAttribute("customer_id");
	System.out.print(customer_id);
	food = new FoodDTO();
	food_id=request.getParameter("food_id");
	food = FoodBL.getFoodByID(food_id);
	result=CartBL.addToCart(food,customer_id);
	if(result>0)
	{
		session.setAttribute("success", "Added to cart!!!");
		response.sendRedirect("menu.jsp");
	}
	else
	{
		session.setAttribute("success", "Failed!!!");
		//response.sendRedirect("menu.jsp");
		
	}
	
	
	


%>

</body>
</html>