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
							<h3>Contact Us</h3>
						</div>
						<div class="page_pagination">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
								<li>Contact Us</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-6 ">
					<div class="widget top-space margin-bottom-none">
						<div class="widget-header">
							<h1>Contact Us</h1>
						</div>
						<form method="POST" action="contactDB.jsp" id="contactForm"
							class="needs-validation" novalidate>
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label class="control-label">Your Name <span
											class="required">*</span></label> <input type="text"
											name="contactname" value="" placeholder="Enter Name"
											class="form-control" maxlength="100" required>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Enter Name</div>

									</div>
									<div class="col-md-6">
										<label class="control-label">Your Email Address <span
											class="required">*</span></label> <input type="email"
											name="contactemail" value=""
											placeholder="Enter Email Address" class="form-control"
											required>
										<div class="valid-feedback">Looks good!</div>
										<div class="invalid-feedback">Please Enter Email Address</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label">Subject</label> <input type="text"
									name="contactsubject" value="" placeholder="Enter The Subject"
									class="form-control" required>
								<div class="valid-feedback">Looks good!</div>
								<div class="invalid-feedback">Please Enter Subject</div>
							</div>
							<div class="form-group">
								<label class="control-label">Message</label>
								<textarea placeholder="Enter Message" name="contactmessage"
									class="form-control" rows="3" required></textarea>
								<div class="valid-feedback">Looks good!</div>
								<div class="invalid-feedback">Please Enter Message</div>
							</div>
							<div class="text-right">
								<input type="submit" class="btn btn-primary"
									value="Send Message">
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-6">
					<div class="widget margin-bottom-none">
						<div class="widget-header">
							<h1>Get in Touch</h1>
						</div>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Curabitur eget leo at velit imperdiet varius. In eu ipsum vitae
							velit congue iaculis vitae at risus. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit.</p>
						<hr>

						<ul class="list list-icons list-icons-style-3 mt-xlg">
							<li><i class="fa fa-fw fa-map-marker"></i> <strong>Address:</strong>
								1234 Street Name, City Name, United States</li>
							<li><i class="fa fa-fw fa-phone"></i> <strong>Phone:</strong>
								(123) 456-789</li>
							<li><i class="fa fa-fw fa-envelope"></i> <strong>Email:</strong>
								<a href="">test<span></span></a></li>
						</ul>
						<hr>
						<h4 class="heading-primary">
							Business <strong>Hours</strong>
						</h4>
						<ul class="list list-icons list-dark mt-xlg">
							<li><i class="fa fa-fw fa-clock-o"></i> Monday - Friday -
								9am to 5pm</li>
							<li><i class="fa fa-fw fa-clock-o"></i> Saturday - 9am to
								2pm</li>
							<li><i class="fa fa-fw fa-clock-o"></i> Sunday - Closed</li>
						</ul>
					</div>
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