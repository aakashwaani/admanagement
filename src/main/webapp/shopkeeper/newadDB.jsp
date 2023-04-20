
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>



<%

int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	MultipartRequest m = new MultipartRequest(request,
	"/Users/snehajature/eclipse-workspace/admanagement/src/main/webapp/shopkeeper/assets/img", 1048 * 1048 * 1048);

	conn = ConnectionProvider.getConnection();
	String query = "INSERT INTO ads (adTitle , adCategory, adDetails, adImage) VALUES (?, ?, ?, ?)";
	stmt = conn.prepareStatement(query);
	
	String adtitle = m.getParameter("adtitle");
	String adcategory = m.getParameter("adcategory");
	String addetails = m.getParameter("addetails");
	String adimage = "/img/" + m.getFilesystemName("adimage");
	
	stmt.setString(1, adtitle);
	stmt.setString(2, adcategory);
	stmt.setString(3, addetails);
	stmt.setString(4, adimage);
	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("A new ad was inserted successfully!");
	}
} catch (SQLException ex) {
	ex.printStackTrace();
} 

%>
<script type="text/javascript">
	alert("Data Added Successfully.");
	location.href = "newad.jsp";
</script>