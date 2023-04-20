<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Online Advertisement System</title>
<jsp:include page="links.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section class="breadcumb_area">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="breadcumb_section">
						<div class="page_title">
							<h3>Log In</h3>
						</div>
						<div class="page_pagination">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
								<li>Log In</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="login">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-md-4 col-sm-offset-4">
					<div class="login-panel widget">
						<div class="login-body">
							<form action="logincheck.jsp" method="post">
								<div class="form-group">
									<label class="control-label">Email <span
										class="required">*</span></label> <input type="text"
										placeholder="Email" name="userEmail" class="form-control">
								</div>
								<div class="form-group">
									<label class="control-label">Password <span
										class="required">*</span></label> <input type="password" name="userpassword"
										placeholder="Password" class="form-control">
								</div>
								<div class="form-group">
									<button class="btn btn-block btn-primary">Sign In</button>
								</div>
							</form>
						</div>
						
					</div>
					<p class="text-center margin-bottom-none">
						Don't have an account? <a href="signup.jsp"><strong>Signup</strong></a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>