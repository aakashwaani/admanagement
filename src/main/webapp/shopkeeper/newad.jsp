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
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="nav.jsp"></jsp:include>
			<main class="content">
				<div class="container-fluid p-0">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header"></div>
								<div class="card-body">
									<form action="newadDB.jsp" method="post"
										class=" needs-validation" enctype="multipart/form-data"
										novalidate>
										<div class="mb-3">
											<label for="title" class="form-label">Ad Title</label> <input
												type="text" class="form-control " id="adtitle"
												name="adtitle" placeholder="eg.Apple Iphone 11" required>
											<div class="invalid-feedback">Please provide a title
												for your ad.</div>
										</div>
										<div class="mb-3">
											<label for="category">Category</label> <select
												class="form-control form-select" id="category"
												name="adcategory" >
												<option value="">Select a category</option>

											</select>
											<div class="invalid-feedback">Please select a category
												for your ad.</div>
										</div>
										<div class="mb-3">
											<label for="price">Price</label>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">$</span>
												</div>
												<input type="number" class="form-control" id="price"
													name="adprice" required>
												<div class="invalid-feedback">Please provide a price
													for your ad.</div>
											</div>
										</div>
										<div class="mb-3">
											<label class="form-label">Ad Description</label>
											<textarea class="form-control" placeholder="Ad Details.. "
												rows="3" name="addetails" required></textarea>
										</div>

										<div class="mb-3">
											<label for="image">Image</label>
											<div class="custom-file">
												<input type="file" class="custom-file-input form-label"
													id="adimage" name="adimage" required> <label
													class="custom-file-label" for="image"></label>
												<div class="invalid-feedback">Please choose an image
													for your ad.</div>
											</div>
										</div>

										<h4>Posted By Details -</h4>
										<div class="mb-3">
											<label for="title" class="form-label">Your Shop Name
												-</label> <input type="text" class="form-control " id="shopname"
												name="shopname" required>
											<div class="invalid-feedback">Please provide a Your
												Name.</div>
										</div>
										<div class="mb-3">
											<label for="title" class="form-label"> Shop Address -</label>
											<input type="text" class="form-control " id="shopaddress"
												name="shopaddress" required>
											<div class="invalid-feedback">Please provide a Your
												Name.</div>
										</div>
										<div class="mb-3">
											<label for="title" class="form-label">Email -</label> <input
												type="email" class="form-control" id="shoperemail"
												name="shoperemail" required>
											<div class="invalid-feedback">Please provide a Your
												Email.</div>
										</div>
										<div class="mb-3">
											<label for="title" class="form-label">Phone -</label>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">+91</span>
												</div>
												<input type="number" class="form-control" id="shoperphone"
													name="shoperphone" required>
												<div class="invalid-feedback">Please provide a phone
													number.</div>
											</div>
										</div>
										<div class="text-end">
											<button type="submit" class="btn btn-success">Post
												Your Ad</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>




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