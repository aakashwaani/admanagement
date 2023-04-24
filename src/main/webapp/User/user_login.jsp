<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  User  LogIn</title>
<jsp:include page="links.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>


	<section class="Registration">
		<div class="container">
			<div class="row d-flex justify-content-center">

				<div class="col-md-4">
					<div class="widget top-space margin-bottom-none">
						<div class="widget-header text-center">
							<h1>Login</h1>
						</div>
						<form method="POST" action="DB/user_loginDB.jsp"
							class="needs-validation" novalidate>


							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									name="email" id="email" placeholder="Enter Email"
									class="form-control" required>

							</div>

							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									name="password" id="password" placeholder="Enter password"
									class="form-control" required>
							</div>

							<div class="text-right">
								<input type="submit" class="btn btn-primary" value="Login">
							</div>

						</form>
						<p class="text-center margin-bottom-none mt-5">
							Don't have an account? <a href="userRegistration.jsp"><strong>Signup</strong></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>