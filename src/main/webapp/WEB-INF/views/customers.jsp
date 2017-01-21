<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
			<h3 class="text-muted">Sameer Web Store</h3>
			<nav>
				<ul class="nav nav-justified">
					<!-- 					<li><a href="home">Home</a></li>
 -->
					<li><a href="products">Products</a></li>
					<li><a href="customer">Customer</a></li>
					<li><a href="#">Downloads</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
					<!-- 					<li><a href="login">Login</a></li>
 -->
				</ul>
			</nav>
		</div>

		<div class="container">
			<h2>Customer info</h2>

			<div class="table-responsive">
				<table class="table table-bordered table-hover table-striped">
					<thead>
						<tr>
							<th>UserName</th>
							<th>Address</th>
							<th>Date of birth</th>
							<th>Password</th>
							<th>Sex</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${customerForm.username}</td>
							<td>${customerForm.address}</td>
							
							<td><fmt:formatDate value="${customerForm.birthdate}" pattern="yyyy-MM-dd"/> </td>
<%-- 							<td>${customerForm.birthdate}</td> --%>
							<td>${customerForm.password}</td>
							<td>${customerForm.sex}</td>
						</tr>
					</tbody>
				</table>
			</div>



			<%-- <h2>Customer info</h2>
			Country : ${customer.country} <br /> Java Skills :
			${customer.javaSkills} <br /> --%>
		</div>
		<br> <a href="/webstore/customerForm" class="btn btn-default">Back</a>

		<!-- Site footer -->
		<footer class="footer">
			<p>&copy; 2016 Company, Inc.</p>
		</footer>

	</div>
	<!-- /container -->


	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>