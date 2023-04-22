<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String userId = request.getParameter("userId");
String type = request.getParameter("type");

Connection con = ConnectionProvider.getConnection();
PreparedStatement ps = null;
String sql = "";
int done = 0;

if (type.equals("Deactivated")) {
	sql = "update app_user set user_status ='Activated' where userId=?";
	ps = con.prepareStatement(sql);
	ps.setString(1, userId);
	done = ps.executeUpdate();
} else {
	sql = "update app_user set user_status='Deactivated' where userId=?";
	ps = con.prepareStatement(sql);
	ps.setString(1, userId);
	done = ps.executeUpdate();
}
if (done > 0) {
%>
<script>
	alert("Status Changed!!");
	location.href = "View_userDetails.jsp";
</script>
<%
} else {
%>
<script>
	alert("Failed Try Again!!");
	location.href = "View_userDetails.jsp";
</script>
<%
}
%>
