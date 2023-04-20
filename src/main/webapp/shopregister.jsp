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
							<form action="DB/shopregisterDB.jsp">
								<div class="form-group">
									<label class="control-label">Shop Register No <span
										class="required">*</span></label> <input type="text" placeholder=""
										name="shopRegNo" class="form-control">
								</div>
								<div class="form-group">
									<label class="control-label">Shop Name <span
										class="required">*</span></label> <input type="text" placeholder=""
										name="shopName" class="form-control">
								</div>
								<div class="form-group">
									<label class="control-label">Shop Address <span
										class="required">*</span></label> <input type="text"
										name="shopAddress" class="form-control">
								</div>
								<div class="form-group">
									<label class="control-label">Shop Email <span
										class="required">*</span></label> <input type="email" name="shopEmail"
										class="form-control">
								</div>
								<div class="form-group">
									<label class="control-label">Shop Location </label> <input
										type="email" name="shopLocation" class="form-control">
								</div>
								<div class="form-group">

									<input type="hidden" name="shopOwnerName" class="form-control"
										value="<%=logedInUserId%>">
								</div>
								<div class="form-group">
									<button class="btn btn-block btn-primary">Register
										Shop</button>
								</div>
							</form>
						</div>

					</div>
					<p class="text-center margin-bottom-none">
						Don't have an account? <a href="User_Registration.jsp"><strong>Signup</strong></a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>