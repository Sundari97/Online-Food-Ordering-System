<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.dto.*,ofo.bl.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login check page</title>
</head>
<body>
<%! UserDTO user1=null; 
	UserDTO user2=null;
	String username,password;
	String message="	" ;

%>
<%
if(request.getParameter("login")!=null)
{
	username = request.getParameter("username");
	password = request.getParameter("password");
	user1 = new UserDTO();
	user1.setUsername(username);
	user1.setPassword(password);
	user2 = new UserDTO();
	user2 = UserBL.checkLogin(user1);
	if(user2.getUsername()!=null)
	{
		   session.setAttribute("user_name", user2.getUsername());
		   session.setAttribute("customer_id",user2.getId());
		   response.sendRedirect("Customer/customer_home.jsp");
	}
	
	/*else if(session.getAttribute("login")=="notloggedin")
	{
		   message = "Wrong User ID or Password";
		   response.sendRedirect("login.jsp");
	}*/
	
	else
	{
		session.setAttribute("message" , "Wrong User ID or Password");
		   response.sendRedirect("login.jsp");
		  
	
	}
}
%>

	


</body>
</html>