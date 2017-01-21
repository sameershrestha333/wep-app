<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<div class="container">

			<form:form method="post" action="customer" modelAttribute="customer"
				class="form-horizontal">


				<div class="form-group">
					<label for="c">Country</label>
					<form:select id="c" path="country" class="form-control">
						<form:option value="NONE" label="--- Select ---" />
						<form:options items="${countries}" />
					</form:select>
				</div>

				<div class="form-group">
					<label for="j">Java Skills</label>
					<form:select path="javaSkills" class="form-control">
						<form:option value="NONE" label="--- Select ---" />
						<form:options items="${javaskills}" />
					</form:select>
				</div>
				<div class="form-group">
					<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
				</div>

				<!-- <div class="form-group">
                <a  class="btn btn-lg btn-default btn-block" href="home"">Cancel</a>
				</div> -->
				<br />

				<%-- <table>
					<tr>
						<td><label> Country :</label></td>
						<td><form:select id="c" path="country" class="form-control">
								<form:option value="NONE" label="--- Select ---" />
								<form:options items="${countries}" />
							</form:select></td>
					</tr>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td><label> Java Skills</label></td>
						<td><form:select path="javaSkills" class="form-control">
								<form:option value="NONE" label="--- Select ---" />
								<form:options items="${javaskills}" />
							</form:select></td>
					</tr>

					<tr></tr>
					<tr>
						<td></td>
						<td colspan="3"><input type="submit"
							class="btn btn-success btn-block" value="Submit" /></td>
					</tr>
				</table> --%>
			</form:form>


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
</body>
</html>