<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*"%>

<%
String adId = request.getParameter("adId");
Connection con = ConnectionProvider.getConnection();
String sql = "delete from ads where adId=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, adId);
int done = ps.executeUpdate();
if (done > 0) {
%>
<script>
	alert("Deleted Success!!");
	location.href = "adlist.jsp";
</script>
<%
} else {
%>
<script>
	alert("Failed Try Again!!");
	location.href = "admin/adlist.jsp";
</script>
<%
}
%>