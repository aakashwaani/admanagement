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
									<th>Shop Owner Name</th>
									<th>Shop Registration No.</th>
									<th>Shop Name</th>
									<th>Shop Address</th>
									<th>Shop Email</th>
									<th>Shop Location</th>
									<th>Shop Category</th>
									<th>Shop Image</th>

								</tr>
								<tr>
									<%
									Connection con = ConnectionProvider.getConnection();
									String sql = "select * from shop";
/* 									String sql = "select shop.* , app_user.* from shop inner join app_user on shop.shopKeeperId = app_user.userId";
 *//* 									String sql = "SELECT s.*, a.* FROM shop s JOIN app_user a ON s.shopKeeperId = a.userId";
 */									PreparedStatement ps = con.prepareStatement(sql);
									ResultSet rs = ps.executeQuery();

									int i = 1;
									while (rs.next()) {
									%>

									<td><%=i%></td>
									<td><%=rs.getString("shopOwnerName")%></td>
									<td><%=rs.getString("shopRegNo")%></td>
									<td><%=rs.getString("shopName")%></td>
									<td><%=rs.getString("shopAddress")%></td>
									<td><%=rs.getString("shopEmail")%></td>
									<td><a href="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3867187.666169696!2d76.76983739999999!3d18.81817715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1682261690390!5m2!1sen!2sin<%=rs.getString("shopLocation")%>"><%=rs.getString("shopLocation")%></a></td>

<!-- <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3867187.666169696!2d76.76983739999999!3d18.81817715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1682261690390!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
 -->
                                   <td><%=rs.getString("shopCategoryId")%></td>
                                   
 
									<td><img
										src="<%=rs.getString("shopImage")%>"
										height="100" width="100"></td>

									
										
									<td><a href="delete_shop.jsp?shopId=<%=rs.getString("shopId")%>" class="btn btn-danger btn-sm">Delete </a></td>
									

								

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

	
