<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%
String userRole = request.getParameter("userrole");

int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	conn = ConnectionProvider.getConnection();
	String query = "INSERT INTO user_role(userRole) VALUES (?)";
	stmt = conn.prepareStatement(query);
	stmt.setString(1, userRole);
	
	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("Success");
	}
} catch (SQLException ex) {
	ex.printStackTrace();

}
%>

 <script type="text/javascript">
	alert("UserRole Added Sucessfully.");
	location.href = "../userrole.jsp";
</script> 
