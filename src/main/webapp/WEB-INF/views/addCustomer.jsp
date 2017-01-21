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

<title>Add Customer</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
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
		<div class="page-header">
			<h1>Customer Entry Form</h1>
			<p class="lead">Fill the below information to add a customer !</p>

			<a href="?locale=en" class="btn btn-success">English</a> <a
				href="?locale=fr" class="btn btn-warning">Nepali</a>

		</div>

		<form:form action="customerForm" method="post"
			modelAttribute="customerForm" class="form-horizontal">


			<div class="form-group">
			
				<!-- <label for="username">
				User Name
							 
				
				</label> -->
				<label for="username"> <spring:message code="username" />
				</label>

				<div class="alert alert-warning fade in">
					<form:errors path="username" />
				</div>
				<form:input path="username" placeholder="username" id="username"
					class="form-control" />
			</div>




			<div class="form-group">
				<label for="address"><spring:message code="address" /></label>

				<div class="alert alert-warning fade in">
					<form:errors path="address" />
				</div>
				<form:input path="address" placeholder="address" id="address"
					class="form-control" />
			</div>


			<div class="form-group">
				<label for="birthdate">Birthdate</label>
				<div class="alert alert-warning fade in">
					<form:errors path="birthdate" />
				</div>
				<form:input type="datetime-local" path="birthdate" placeholder="birthdate" id="birthdate"
					class="form-control" />
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<div class="alert alert-warning fade in">
					<form:errors path="password" />
				</div>
				<form:password path="password" placeholder="password" id="password"
					class="form-control" />
			</div>

			<div class="form-group">
				<label for="sex">Sex</label>
				<div class="alert alert-warning fade in">
					<form:errors path="sex" />
				</div>
				<label for="sex"> <form:radiobutton path="sex" id="sex"
						value="M" class="radio-inline" /> Male
				</label> <label> <form:radiobutton path="sex" id="sex" value="F"
						class="radio-inline" /> Female
				</label>

			</div>


			<div class="form-group">
				<input type="submit" value="Submit"
					class="btn btn-lg btn-success btn-block">
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