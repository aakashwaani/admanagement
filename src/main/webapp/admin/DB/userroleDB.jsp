<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%
String roleName = request.getParameter("roleName");

int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	conn = ConnectionProvider.getConnection();
	String query = "INSERT INTO user_role (userRole) VALUES (?)";
	stmt = conn.prepareStatement(query);
	stmt.setString(1, roleName);

	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("Role Added successfully!");
	}
} catch (SQLException ex) {
	ex.printStackTrace();

}
%>
<script type="text/javascript">
	alert("Role Added successfully.");
	location.href = "../userrole.jsp";
</script>