<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>

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


	<section class="single-detail">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-6 col-lg-8">
					<div class="row">
						<div class="col-lg-12">
							<%
							int cnt = 1;
							Connection con = ConnectionProvider.getConnection();
							String sql = "select ads.*, add_categories.* from ads as ads inner join add_categories as add_categories on ads.adCategory = add_categories.categoryId where ads.adId=?";
							PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1, request.getParameter("id"));
							ResultSet rs = ps.executeQuery();

							while (rs.next()) {
							%>
							<div class="item single-ads">
								<div class="item-ads-grid margin-bottom-none">
									<div class="item-title-single">
										<h2><%=rs.getString("adTitle")%>
										</h2>
									</div>
									<div class="item-img-grid">
										<div id="sync1" class="">
											<div class="item">
												<a href=""> <img alt=""
													style="height: 500px !important;"
													src="shopkeeper/<%=rs.getString("adImage")%>"
													class="img-responsive img-center" />
												</a>
											</div>

										</div>
									</div>
									<div class="single-item-meta">
										<h4>
											<strong>Description</strong>
										</h4>
										<p><%=rs.getString("adDetails")%></p>

									</div>
									<div class="item-footer">
										<div class="row">
											<div class="col-lg-12 col-md-5">
												<span class="item-views"> <i class="fa fa-eye"></i>
													Ad Views : <b>6544</b></span>
											</div>
											<div class="col-lg-12 col-md-7 text-right-md">
												<div class="share-widget text-right">
													<span>Share This Ad : </span>
													<div class="social-links social-bg pull-right">
														<ul>
															<li><a class="fa fa-twitter" target="_blank"
																href="#"></a></li>
															<li><a class="fa fa-facebook" target="_blank"
																href="#"></a></li>
															<li><a class="fa fa-google-plus" target="_blank"
																href="#"></a></li>
															<li><a class="fa fa-instagram" target="_blank"
																href="#"></a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-lg-4">
					<div class="widget user-widget">
						<%
						String query = "SELECT * FROM shop WHERE shopCategoryId = ?";
						PreparedStatement ps1 = con.prepareStatement(query);
						ps1.setString(1, request.getParameter("id"));
						ResultSet rs1 = ps1.executeQuery();

						while (rs1.next()) {
						%>
						<div class="widget-body text-center">
							<img class="user-dp" alt="User Image"
								src=""> <span
								class="user-status user-online"></span>

							<h2 class="seller-name"><%=rs1.getString("shopName")%></h2>
							<p class="seller-detail">
								<i class="fa fa-map-marker"></i> Location: <strong><%=rs1.getString("shopLocation")%></strong><br>
							</p>
						</div>
						<div class="widget-footer">
							<div class="row">
								<div class="col-sm-12">
									<div class="profile-action-btns text-center">
										<a href="#" data-toggle="tooltip" data-placement="top"
											title="0133 4568 9876" class="btn btn-primary btn-lg"><i
											class="fa fa-whatsapp"></i></a> <a href="#" data-toggle="tooltip"
											data-placement="top" title="Send Message"
											class="btn btn-primary btn-lg"><i
											class="fa fa-envelope-o"></i></a> <a data-toggle="collapse"
											data-parent="#accordion" href="#popup" title="Live Chat"
											class="btn btn-primary btn-lg"><i class="fa fa-comment-o"></i></a>
									</div>
								</div>
							</div>
						</div>
						<%
						}
						%>
					</div>

				</div>
			</div>
		</div>
	</section>


	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>