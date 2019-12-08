<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<%! String addfood; %>
<% addfood = (String)session.getAttribute("addfood"); %>
<div class="topnav">
  <a class="active" href="menu.jsp">Home</a>
  <a href="food_details_insert.jsp">Add Food Item</a>
  <a href="enter_agent_details.jsp">Add Delivery Agent</a>
  <a href="logout.jsp">Logout</a>
</div>
<div>
<h4 style="color:red;"><%= addfood %></h4>

</div>



</body>
</html>