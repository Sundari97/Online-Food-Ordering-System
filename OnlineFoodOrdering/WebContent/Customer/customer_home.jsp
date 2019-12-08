<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Customer HomePage</title>
</head>
<body>
<% String customer_id = (String)session.getAttribute("customer_id"); %>
 <div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="../images/pepperchicken.jpg">
        <img src="../images/pepperchicken.jpg" class="img-responsive" style="width:100%">
        <div class="caption">
          <p>Pepper Chicken</p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="../images/paneertikka.jpg">
        <img src="../images/paneertikka.jpg" class="img-responsive" style="width:100%">
        <div class="caption">
          <p>Paneer Tikka</p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="../images/muttonmasala.jpg">
        <img src="../images/muttonmasala.jpg" class="img-responsive" style="width:100%">
        <div class="caption">
          <p>Mutton Masala</p>
        </div>
      </a>
    </div>
  </div>
  <div class="container">
  	<form action="../Food/food_by_name.jsp" method="get">
  	<div class="form-group">
  		<label>Search Food By Name</label>
  		<input type="text" name="item_name" class="form-control">
  	</div>
  	
  	<div class="form-group">
		<label></label>
		<button type="submit" name="searchfood" class="form-control btn-outline-success" id="submit">Search Food</button>
  	
  </div>
  </form>
</div>

</body>
</html>