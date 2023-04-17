<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
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
		<!-- showcase area starts here -->

		<section class="py-5 homepage-search-block position-relative">
			<div class="container">
				<div class="row py-lg-5">
					<div class="col-lg-7">
						<div class="homepage-search-title">
							<h1 class="mb-3 text-shadow text-gray-900 font-weight-bold">Sell
								or Advertise anything online</h1>
							<h5 class="mb-5 text-shadow text-gray-800 font-weight-normal">Buy
								and sell everything from used cars to mobile phones and
								computers, or search for property, jobs and more</h5>
						</div>
						<div class="homepage-search-form" data-select2-id="6">
							<form class="form-noborder" data-select2-id="5">
								<div class="form-row">
									<div class="col-lg-3 col-md-3 col-sm-12 form-group">
										<div class="location-dropdown">
											<select
												class="custom-select form-control border-0 shadow-sm form-control-lg">
												<option selected="selected" value="">All Categories</option>
											</select>
										</div>
									</div>
									<div class="col-lg-7 col-md-7 col-sm-12 form-group">
										<input type="text" placeholder="What are you looking for...?"
											class="form-control border-0 form-control-lg shadow-sm">
									</div>
									<div class="col-lg-2 col-md-2 col-sm-12 form-group">
										<button type="submit"
											class="btn btn-primary btn-block btn-lg btn-gradient shadow-sm">
											<i class="fa fa-search"></i>
										</button>
									</div>
								</div>
							</form>
						</div>
						<div class="popular mt-3">
							<h4>Popular Categories</h4>
							<a href=""> <i class="fa fa-book"></i>Books
							</a> <a href=""> <i class="fa fa-briefcase"></i>Jobs
							</a> <a href=""> <i class="fa fa-mobile"></i>Mobiles
							</a> <a href=""> <i class="fa fa-laptop"></i>Laptop
							</a> <a href=""> <i class="fa fa-building-o"></i>Property
							</a>
						</div>
					</div>
					<div class="col-lg-5">
						<img class="img-fluid" src="assets/images/banner.svg" alt="">
					</div>
				</div>
			</div>
		</section>
		<!-- showcase area ends here -->

		<section class="categories-list">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="widget blue-widget">
							<div class="widget-header">
								<small>98,156 Ads</small>
								<h1><i class="fa fa-glass shortcut-icon icon-blue"></i> Restaurant</h1>
							</div>
							<div class="widget-body">
								<ul class="trends">
									<li><a href="#">Cafe <span class="item-numbers">155</span></a></li>
									<li><a href="#">Fast Food <span class="item-numbers">80</span></a></li>
									<li><a href="#">Restaurants <span class="item-numbers">65</span></a></li>
									<li><a href="#">Pubs <span class="item-numbers">35</span></a></li>
									<li><a href="#">Food Truck <span class="item-numbers">12</span></a></li>
									<li><a href="#">Show More <span class="item-numbers">7</span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="widget green-widget">
							<div class="widget-header">
								<small>98,156 Ads</small>
								<h1><i class="fa fa-home shortcut-icon icon-green"></i> Real Estate</h1>
							</div>
							<div class="widget-body">
								<ul class="trends">
									<li><a href="#">For Sale <span class="item-numbers">135</span></a></li>
									<li><a href="#">For Rent <span class="item-numbers">116</span></a></li>
									<li><a href="#">To Share <span class="item-numbers">65</span></a></li>
									<li><a href="#">Land & Estates <span class="item-numbers">47</span></a></li>
									<li><a href="#">Appartments <span class="item-numbers">23</span></a></li>
									<li><a href="#">Show More <span class="item-numbers">4</span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="widget brown-widget">
							<div class="widget-header">
								<small>98,156 Ads</small>
								<h1><i class="fa fa-car shortcut-icon icon-brown"></i> Cars</h1>
							</div>
							<div class="widget-body">
								<ul class="trends">
									<li><a href="#">Car Parts <span class="item-numbers">98</span></a></li>
									<li><a href="#">Cars <span class="item-numbers">65</span></a></li>
									<li><a href="#">Motobikes <span class="item-numbers">55</span></a></li>
									<li><a href="#">Wanted <span class="item-numbers">28</span></a></li>
									<li><a href="#">Rentacar <span class="item-numbers">15</span></a></li>
									<li><a href="#">Show More <span class="item-numbers">12</span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="widget violet-widget">
							<div class="widget-header">
								<small>98,156 Ads</small>
								<h1><i class="fa fa-shopping-cart shortcut-icon icon-violet"></i> Shopping</h1>
							</div>
							<div class="widget-body">
								<ul class="trends">
									<li><a href="#">Food <span class="item-numbers">68</span></a></li>
									<li><a href="#">Wear <span class="item-numbers">44</span></a></li>
									<li><a href="#">Accessories <span class="item-numbers">23</span></a></li>
									<li><a href="#">IT & Sofware <span class="item-numbers">19</span></a></li>
									<li><a href="#">For Kids <span class="item-numbers">5</span></a></li>
									<li><a href="#">Show More <span class="item-numbers">3</span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="widget dark-blue-widget margin-bottom-none">
							<div class="widget-header">
								<small>98,156 Ads</small>
								<h1><i class="fa fa-briefcase shortcut-icon icon-dark-blue"></i> Job</h1>
							</div>
							<div class="widget-body">
								<ul class="trends">
									<li><a href="#">Accountancy <span class="item-numbers">78</span></a></li>
									<li><a href="#">Banking <span class="item-numbers">45</span></a></li>
									<li><a href="#">Managerment <span class="item-numbers">30</span></a></li>
									<li><a href="#">Secretarial & PA <span class="item-numbers">28</span></a></li>
									<li><a href="#">Voluntary Work <span class="item-numbers">16</span></a></li>
									<li><a href="#">Show More <span class="item-numbers">9</span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="widget orange-widget margin-bottom-none">
							<div class="widget-header">
								<small>98,156 Ads</small>
								<h1><i class="fa fa-building-o shortcut-icon icon-orange"></i> Hotels</h1>
							</div>
							<div class="widget-body">
								<ul class="trends">
									<li><a href="#">Artists <span class="item-numbers">95</span></a></li>
									<li><a href="#">Events & Nightlife <span class="item-numbers">86</span></a></li>
									<li><a href="#">Hotel Stuff <span class="item-numbers">60</span></a></li>
									<li><a href="#">Classes <span class="item-numbers">30</span></a></li>
									<li><a href="#">Hostel <span class="item-numbers">22</span></a></li>
									<li><a href="#">Show More <span class="item-numbers">19</span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="widget light-blue-widget margin-bottom-none">
							<div class="widget-header">
								<small>98,156 Ads</small>
								<h1><i class="fa fa-star shortcut-icon icon-light-blue"></i> Services</h1>
							</div>
							<div class="widget-body">
								<ul class="trends">
									<li><a href="#">Computers <span class="item-numbers">55</span></a></li>
									<li><a href="#">Clothing <span class="item-numbers">35</span></a></li>
									<li><a href="#">Childcare <span class="item-numbers">31</span></a></li>
									<li><a href="#">Business <span class="item-numbers">29</span></a></li>
									<li><a href="#">Cleaning <span class="item-numbers">18</span></a></li>
									<li><a href="#">Show More <span class="item-numbers">8</span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="widget light-green-widget margin-bottom-none">
							<div class="widget-header">
								<small>98,156 Ads</small>
								<h1><i class="fa fa-paw shortcut-icon icon-light-green"></i> Pets</h1>
							</div>
							<div class="widget-body">
								<ul class="trends">
									<li><a href="#">Cats <span class="item-numbers">66</span></a></li>
									<li><a href="#">Dogs <span class="item-numbers">54</span></a></li>
									<li><a href="#">Birds <span class="item-numbers">34</span></a></li>
									<li><a href="#">Wanted <span class="item-numbers">12</span></a></li>
									<li><a href="#">Pets for Sale <span class="item-numbers">6</span></a></li>
									<li><a href="#">Show More <span class="item-numbers">1</span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<jsp:include page="footer.jsp"></jsp:include>

	</body>

	</html>