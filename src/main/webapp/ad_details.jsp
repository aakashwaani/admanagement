<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>	
<%@  page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>   

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>   

<main class="content">
<div class="container-fluid p-0">
				<div id="page-wrapper">
	<div class="main-page">
	<div class="container">
		
		
		<div class="col-md-12 ">
				
			 <%
					     
					      Connection con = ConnectionProvider.getConnection();
					      String sql = "select * from ads where adId = ?";
					      PreparedStatement ps = con.prepareStatement(sql);
					      ps.setString(1, request.getParameter("adId"));
					      ResultSet rs = ps.executeQuery();
					
					      while(rs.next()){
					    %>
			<div class="row" style="margin : 3%;">
		
			<div class="col-md-6">
			<img src="../admin/<%=rs.getString("adimage")%>" height="500" width="500">
			</div>
			
			<div class="col-md-6">
			<h1 style="text-align: center;"><%=rs.getString("adTitle") %></h1>
			<div id="content">
			Category : <a style="text-decoration:none;color:black;"><%=rs.getString("adCategory")%></a><br>
			Description : <a style="text-decoration:none;color:black;"><%=rs.getString("adDetails")%></a><br>
		  </div>
		  </div>
		  </div>
			 <%}
			 %>
			
					   
					</div>
				</div>
			</div>
			</div>
			</div>
			
</main>




</body>
</html>
