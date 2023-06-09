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
							<form action="logincheck.jsp" method="POST"
								class="needs-validation" novalidate>
								<div class="form-group">
									<label class="control-label">Email <span
										class="required">*</span></label> <input type="text"
										placeholder="Email or Username" name="userEmail"
										class="form-control" required>
								</div>
								<div class="form-group">
									<label class="control-label">Password <span
										class="required">*</span></label> <input type="password"
										name="userpassword" placeholder="Password" required
										class="form-control">
								</div>
								<div class="form-group">
									<button class="btn btn-block btn-primary">Sign In</button>
								</div>
							</form>
						</div>
						<div id="alertMessage"></div>

					</div>
					<p class="text-center margin-bottom-none">
						Don't have an account? <a href="signup.jsp"><strong>Signup</strong></a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


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