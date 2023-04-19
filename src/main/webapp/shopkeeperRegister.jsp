<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
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
							<h4>Advertise With Us</h4>
						</div>
						<div class="page_pagination">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
								<li>Create New Account</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="shopkeeper-register">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-md-12 col-sm-offset-3">
					<div class="login-panel widget margin-bottom-none">
						<div class="login-body">
							<form action="shopRegDB.jsp" method="post">
								<div class="form-group">
									<label class="control-label">Shop Registration No. </label> <input
										type="number" placeholder="Enter registration number"
										required="required" id="shopRegNo" name="shopRegNo"
										class="form-control border-form">
								</div>
								<div class="form-group">
									<label class="control-label">Shop Name</label> <input
										type="text" id="shopName" name="shopName"
										placeholder="Enter Shop Name" class="form-control border-form"
										required="required">
								</div>

								<div class="form-group">
									<label class="control-label">Shop Address</label>
									<div class="input-group">
										<textarea placeholder="Enter Shop Address"
											class="form-control border-form" id="shopAddress"
											name="shopAddress" required></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label">Shop Email</label> <input type="email"
										id="shopEmail" name="shopEmail" placeholder="Enter Email"
										class="form-control border-form" required>
								</div>
								<div class="form-group">
									<label class="control-label">Location</label>
									<textarea placeholder="Enter shop location"
										class="form-control border-form" id="shopLocation"
										name="shopLocation" required></textarea>
								</div>
								<div class="form-group">
									<label class="control-label"> First Name</label> <input
										type="text" placeholder="Enter First Name" required="required"
										id="shopkeeperFirstName" name="shopkeeperFirstName"
										class="form-control border-form">
								</div>
								<div class="form-group">
									<label class="control-label"> Middle Name</label><input
										type="text" placeholder="Enter Middle Name"
										id="shopkeeperMiddletName" name="shopkeeperMiddletName"
										required="required" class="form-control border-form">
								</div>
								<div class="form-group">
									<label class="control-label"> Last Name</label> <input
										type="text" placeholder="Enter Last Name" required="required"
										id="shopkeeperLastName" name="shopkeeperLastName"
										class="form-control border-form">
								</div>

								<div class="form-group">
									<label class="control-label"> Mobile Number</label> <input
										type="number" placeholder="Enter number" required="required"
										id="shopkeeperMOB" name="shopkeeperMOB"
										class="form-control border-form">
								</div>

								<div class="form-group">
									<label class="control-label">Shop Category</label> <select
										class="form-control border-form form-select" id="category"
										name="category" required="required">
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
								</div>

								<div class="form-group">
									<label class="control-label">Shopkeeper Email</label> <input
										type="email" placeholder="Enter Email" required="required"
										id="shopkeeperEmail" name="shopkeeperEmail"
										class="form-control border-form">
								</div>

								<div class="form-group">
									<label class="control-label">Password</label> <input
										type="password" placeholder="Enter password"
										required="required" id="shopkeeperpassword"
										name="shopkeeperpassword" class="form-control border-form">
								</div>



								<div class="form-group text-right margin-bottom-none mt-3">
									<button type="submit" class="btn btn-primary">
										Register</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>