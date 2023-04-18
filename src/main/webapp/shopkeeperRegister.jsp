<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

	<section class="create-post">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-md-6 col-sm-offset-3">
					<div class="login-panel widget margin-bottom-none">
						<div class="login-body">
							<form>
								<div class="form-group">
									<label class="control-label">Ad Title <span
										class="required">*</span></label> <input type="text"
										placeholder="e.g. Apple iPhone SE 2020" required="required"
										value="" class="form-control border-form">
								</div>
								<div class="form-group">
									<label class="control-label">Category <span
										class="required">*</span></label> <select
										class="form-control custom-select border-form">
										<option selected="">All Category</option>
										<option>Hand Phone</option>
										<option>Motorcycle</option>
										<option>Properti</option>
									</select>
								</div>

								<div class="form-group">
									<label class="control-label">Price <span
										class="required">*</span></label>
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-dollar"></i></span>
										<input type="text" placeholder="e.g. 999" required="required"
											value="" class="form-control border-form">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label">Location <span
										class="required">*</span></label> <select
										class="form-control custom-select border-form">
										<option selected="">All Location</option>
										<option>New York</option>
										<option>Washington</option>
										<option>California</option>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label">Ad Description <span
										class="required">*</span></label>
									<textarea
										placeholder="Include the brand, model, age and any included accessories."
										class="form-control border-form"></textarea>
								</div>
								<div class="form-group">
									<label class="control-label">Your Name <span
										class="required">*</span></label> <input type="text"
										placeholder="e.g. Jhone Doe" required="required" value=""
										class="form-control border-form">
								</div>
								<div class="form-group">
									<label class="control-label">Your email <span
										class="required">*</span></label> <input type="text"
										placeholder="e.g. jon@gmail.com" required="required" value=""
										class="form-control border-form">
								</div>
								<div class="form-group">
									<label class="control-label">Phone number <span
										class="required">*</span></label>
									<div class="input-group">
										<span class="input-group-addon">+44</span> <input type="text"
											placeholder="e.g. 123456789" required="required" value=""
											class="form-control border-form">
									</div>
								</div>
								<div class="form-group text-right margin-bottom-none mt-3">
									<button type="submit" class="btn btn-danger">
										<i class="fa fa-close"></i> Cancel
									</button>
									<button type="submit" class="btn btn-success">
										<i class="fa fa-save"></i> Create ad
									</button>
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