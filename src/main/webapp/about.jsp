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
							<h3>About Us</h3>
						</div>
						<div class="page_pagination">
							<ul>
								<li><a href="index.jsp">Home</a></li>
								<li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
								<li>About Us</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="container px-4 py-5" id="icon-grid">
		<div class="row">
			<div class="col-md-6 p-4 p-sm-5 order-2 order-sm-1">
				<small class="text-uppercase text-primary">About us</small>
				<h1 class="h2 mb-4" style="font-weight: 600;">
					Your Headline <span class="text-primary">Here</span>
				</h1>
				<p class="text-secondary" style="line-height: 2;">Lorem ipsum
					dolor sit amet consectetur adipisicing elit. Suscipit repellat iure
					laboriosam cum voluptatum, nam minima deserunt aut? Distinctio
					voluptatibus dolor quaerat quo omnis illo sequi at velit, odit
					quod!</p>

			</div>
			<div class="col-md-6 p-0 text-center order-1 order-sm-2">
				<img
					src="https://images.pexels.com/photos/3184430/pexels-photo-3184430.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
					class="w-100" alt="">
			</div>

			<div class="col-md-6 p-0 text-center">
				<img
					src="https://images.pexels.com/photos/2467506/pexels-photo-2467506.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
					class="w-100" alt="">
			</div>
			<div class="col-md-6 p-4 p-sm-5">
				<small class="text-uppercase text-primary">About us</small>
				<h1 class="h2 mb-4" style="font-weight: 600;">
					Your Headline <span class="text-primary">Here!</span>
				</h1>
				<p class="text-secondary" style="line-height: 2;">Lorem ipsum
					dolor sit amet consectetur adipisicing elit. Suscipit repellat iure
					laboriosam cum voluptatum, nam minima deserunt aut? Distinctio
					voluptatibus dolor quaerat quo omnis illo sequi at velit, odit
					quod!</p>

			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>