<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Enter Delivery Agent Details</title>
</head>
<body>
	<h1 class="jumbotron bg-danger text-warning" align="center">Add Delivery Agent</h1>
<div class="container">
	<form method="post" action="agent_add_process.jsp" style="width:500px;margin:auto;" onsubmit="return ValidateEmail('EmailId')" >
	
	<div class="form-group">
		<label>Agent ID</label>
		<input type="text" name="agent_id" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Agent Name</label>
		<input type="text" name="agent_name" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Email id</label>
		<input type="text" name="email" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Mobile</label>
		<input type="text" name="mobile" class="form-control" required>
	</div>
	
	
	
	
	<div class="form-group">
		<label></label>
		<button type="submit" name="add agent" class="form-control btn-outline-primary" id="submit">Add Delivery Agent</button>
		<span class="label label-default" style="color:red;" id="spanid"></span>
		
		
	</div>
	</form>

</div>
	
</body>
</html>