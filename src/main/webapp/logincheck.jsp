<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%
String userEmail = request.getParameter("userEmail");
String userpassword = request.getParameter("userpassword");

int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {
	conn = ConnectionProvider.getConnection();
	String query = "select userEmail, userpassword from app_user where userEmail=? and userpassword=?";
	stmt = conn.prepareStatement(query);
	stmt.setString(1, userEmail);
	stmt.setString(2, userpassword);

	ResultSet rs = stmt.executeQuery();
	if (rs.next()) {
		session.setAttribute("userEmail", rs.getString("userEmail"));
		response.sendRedirect("index.jsp");
	}

}

catch (SQLException ex) {
	ex.printStackTrace();

}
%>