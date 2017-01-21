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
		<div class="page-header">
			<h1>Update Product</h1>
			<p class="lead">Fill the below information to update a product !</p>
		</div>

		<form:form method="post" modelAttribute="products" action="showFormForUpdate/${products.productId}"
			class="form-horizontal">

			<div class="form-group">
				<label for="productId">ProductId</label>
				<form:errors path="productId" cssStyle="color: #ff4740" />
				<form:input path="productId" placeholder="Product Id" id="productId"
					class="form-control" />
			</div>
			<div class="form-group">
				<label for="name">Name</label>
				<form:errors path="name" cssStyle="color: #ff4740" />
				<form:input path="name" placeholder="Product Name" id="name"
					class="form-control" />
			</div>

			<div class="form-group">
				<label for="unitPrice">unitPrice</label>
				<form:errors path="unitPrice" cssStyle="color: #ff4740" />
				<form:input path="unitPrice" placeholder="Unit Price" id="unitPrice"
					class="form-control" />
			</div>


			<div class="form-group">
				<label for="description">Description</label>
				<form:errors path="description" cssStyle="color: #ff4740" />
				<form:input path="description" placeholder="description"
					id="description" class="form-control" />
			</div>

			<div class="form-group">
				<label for="manufacturer">Manufacturer</label>
				<form:errors path="manufacturer" cssStyle="color: #ff4740" />
				<form:input path="manufacturer" placeholder="manufacturer"
					id="manufacturer" class="form-control" />
			</div>

			<div class="form-group">
				<label for="category">Category</label>
				<form:errors path="category" cssStyle="color: #ff4740" />
				<form:input path="category" placeholder="category" id="category"
					class="form-control" />
			</div>


			<div class="form-group">
				<label for="unitsInStock">UnitsInStock</label>
				<form:errors path="unitsInStock" cssStyle="color: #ff4740" />
				<form:input path="unitsInStock" placeholder="unitsInStock"
					id="unitsInStock" class="form-control" />
			</div>

			<div class="form-group">
				<label for="condition">Condition</label>
				<form:errors path="condition" cssStyle="color: #ff4740" />
				<form:input path="condition" placeholder="condition" id="condition"
					class="form-control" />
			</div>







			<br>
			<div class="form-group">
				<input type="submit" value="Submit" class="btn btn-success">

				<a href="/webstore/products" class="btn btn-default">Cancel</a>

			</div>


		</form:form>


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



</body>
</html>