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
						<div class="col-md-offset-2 col-md-10 table-responsive">
							<br> <br>
							<table class="table table-bordered">
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
									String sql = "select * from app_user order by userId";
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
									<td><%=rs.getString("userRole")%></td>

									<td><img
										src="../admin/assets/images<%=rs.getString("user_Image")%>"
										height="100" width="100"></td>

									<td>
										<%
										String value = rs.getString("appuser_status");
										if (value != null && value.equals("Deactivated")) {
										%> <a
										href="updateUser_statusDB.jsp?userId=<%=rs.getString("userId")%>&&type=<%=rs.getString("appuser_status")%>"
										class="btn btn-danger btn-sm"><%=rs.getString("user_status")%></a>

										<%
										} else {
										%> <a
										href="updateUser_statusDB.jsp?userId=<%=rs.getString("userId")%>&&type=<%=rs.getString("appuser_status")%>"
										class="btn btn-info btn-sm"><%=rs.getString("appuser_status")%>
									</a> <%
 }
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
