<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
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
	<%
	Connection con1 = ConnectionProvider.getConnection();
	Statement stmt1 = con1.createStatement();
	%>
	<jsp:include page="header.jsp"></jsp:include>

	<section class="breadcumb_area">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="breadcumb_section">
						<div class="page_title">
							<h3>Sign Up</h3>
						</div>
						<div class="page_pagination">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
								<li>Sign Up</li>
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
							<form action="DB/appuserDB.jsp" class="needs-validation"
								method="post" novalidate>
								<div class="form-group">
									<label class="control-label">First Name </label> <input
										type="text" name="userFirstName" placeholder="First Name"
										class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter FirstName.</div>
								</div>
								<div class="form-group">
									<label class="control-label">Middle Name </label> <input
										type="text" name="userMiddletName" placeholder="Middle Name"
										class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter MiddleName.</div>
								</div>
								<div class="form-group">
									<label class="control-label">Last Name </label> <input
										type="text" name="userLastName" placeholder="Last Name"
										class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter LastName.</div>
								</div>
								<div class="form-group">
									<label class="control-label">Mobile Number </label> <input
										type="number" pattern="\d{10}" maxlength="10" name="userMOB"
										placeholder="Mobile Number" class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter Mobile Number.</div>
								</div>
								<div class="form-group">
									<label class="control-label">Email </label> <input type="text"
										name="userEmail" placeholder="Email"
										pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
										class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter Email.</div>
								</div>

								<div class="form-group">
									<label class="control-label">Password</label> <input
										type="password" name="userPassword" placeholder="Password"
										class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter Password.</div>
								</div>

								<div class="form-group">
									<label class="control-label">Role </label> <select
										class="form-select form-control" name="userRole" required>
										<%
										try {
											ResultSet rs = stmt1.executeQuery("select * from user_role");
											while (rs.next()) {
										%>
										<option value="<%=rs.getInt("roleId")%>">
											<%=rs.getString("userRole")%>
										</option>
										<%
										}

										} catch (Exception e) {
										e.printStackTrace();
										}
										%>
									</select>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Select Role.</div>


								</div>

								<div class="form-group">
									<button class="btn btn-block btn-primary">Register</button>
								</div>
							</form>
						</div>

					</div>
					<p class="text-center margin-bottom-none">
						<a href="login.jsp"><strong>Already Have an account?
						</strong></a>
					</p>
				</div>
			</div>
		</div>
	</section>


	<jsp:include page="footer.jsp"></jsp:include>


	<script type="text/javascript">
		// Example starter JavaScript for disabling form submissions if there are invalid fields
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