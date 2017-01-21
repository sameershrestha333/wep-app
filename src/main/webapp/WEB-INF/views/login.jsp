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


<link href="${pageContext.request.contextPath}/resources/css/signin.css"
	rel="stylesheet">


<!-- Custom styles for this template -->
<%-- <link
	href="${pageContext.request.contextPath}/resources/css/justified-nav.css"
	rel="stylesheet">
 --%>

<link
	href="resources/css/justified-nav.css"
	rel="stylesheet">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<div class="container">





		<form class="form-signin" action="login" method="POST">
			<h2 class="form-signin-heading">Please sign in</h2>
			<label for="username" class="sr-only">Username</label> 
			<input
				type="text" value="${cookie.userName.value}" name="user_name" id="username" class="form-control"
				placeholder="Username" required autofocus> <br> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="inputPassword" class="form-control"
				placeholder="Password" name="password" required>
			<div class="checkbox">
				<label> <input type="checkbox"
				 name="remember" 
					<c:if test="${cookie.containsKey('userName')}">checked</c:if>/>
					Remember me
				</label>
			</div>
			<label>${err_msg}</label>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
				in</button>
			<br />


		</form>

		<%-- <form class="form-signin" method="post" action="login">
				<h2 class="form-signin-heading">Please sign in</h2>
				<div class="form-group">
					<label for="username" class="cols-sm-2 control-label">Username</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user fa"
								aria-hidden="true"></i></span> <input type="text" class="form-control"
								id="username" name="user_name" roleId="firstname"
								placeholder="Enter your username" required="required" />
						</div>

					</div>
				</div>

				<div class="form-group">
					<label for="password" class="cols-sm-2 control-label">Password</label>
					<div class="cols-sm-10">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-lock fa-lg" aria-hidden="true"></i></span> <input
								type="password" class="form-control" name="password"
								id="password" name="password" 
								placeholder="Enter your Password" required="required" />
						</div>						
					</div>
				</div>





				<div class="form-group ">
					<button type="submit"
						class="btn btn-primary btn-lg btn-block login-button">Sign
						up!</button>
				</div>

				<hr />

				<div class="form-group ">
					<a class="btn btn-info btn-lg btn-block login-button" href="home"">Cancel</a>
				</div>
				<div class="form-group">
					<label>${err_msg}</label>

				</div>
			</form> --%>
	</div>
	<!-- Site footer -->


	<!-- /container -->


	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>