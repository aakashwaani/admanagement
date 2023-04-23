<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="sidebar.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="nav.jsp"></jsp:include>
			<main class="content">
				<div class="container-fluid p-0">
					<div class="row">
						<div class="col-md-offset-2 col-md-12 table-responsive">
							<br> <br>
							<table class="table table-bordered" id="loadTable">
								<tr>
									<th>Sr.No</th>
									<th>Name</th>
									<th>Mobile</th>
									<th>Email</th>
									<th>Password</th>
									<th>Role</th>
									<th>Image</th>
									<th>Status</th>

								</tr>
								<tr>
									<%
									Connection con = ConnectionProvider.getConnection();
									String sql = "SELECT u.*, r.* FROM app_user u JOIN user_role r ON u.userRole = r.roleId";
									PreparedStatement ps = con.prepareStatement(sql);
									ResultSet rs = ps.executeQuery();

									int i = 1;
									while (rs.next()) {
									%>

									<td><%=i%></td>
									<td><%=rs.getString("userFirstName")%> <%=rs.getString("userMiddletName")%>
										<%=rs.getString("userLastName")%></td>
									<td><%=rs.getString("userMOB")%></td>
									<td><%=rs.getString("userEmail")%></td>
									<td><%=rs.getString("userpassword")%></td>
									<td><%=rs.getString(12)%></td>

									<td><img
										src="<%=rs.getString("user_Image")%>"
										height="100" width="100"></td>

									<td>
										<%
										
										if ((rs.getString("appuser_status")).equals("Deactivated")) {
											%>
											
											<a
										href="updateUser_statusDB.jsp?userId=<%=rs.getInt("userId")%>&&status=<%=rs.getString("appuser_status") %>"
										class="btn btn-danger"><%=rs.getString("appuser_status") %></a>
										
										<%} else {%>
											<a
										href="updateUser_statusDB.jsp?userId=<%=rs.getInt("userId")%>&&status=<%=rs.getString("appuser_status") %>"
										class="btn btn-success"><%=rs.getString("appuser_status") %></a>
										<%}
										%>  
									

									</td>

								</tr>

								<%
								i++;
								}
								%>
							</table>

						</div>
					</div>
				</div>
			</main>
		</div>
	</div>

	<script type="text/javascript">
		function sendData(x) {
			location.href = "DB/activateUsersDB.jsp?userId=" + x;
			$("#loadTable").load('View_userDetails.jsp #loadTable');

		}
	</script>

	<!-- 
<script type="text/javascript">
   $("#email").on("keyup",function(){
	   var drawerName = $(this).val();
	   $.ajax({
		  url : 'fetchstatusDB.jsp?email='+email, 
		  method : 'post',
		  success : function(response){
			  if(response.trim()=="1"){
				  $("#text").html("Already in list").css({"color" : "red"});
				  $("input[type=submit]").attr("disabled","disabled");
			  }else{
				  $("#text").empty();
				  $("input[type=submit]").removeAttr("disabled");
			  }
			     
		  }
	   });
   })
</script> -->
</body>
</html>
