<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section class="categories-page-search">
		<div class="container">
			<div class="row">
				<div class="main-search-box text-center">
					<form action="#" method="GET" class="row">
						<div class="col-md-4 col-lg-10 search-input">
							<input placeholder="What are you looking for...?"
								class="form-control input-lg search-form" type="text">
						</div>
						<div class="col-md-2 col-lg-2 search-input">
							<button class="btn btn-primary simple-btn btn-block">
								<i class="fa fa-search"></i> Search
							</button>
						</div>
					</form>
				</div>
			</div>
			<div class="row d-flex justify-content-center">

				<div class="all-categories-nav">
					<a href="categoriesad.jsp"> <i
						class="fa fa-glass shortcut-icon icon-blue"></i>
						<p>
							Restaurant 
						</p>
					</a> <a href="#Real_Estate"> <i
						class="fa fa-home shortcut-icon icon-green"></i>
						<p>
							Real Estate 						</p>
					</a> <a href="#Cars"> <i class="fa fa-car shortcut-icon icon-brown"></i>
						<p>
							Cars 
						</p>
					</a> <a href="#Shopping"> <i
						class="fa fa-shopping-cart shortcut-icon icon-violet"></i>
						<p>
							Shopping 
						</p>
					</a> <a href="#Job"> <i
						class="fa fa-briefcase shortcut-icon icon-dark-blue"></i>
						<p>
							Job 
						</p>
					</a> <a href="#Hotels"> <i
						class="fa fa-building-o shortcut-icon icon-orange"></i>
						<p>
							Hotels 
						</p>
					</a> <a href="#Services"> <i
						class="fa fa-star shortcut-icon icon-light-blue"></i>
						<p>
							Services 
						</p>
					</a> 
				</div>

			</div>
		</div>
	</section>

	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>