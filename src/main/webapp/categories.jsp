<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>
</head>


<style>
.box {
	padding: 40px 30px;
	transition: all .4s ease-in-out;
	cursor: pointer;
}

.box:hover {
	box-shadow: 2px 2px 10px #a5a5a5;
	transform: scale(1.03);
}

a:hover {
	text-decoration: none;
}

img {
	object-fit: contain;
	width: 35px;
	height: 35px;
	/* padding: 20px; */
}

p.text-muted {
	margin: 0;
	font-size: 0.9rem;
}

b {
	font-size: 1.12rem;
}

.rounded-circle {
	width: 60px;
	height: 60px;
	background-color: red;
}

.blue {
	background-color: #bedcfa;
	transform: rotateZ(90deg);
}

.pale-blue {
	background-color: #eff8ff;
}

.pale-orange {
	background-color: #ffe5b9;
}

.pale-purple {
	background-color: #e8e8e8;
}

.pale-cyan {
	background-color: #cffffe;
}

.pale-pink {
	background-color: #ffe4e4;
}

.pale-pale {
	background-color: #f4eeff;
}

.pale-green {
	background-color: #a0ffe6;
}

.pale-pista {
	background-color: #dbf6e9;
}
</style>
<body>
	<%
	Connection con1 = ConnectionProvider.getConnection();
	Statement stmt1 = con1.createStatement();
	%>
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
		</div>
	</section>
	<section class="categories-list main-categories-list">
		<div class="container bg-light rounded">
			<div class="h4 font-weight-bold text-center py-3">Explore more</div>
			<div class="row">
				<%
				try {
					int cnt = 1;
					Connection con = ConnectionProvider.getConnection();
					Statement stmt = con1.createStatement();
					ResultSet rs = stmt1.executeQuery("select * from add_categories");
					while (rs.next()) {
				%>

				<div class="col-lg-4 col-md-6 my-lg-0 my-3">

					<div class="box bg-white">

						<div class="d-flex align-items-center">
							<div
								class="rounded-circle mx-3 text-center d-flex align-items-center justify-content-center blue">
								<img src="<%=rs.getString("categoryImage")%>"
									alt="">
							</div>
							<div class="d-flex flex-column">
								<a href="categoriesad.jsp?categoryId=<%=rs.getInt("categoryId")%>"><b><%=rs.getString("category")%></b>
								</a>
							</div>
						</div>
					</div>
				</div>


				<%
				cnt++;
				}

				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</div>

		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>