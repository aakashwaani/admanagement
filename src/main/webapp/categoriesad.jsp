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
							<h3>Trending Ads</h3>
						</div>
						<div class="page_pagination">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
								<li>Ads</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="category-grid">
		<div class="container">
			<div class="row">

				<div class="col-lg-12 col-md-8 col-lg-12">
					<div class="row">
						<div class="col-lg-3">

							<div class="card my-4">
								<div class="bg-image hover-overlay ripple"
									data-mdb-ripple-color="light">
									<a href="singlead.jsp"><img
										src="https://mir-s3-cdn-cf.behance.net/project_modules/fs/db78d972182051.5bdf1de4dcf77.jpg//"
										class="img-fluid" />  </a>
								</div>
								<div class="card-body">
									<h5 class="card-title font-weight-bold">
										<a>Bungh Food Festival at Sayaji Hotel</a>
									</h5>
									<p class="card-text">Bungh Food Festival at Sayaji Hotel.
										This food festival featured cuisines from 3 states of India
										i.e. Bihar, West Bengal and Orissa.</p>
									<hr />
								</div>
							</div>
						</div>
						<div class="col-lg-3"></div>
						<div class="col-lg-3"></div>
						<div class="col-lg-3"></div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>