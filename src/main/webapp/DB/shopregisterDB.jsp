<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%

MultipartRequest m = new MultipartRequest(request,
		"/Users/snehajature/eclipse-workspace/admanagement/src/main/webapp/assets/images",
		1048 * 1048 * 1048);

int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	conn = ConnectionProvider.getConnection();
	String query = "INSERT INTO shop (shopRegNo, shopName, shopAddress, shopEmail, shopLocation, shopCategoryId, shopImage, shopOwnerName) VALUES (?,?,?, ?, ?, ?,?,?)";
	
	
	String shopRegNo = m.getParameter("shopRegNo");
	String shopName = m.getParameter("shopName");
	String shopAddress = m.getParameter("shopAddress");
	String shopEmail = m.getParameter("shopEmail");
	String shopLocation = m.getParameter("shopLocation");
	String shopCategory = m.getParameter("shopCategory");
	String shopImage = "images/" + m.getFilesystemName("shopImage");
	String shopOwnerName = m.getParameter("shopOwnerName");

	
	
	stmt = conn.prepareStatement(query);
	stmt.setString(1, shopRegNo);
	stmt.setString(2, shopName);
	stmt.setString(3, shopAddress);
	stmt.setString(4, shopEmail);
	stmt.setString(5, shopLocation);
	stmt.setString(6, shopCategory);
	stmt.setString(7, shopImage);
	stmt.setString(8, shopOwnerName);

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