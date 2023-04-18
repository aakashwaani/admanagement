<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%

String newadcategory = request.getParameter("newadcategory");

int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	conn = ConnectionProvider.getConnection();
	String query = "INSERT INTO add_categories(category) VALUES (?)";
	stmt = conn.prepareStatement(query);
	stmt.setString(1, newadcategory);

	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("Category Added successfully!");
	}
} catch (SQLException ex) {
	ex.printStackTrace();
} finally {
	if (stmt != null) {
		stmt.close();
	}
	if (conn != null) {
		conn.close();
	}
}
%>
<script type="text/javascript">
	alert("Category Added Successfully.");
	location.href = "newcategory.jsp";
</script>