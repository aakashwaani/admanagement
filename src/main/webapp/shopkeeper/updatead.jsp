<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
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
						<div class="col-md-12">
							<div class="card">
								<div class="card-header"></div>
								<div class="card-body">
									<form  enctype="multipart/form-data" action="updateadDB.jsp" method="post"
										class="needs-validation" 
										novalidate>
										<%
										
											int cnt = 1;
											Connection con = ConnectionProvider.getConnection();
										    String sql = "select ads.*, add_categories.* from ads as ads inner join add_categories as add_categories on ads.adCategory = add_categories.categoryId where ads.adId=?";

/* 											String sql = ("select ads.adId , ads.adTitle , ads.adDetails  , ads.adImage , add_categories.category, add_categories.categoryImage from ads inner join add_categories on ads.adCategory = add_categories.categoryId where adId = ?");
 */											PreparedStatement ps = con.prepareStatement(sql);
											ps.setString(1, request.getParameter("adId"));
											ResultSet rs = ps.executeQuery();
											while (rs.next()) {
										%>
										
										<input type="hidden" value="<%=rs.getString("adId")%>" id="adId" name="adId">
										
										<div class="mb-3">
											<label for="title" class="form-label">Ad Title</label> <input
												type="text" class="form-control " id="adtitle"
												name="adtitle" value="<%=rs.getString("adTitle")%>" required>
											<div class="invalid-feedback">Please provide a title
												for your ad.</div>
										</div>
										
										
										<div class="mb-3">
										
										
										
						  <label>Category Name</label>
						<select class="form-control" id="adcategory" name="adcategory">
						<option value="<%=rs.getString(6)%>"><%=rs.getString(7)%></option>
						 <%
					      Connection con1 = ConnectionProvider.getConnection();
					      String sql1 = "select * from add_categories";
					      PreparedStatement ps1 = con1.prepareStatement(sql1);
					      ResultSet rs1 = ps1.executeQuery();
					      
					      while(rs1.next()){
					        %>
							      <option value="<%=rs1.getString("categoryId") %>"><%=rs1.getString("category") %></option>
							      <%} %>
						</select> 
						
							</div>			
										
	
										<div class="mb-3">
											<label class="form-label">Ad Description</label>
											<textarea class="form-control" placeholder="Ad Details.. "
												rows="3" name="addetails" required><%=rs.getString("adDetails")%></textarea>
										</div>

										<div class="mb-3">
											<label for="file">Image</label>
											<div class="custom-file">
												<img src="assets/<%=rs.getString("adImage")%>" height="100"
													width="100"><br> <br> <input type="file"
													class="custom-file-input form-label" id="adImage"
													name="adImage"> <label class="custom-file-label"
													for="file"></label>

											</div>
										</div>


										<div class="text-end">
											<button type="submit" class="btn btn-success">Update
												Ad</button>
										</div>

										<%
										cnt++;
										}

									
										%>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>




	<script type="text/javascript">
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict'

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll('.needs-validation')

			// Loop over them and prevent submission
			Array.prototype.slice.call(forms).forEach(function(form) {
				form.addEventListener('submit', function(event) {
					if (!form.checkValidity()) {
						event.preventDefault()
						event.stopPropagation()
					}

					form.classList.add('was-validated')
				}, false)
			})
		})()
	</script>
</body>
</html>