<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%
String contactname = request.getParameter("contactname");
String contactemail = request.getParameter("contactemail");
String contactsubject = request.getParameter("contactsubject");
String contactmessage = request.getParameter("contactmessage");

int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	conn = ConnectionProvider.getConnection();
	String query = "INSERT INTO contact_messages (contactname, contactemail, contactsubject, contactmessage) VALUES (?, ?, ?, ?)";
	stmt = conn.prepareStatement(query);
	stmt.setString(1, contactname);
	stmt.setString(2, contactemail);
	stmt.setString(3, contactsubject);
	stmt.setString(4, contactmessage);
	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("Form Submitted successfully!");
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
	alert("thank you.");
	location.href = "contact_us.jsp";
</script>