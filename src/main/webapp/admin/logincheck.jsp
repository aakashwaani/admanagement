<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%
Connection con = ConnectionProvider.getConnection();
String query = "select * from admin where email=? and password=?";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, request.getParameter("adminemail"));
ps.setString(2, request.getParameter("adminpassword"));

ResultSet rs = ps.executeQuery();
if (rs.next()) {
	session.setAttribute("adminId", rs.getString("adminId"));
	session.setAttribute("adminEmail", rs.getString("email"));
	response.sendRedirect("index.jsp");
} else {
%>
<script>
	alert("Email or Password are Wrong!!");
	location.href = "login.jsp";
</script>
<%
}
%>

