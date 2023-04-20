<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>



<%
String shopRegNo = request.getParameter("shopRegNo");
String shopName = request.getParameter("shopName");
String shopAddress = request.getParameter("shopAddress");
String shopEmail = request.getParameter("shopEmail");
String shopLocation = request.getParameter("shopLocation");


int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	conn = ConnectionProvider.getConnection();
	String query = "INSERT INTO shop (shopRegNo, shopName, shopAddress, shopEmail, shopLocation) VALUES (?, ?, ?, ?,?)";
	stmt = conn.prepareStatement(query);
	stmt.setString(1, shopRegNo);
	stmt.setString(2, shopName);
	stmt.setString(3, shopAddress);
	stmt.setString(4, shopEmail);
	stmt.setString(5, shopLocation);
	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("Shop Added successfully!");
	}
} catch (SQLException ex) {
	ex.printStackTrace();

}
%>
<script type="text/javascript">
	alert("Shop Added successfully!");
	location.href = "../shopregister.jsp";
</script>