<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
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
	<jsp:include page="header.jsp"></jsp:include>
	<%
	int logedInUserId = 2;
	%>
	<section class="breadcumb_area">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="breadcumb_section">
						<div class="page_title">
							<h3>Shop Register</h3>
						</div>
						<div class="page_pagination">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
								<li>Shop Register</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="shop-register">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-md-4 col-sm-offset-4">
					<div class="login-panel widget">
						<div class="login-body">
							<form action="DB/shopregisterDB.jsp" class="needs-validation"
								novalidate>
								<div class="form-group">
									<label class="control-label">Shop Register No </label> <input
										type="text" placeholder="" name="shopRegNo"
										class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter Shop Register
										No.</div>
								</div>
								<div class="form-group">
									<label class="control-label">Shop Name </label> <input
										type="text" placeholder="" name="shopName"
										class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter Shop Name</div>
								</div>
								<div class="form-group">
									<label class="control-label">Shop Address </label> <input
										type="text" name="shopAddress" class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter Shop Address</div>
								</div>
								<div class="form-group">
									<label class="control-label">Shop Email </label> <input
										type="email" name="shopEmail" class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter Shop Email</div>
								</div>
								<div class="form-group">
									<label class="control-label">Shop Location </label> <input
										type="text" name="shopLocation" class="form-control" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter Shop Location
									</div>
								</div>
								<div class="form-group">
									<input type="hidden" name="shopOwnerName" class="form-control"
										value="<%=logedInUserId%>" required>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Enter Shop Owner
										Name.</div>
								</div>

								<div class="form-group">
									<label class="control-label">Shop Category</label> <select
										class="form-control" id="shopCategory" name="shopCategory"
										required>
										<option value="">---Select Category---</option>
										<%
										Connection con = ConnectionProvider.getConnection();
										String sql = "select * from add_categories";
										PreparedStatement ps = con.prepareStatement(sql);
										ResultSet rs = ps.executeQuery();

										while (rs.next()) {
										%>
										<option value="<%=rs.getString("categoryId")%>"><%=rs.getString("category")%></option>
										<%
										}
										%>
									</select>
									<div class="valid-feedback">Looks good!</div>
									<div class="invalid-feedback">Please Choose Category.</div>
								</div>
								<div class="form-group">
									<button class="btn btn-block btn-primary">Register
										Shop</button>
								</div>
							</form>
						</div>

					</div>
					<!-- <p class="text-center margin-bottom-none">
						Don't have an account? <a href="User_Registration.jsp"><strong>Signup</strong></a>
					</p> -->
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>



	<script type="text/javascript">
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