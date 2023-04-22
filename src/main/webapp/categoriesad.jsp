<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

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

								<%
								int cnt = 1;
								Connection con = ConnectionProvider.getConnection();
								String sql = "select ads.*, add_categories.* from ads as ads inner join add_categories as add_categories on ads.adCategory = add_categories.categoryId where ads.adId=?";
								PreparedStatement ps = con.prepareStatement(sql);
								ps.setString(1, request.getParameter("adId"));
								ResultSet rs = ps.executeQuery();

								while (rs.next()) {
								%>

								<h1><%=rs.getString("adTitle")%></h1>
								<img src="<%=rs.getString("adImage")%>"> <a><%=rs.getString("adDetails")%></a>
								<a><%=rs.getString("adTitle")%></a>
							</div>



							<%
							}
							%>

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