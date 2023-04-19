<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
Connection con = ConnectionProvider.getConnection();
String sql = "insert into shopkeeper(shopRegNo, shopName, shopAddress,	shopEmail, shopLocation, shopkeeperFirstName, shopkeeperMiddletName, shopkeeperLastName, shopkeeperMOB, shopkeeperEmail, shopkeeperpassword, shopCategoryId)values(?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(sql);

String shopRegNo = request.getParameter("shopRegNo");
String shopName = request.getParameter("shopName");
String shopAddress = request.getParameter("shopAddress");
String shopEmail = request.getParameter("shopEmail");
String shopLocation = request.getParameter("shopLocation");
String shopkeeperFirstName = request.getParameter("shopkeeperFirstName");
String shopkeeperMiddletName = request.getParameter("shopkeeperMiddletName");
String shopkeeperLastName = request.getParameter("shopkeeperLastName");
String shopkeeperMOB = request.getParameter("shopkeeperMOB");
String shopkeeperEmail = request.getParameter("shopkeeperEmail");
String shopkeeperpassword = request.getParameter("shopkeeperpassword");
String category = request.getParameter("category");

ps.setString(1, shopRegNo);
ps.setString(2, shopName);
ps.setString(3, shopAddress);
ps.setString(4, shopEmail);
ps.setString(5, shopLocation);
ps.setString(6, shopkeeperFirstName);
ps.setString(7, shopkeeperMiddletName);
ps.setString(8, shopkeeperLastName);
ps.setString(9, shopkeeperMOB);
ps.setString(10, shopkeeperEmail);
ps.setString(11, shopkeeperpassword);
ps.setString(12, category);

int done = ps.executeUpdate();
if (done > 0) {
%>
<script type="text/javascript">
	alert("Registered Successfully!!!!!");
	location.href = "shopkeeperRegister.jsp";
</script>
<%
} else {
%>
<script type="text/javascript">
	alert("Fail try again!!!");
	location.href = "shopkeeperRegister.jsp";
</script>
<%
}
%>

