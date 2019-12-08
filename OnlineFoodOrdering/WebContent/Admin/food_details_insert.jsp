<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Details Insert</title>
</head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<body>
<h1 class="jumbotron bg-danger text-warning" align="center">REGISTRATION</h1>
<div class="container">
	<form method="post" action="food_add_process.jsp" style="width:500px;margin:auto;" onsubmit="return ValidateEmail('EmailId')" >
	
	<div class="form-group">
		<label>Food ID</label>
		<input type="text" name="food_id" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Item Name</label>
		<input type="text" name="item_name" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Unit Price</label>
		<input type="text" name="price" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Category</label>
		<select name="category" class="form-control">
			<option value="veg">Vegetarian</option>
			<option value="nonveg">Non-Vegetarian</option>
		</select>
	</div>
	
	
	<div class="form-group">
		<label></label>
		<button type="submit" name="login" class="form-control btn-outline-primary" id="submit">Add Food</button>
		<span class="label label-default" style="color:red;" id="spanid"></span>
		
		
	</div>
	</form>

</div>
</body>
</html>