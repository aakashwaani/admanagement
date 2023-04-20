<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%
String userFirstName = request.getParameter("userFirstName");
String userMiddletName = request.getParameter("userMiddletName");
String userLastName = request.getParameter("userLastName");
String userMOB = request.getParameter("userMOB");
String userEmail = request.getParameter("userEmail");
String userPassword = request.getParameter("userPassword");
String userRole = request.getParameter("userRole");

int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	conn = ConnectionProvider.getConnection();
	String query = "INSERT INTO app_user (userFirstName, userMiddletName, userLastName, userMOB,userEmail,userpassword,userRole) VALUES (?, ?, ?, ?,?,?,?)";
	stmt = conn.prepareStatement(query);
	stmt.setString(1, userFirstName);
	stmt.setString(2, userMiddletName);
	stmt.setString(3, userLastName);
	stmt.setString(4, userMOB);
	stmt.setString(5, userEmail);
	stmt.setString(6, userPassword);
	stmt.setString(7, userRole);

	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("Register Success");
	}
} catch (SQLException ex) {
	ex.printStackTrace();

}
%>
