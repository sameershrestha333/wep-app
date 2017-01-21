<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


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
		<hr>

		<div class="table-responsive">
			<table id="table1"
				class="table table-bordered table-hover table-striped">
				<thead>
					<tr class="bg-info">
						<th>Id</th>
						<th>Name</th>
						<th>Price $</th>
						<th>Description</th>
						<th>Manufacture</th>
						<th>Condition</th>
						<!--                  <th>Unit in Order</th>
 -->
						<th>Unit in Stock</th>
						<th></th>
					</tr>

				</thead>
				<tbody>

					<c:forEach items="${products}" var="product">

						<c:url var="updatelink" value="products/showFormForUpdate">
							<c:param name="productId" value="${product.productId }"></c:param>
						</c:url>

						<c:url var="deletelink" value="products/delete">
							<c:param name="productId" value="${product.productId}"></c:param>
						</c:url>
						<tr>
							<td>${ product.productId}</td>

							<td>${ product.name}</td>
							<td>${ product.unitPrice}</td>
							<td>${ product.description}</td>
							<td>${ product.manufacturer}</td>
							<td>${ product.condition}</td>
							<%-- 					    <td>${ product.unitsInOrder}</td>
 --%>
							<td>${ product.unitsInStock}</td>
							<td><a
								href="<spring:url value="viewProduct/${product.productId}"/>">
									<span class="glyphicon glyphicon-info-sign"></span>
							</a></td>


							<td><a href="${updatelink}"> <span
									class="glyphicon glyphicon-pencil"></span>
							</a></td>

							<td><a href="${deletelink}"> <span
									class="glyphicon glyphicon-remove"></span>
							</a></td>

						</tr>
					</c:forEach>

				</tbody>
			</table>

		</div>

		<spring:url value="/products/addProduct" var="addProduct">
			<%-- <spring:param name="ISBN" value="1234" /> --%>
		</spring:url>
		<%-- 		<a href="${addProduct}">Add Book</a>
 --%>
		<br> <a href="${addProduct}" class="btn btn-default">Add
			Product</a>

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