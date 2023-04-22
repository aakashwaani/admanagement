<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<jsp:include page="links.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="nav.jsp"></jsp:include>
			<main class="content">
				<div class="container-fluid p-0">
					<div class="row">
						<div class="col-12 col-xl-12">
							<div class="mb-3 text-center fw-bold">
								<h3>Ads List</h3>
							</div>
							<div class="card p-4">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>Serial No</th>
											<th>Ad Image</th>
											<th>Ad Title</th>
											<th>Category</th>
											<th class="d-none d-md-table-cell" style="width: 40%">Description</th>
											<th>Actions</th>
										</tr>
									</thead>
									<tbody>
										<%
										try {
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
											Statement stmt = con.createStatement();
											ResultSet rs = stmt.executeQuery(
											"select ads.adId , ads.adTitle , ads.adDetails  , ads.adImage , add_categories.category, add_categories.categoryImage from ads inner join add_categories on ads.adCategory = add_categories.categoryId");
											while (rs.next()) {
												System.out.println(rs.getString("adImage"));
												%>
										<tr>
											<td><%=cnt%></td>
											<td><img src="<%=rs.getString("adImage")%>"
												width="48" height="48" class="rounded-circle me-2"
												alt="adImage" /></td>
											<td><%=rs.getString("adTitle")%></td>
											<td><%=rs.getString("category")%></td>
											<td><%=rs.getString("adDetails")%></td>
											<td><a
												href="updatead.jsp?adId=<%=rs.getString("adId")%>"
												class="btn btn-primary btn-sm">Update </a> <a
												href="delete_add.jsp?adId=<%=rs.getString("adId")%>"
												class="btn btn-danger btn-sm">Delete </a></td>

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
			</main>
		</div>
	</div>
</body>
</html>