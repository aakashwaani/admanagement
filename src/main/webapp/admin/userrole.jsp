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
<title>Admin || Add New Category</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="nav.jsp"></jsp:include>
			<main class="content">
				<div class="container-fluid p-0">
					<div class="mb-3">
						<h1 class="h3 d-inline align-middle">Add New Category</h1>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="card">
								<div class="card-header"></div>
								<div class="card-body">
									<form action="DB/userroleDB.jsp" method="post"
									 class="needs-validation"
										novalidate>
										<div class="mb-3">
											<label for="title" class="form-label">User Role</label> <input
												type="text" class="form-control" id="newadcategory"
												name="userrole" required>
											<div class="invalid-feedback">Please provide a
												category.</div>
										</div>
										<div class="text-end">
											<button type="submit" class="btn btn-danger">Add</button>
										</div>
									</form>
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