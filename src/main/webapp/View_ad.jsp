<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<jsp:include page="links.jsp"></jsp:include>
<style type="text/css">
#content {
	text-align: left;
	line-height: 1.8;
	margin-left: 70px;
}
</style>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>             


	<div id="page-wrapper">
		<div class="main-page">
			<div class="container">

				<div class="col-md-12 ">

					<%
					Connection con = ConnectionProvider.getConnection();
					String sql = "select * from ads  where adCategory=?";
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setString(1, request.getParameter("adCategory"));
					ResultSet rs = ps.executeQuery();

					while (rs.next()) {
					%>
					<div class="row" style="margin: 3%;">

						<div class="col-md-6">
							<img src="../shopkeeper/assets<%=rs.getString("adImage ")%>" height="500"
								width="500">
						</div>

						<div class="col-md-6">
							<h1 style="text-align: center;"><%=rs.getString("adTitle")%></h1>
							<div id="content">
								Category : <a style="text-decoration: none; color: black;"><%=rs.getString("adCategory")%></a><br>
								Description : <a style="text-decoration: none; color: black;"><%=rs.getString("adDetails")%></a><br>
							</div>
						</div>
					</div>
					<%}%>

				</div>
			</div>
		</div>
	</div>


<%-- <jsp:include page="footer.jsp"></jsp:include>             
 --%>
</body>
</html>
