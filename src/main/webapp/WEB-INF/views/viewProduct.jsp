<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>WebStore</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet">

<!--data table-->
<link
	href="${pageContext.request.contextPath}/resources/css/jquery.dataTable.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/dataTables.bootstrap.min.css"
	rel="stylesheet" />

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/justified-nav.css"
	rel="stylesheet">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="container">
		<form class="form-signin" action="logout" method="GET">

			<a href="logout" class="btn btn-info btn-md pull-right"> <span
				class="glyphicon glyphicon-log-out "></span> Log out
			</a>
		</form>
	</div>

	<div class="container">

		<!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
		<div class="masthead">
			<nav>
				<h3 class="text-muted">Sameer Web Store</h3>

				<ul class="nav nav-justified">
					<!-- 					<li class="active"><a href="welcome">Home</a></li>
 -->
					<li><a href="products">Products</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Downloads</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</nav>
		</div>
		<hr>


		<div class="container">

			<div class="row">
				<form class="form-signin"
					action="/webstore/order/${product.productId}" method="POST">

					<div class="col-md-3">
						<h3>${product.name}</h3>
						<p>${product.description}</p>
						<p>
							<strong>Manufacturer : </strong>${product.manufacturer}

						</p>
						<p>
							<strong>Category :</strong> ${product.category}
						</p>
						<p>
							<strong>Condition :</strong> ${product.condition}
						</p>
						<p>
							<strong>Units in Stock :</strong> ${product.unitsInStock}
						</p>


						<h4>${product.unitPrice} USD</h4>
						<br /> <label id="qty">Quantity</label>

						<%-- 						<form:input value="1" id="qty"  class="form-control type="number" path="qty" placeholder="Quantity" />
 --%>
						<input type="text" value="1" name="qty" id="qty"
							class="form-control" placeholder="Quantity" required autofocus />

						<br>
						<button type="submit" class="btn btn-warning">
							<span class="glyphicon glyphicon-shopping-cart"></span> Order Now
						</button>
						<a href="/webstore/products" class="btn btn-default">Back</a>

					</div>
				</form>

			</div>


		</div>


		<!-- Site footer -->
		<footer class="footer">
			<p>&copy; 2016 Company, Inc.</p>
		</footer>

	</div>
	<!-- /container -->


	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

	<!--data table-->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/dataTables.bootstrap.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#table1').DataTable();
		});
	</script>
</body>
</html>