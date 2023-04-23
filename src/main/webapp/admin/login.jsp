<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<jsp:include page="links.jsp"></jsp:include>
<title>Admin LogIn</title>
</head>
<body>
	<main class="d-flex w-100 h-100">
		<div class="container d-flex flex-column">
			<div class="row vh-100">
				<div class="col-sm-10 col-md-4 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">Welcome back</h1>
							<p class="lead">Sign in to your account to continue</p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="">
									<form action="logincheck.jsp" method="POST"
										class="needs-validation" novalidate>
										<div class="mb-3">
											<label class="form-label">Email</label> <input
												class="form-control form-control-lg" type="email"
												name="adminemail" placeholder="Enter your email" required>
											<div class="valid-feedback">Looks good!</div>
											<div class="invalid-feedback">Please choose a username.
											</div>
										</div>
										<div class="mb-3">
											<label class="form-label">Password</label> <input
												class="form-control form-control-lg" type="password"
												name="adminpassword" placeholder="Enter your password"
												required>
											<div class="valid-feedback">Looks good!</div>

											<div class="invalid-feedback">Please choose a username.
											</div>
										</div>
										<div class="text-center mt-3">
											<!-- 	<a href="index.jsp" class="btn btn-lg btn-primary">Sign
												in</a> -->
											<button type="submit" class="btn btn-lg btn-primary">Sign
												in</button>
										</div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</main>

	<script type="text/javascript">
		//Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict'

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll('.needs-validation')

			// Loop over them and prevent submission
			Array.prototype.slice.call(forms).forEach(function(form) {
				form.addEventListener('submit', function(event) {
					if (!form.checkValidity()) {
						event.preventDefault()
						event.stopPropagation()
					}

					form.classList.add('was-validated')
				}, false)
			})
		})()
	</script>
</body>
</html>