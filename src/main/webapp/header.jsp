<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-light topbar static-top shadow-sm bg-white osahan-nav-top px-0">
		<div class="container">

			<a class="navbar-brand" href="index.html"><img
				src="assets/images/logo.svg" alt=""></a>

			<form
				class="d-none d-sm-inline-block form-inline mr-auto my-2 my-md-0 mw-100 navbar-search">
				<div class="input-group">
					<input type="text" class="form-control"
						placeholder="Find Services..." aria-label="Search"
						aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-primary" type="button">
							<i class="fa fa-search fa-sm"></i>
						</button>
					</div>
				</div>
			</form>

			<ul class="navbar-nav align-items-center ml-auto">
				<li
					class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications d-sm-none">
					<a class="btn btn-icon-nav btn-transparent-dark dropdown-toggle"
					href="#" id="searchDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <i
						class="fa fa-search"></i>
				</a>

					<div
						class="dropdown-menu dropdown-menu-right p-3 shadow-sm animated--grow-in"
						aria-labelledby="searchDropdown">
						<form class="form-inline mr-auto w-100 navbar-search">
							<div class="input-group">
								<input type="text" class="form-control bg-light border-0 small"
									placeholder="Find Services..." aria-label="Search"
									aria-describedby="basic-addon2">
								<div class="input-group-append">
									<button class="btn btn-primary" type="button">
										<i class="fa fa-search fa-sm"></i>
									</button>
								</div>
							</div>
						</form>
					</div>
				</li>
				<li class="nav-item dropdown no-arrow no-caret dropdown-user">
					<a class="btn btn-icon-nav btn-transparent-dark dropdown-toggle"
					id="navbarDropdownUserImage" href="javascript:void(0);"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"><img class="img-fluid"
						src="assets/images/user.jpg"></a>
					<div
						class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up"
						aria-labelledby="navbarDropdownUserImage">

						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="settings.html"><i
							class="fa mr-2 fa-user"></i> Profile</a> <a class="dropdown-item"
							href="my-ads.html"><i class="fa mr-2 fa-pencil"></i> My Ads</a> <a
							class="dropdown-item" href="settings.html"><i
							class="fa mr-2 fa-gear"></i> Settings</a> <a class="dropdown-item"
							href="logout.jsp"><i class="fa mr-2 fa-power-off"></i> Log
							Out</a>
					</div>
				</li>
			</ul>
		</div>
	</nav>

	<nav
		class="navbar navbar-expand-lg navbar-light bg-white osahan-nav-mid px-0 border-top shadow-sm">
		<div class="container">
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="categories.jsp">Categories</a></li>
					<li class="nav-item"><a class="nav-link" href="contact_us.jsp">Contact
							Us</a></li>
					<li class="nav-item"><a class="nav-link" href="about.jsp">About
							Us</a></li>
					<li class="nav-item dropdown"><a data-toggle="dropdown"
						class="nav-link dropdown-toggle" href="#" aria-expanded="false">New
							Here <b class="caret"></b>
					</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="userRegistration.jsp"><i
								class="fa mr-2 fa-angle-right"></i> Register</a> <a
								class="dropdown-item" href="user_login.jsp"><i
								class="fa mr-2 fa-angle-right"></i> Login</a>
						</div></li>
					<%
					if (session.getAttribute("userId") != null) {
					%>

					<li class="nav-item"><a class="nav-link"
						href="shopregister.jsp"> Shop Register</a></li>

					<%
					}
					%>
				</ul>
			</div>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="chat.jsp">
				
				
						<button class="btn btn-primary" type="button">Chat</button>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="shopkeeperRegister.jsp">
						<button class="btn btn-primary" type="button">Post Free
							Ad</button>
				</a></li>

			</ul>
		</div>
	</nav>
</body>
</html>