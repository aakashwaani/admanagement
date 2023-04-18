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
<title>Admin</title>
</head>
<body>
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
									<h5 class="card-title mb-0">Clients</h5>
								</div>
								<div class="card-body">
									<table class="table table-bordered" style="width: 100%">
										<thead class="text-center">
											<tr>
												<th>Name</th>
												<th>Email</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody class="text-center">
											
											<tr>
												<td>Ashton Cox</td>
												<td>ashton@cox.com</td>
												<td><span class="badge bg-success">Active</span></td>
											</tr>
											<tr>

												<td>Sonya Frost</td>
												<td>sonya@frost.com</td>
												<td><span class="badge bg-danger">Deleted</span></td>
											</tr>
											<tr>

												<td>Jena Gaines</td>
												<td>jena@gaines.com</td>
												<td><span class="badge bg-warning">Inactive</span></td>
											</tr>
											<tr>

												<td>Charde Marshall</td>
												<td>charde@marshall.com</td>
												<td><span class="badge bg-success">Active</span></td>
											</tr>
											<tr>

												<td>Haley Kennedy</td>
												<td>haley@kennedy.com</td>
												<td><span class="badge bg-danger">Deleted</span></td>
											</tr>
											<tr>

												<td>Tatyana Fitzpatrick</td>
												<td>tatyana@fitzpatrick.com</td>
												<td><span class="badge bg-success">Active</span></td>
											</tr>
											<tr>
												<td>Michael Silva</td>
												<td>michael@silva.com</td>
												<td><span class="badge bg-success">Active</span></td>
											</tr>
											<tr>
												<td>Angelica Ramos</td>
												<td>angelica@ramos.com</td>
												<td><span class="badge bg-success">Active</span></td>
											</tr>
											<tr>
												
												<td>Jennifer Chang</td>
												<td>jennifer@chang.com</td>
												<td><span class="badge bg-warning">Inactive</span></td>
											</tr>
										
											
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