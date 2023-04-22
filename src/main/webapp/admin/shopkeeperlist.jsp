<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<jsp:include page="links.jsp"></jsp:include>
<title>Admin</title>
</head>
<body>


	<%
	Connection con1 = ConnectionProvider.getConnection();
	Statement stmt1 = con1.createStatement();
	%>
	<div class="wrapper">
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="nav.jsp"></jsp:include>
			<main class="content">
				<div class="container-fluid p-0">
					<div class="row">
						<div class="col-xl-12">

							<div class="card">
								<div class="card-header pb-0">
									<div class="card-actions float-end">
										<div class="dropdown position-relative">
											<a href="#" data-bs-toggle="dropdown"
												data-bs-display="static"> <svg
													xmlns="http://www.w3.org/2000/svg" width="24" height="24"
													viewBox="0 0 24 24" fill="none" stroke="currentColor"
													stroke-width="2" stroke-linecap="round"
													stroke-linejoin="round"
													class="feather feather-more-horizontal align-middle">
													<circle cx="12" cy="12" r="1"></circle>
													<circle cx="19" cy="12" r="1"></circle>
													<circle cx="5" cy="12" r="1"></circle></svg>
											</a>
										</div>
									</div>
									<h5 class="card-title mb-0">Shopers List</h5>
								</div>
								<div class="card-body">
									<table class="table table-bordered" style="width: 100%">
										<thead class="text-center">
											<tr>
												<th>Shop Name</th>
												<th>Email</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody class="text-center">
											<%
											try {
												int cnt = 1;
												Connection con = ConnectionProvider.getConnection();
												Statement stmt = con1.createStatement();
												ResultSet rs = stmt1.executeQuery("select * from shopkeeper");
												while (rs.next()) {
											%>

											<tr>
												<td><%=rs.getString("shopName")%></td>
												<td>ashton@cox.com</td>
												<td><span class="badge bg-success">Active</span></td>
											</tr>

											<%
											cnt++;
											}

											} catch (Exception e) {
											e.printStackTrace();
											}
											%>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

			</main>
		</div>
	</div>
</body>
</html>