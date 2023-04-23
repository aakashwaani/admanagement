<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>

<%
String userEmail = request.getParameter("userEmail");
String userpassword = request.getParameter("userpassword");

Connection conn = ConnectionProvider.getConnection();

String sql = "SELECT * FROM app_user WHERE userEmail = ? AND userpassword = ? AND appuser_status= 'Activated'";
PreparedStatement stmt = conn.prepareStatement(sql);
stmt.setString(1, userEmail);
stmt.setString(2, userpassword);
ResultSet rs = stmt.executeQuery();

if (rs.next()) {
	String activated = rs.getString("appuser_status");
	if (activated.equals("activated")) {
		String dbPassword = rs.getString("userpassword");
		if (dbPassword.equals(userpassword)) {
			session.setAttribute("userEmail", userEmail);
			session.setAttribute("userId", rs.getString("userId"));

	response.sendRedirect("index.jsp");
		} else {
	out.println("Incorrect password. Please try again.");
		}
	} else {
		out.println("Your account is not activated. Please activate your account before logging in.");
	}
} else {
	out.println("User does not exist. Please register before logging in.");
}
%>
