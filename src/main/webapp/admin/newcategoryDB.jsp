<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%
/* String newadcategory = request.getParameter("newadcategory");
String categoryimage = request.getParameter("categoryimage"); */

int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {
	conn = ConnectionProvider.getConnection();
	String s = "C://Users//Akash//eclipse-workspace//Online_Advertisement_System//src//main//webapp//admin//assets//categoryimage";
	//String s = "/Users/snehajature/eclipse-workspace/admanagement/src/main/webapp/admin/assets/categoryimage";
	MultipartRequest m = new MultipartRequest(request,s,
	1048 * 1048 * 1048);
/* 	System.out.println(m.getParameter("newadcategory"));
	System.out.println(m.getFilesystemName("categoryimage")); */

	 String query = "INSERT INTO add_categories(category,categoryImage) VALUES (?,?)";
	stmt = conn.prepareStatement(query);
	stmt.setString(1, m.getParameter("newadcategory"));
	stmt.setString(2, "admin/assets/categoryimage/" + m.getFilesystemName("categoryimage"));

	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("Category Added successfully!");
		
	}  
	
} catch (Exception ex) {
	ex.printStackTrace();
} 
%>


<script type="text/javascript">
	alert("thank you.");
	location.href = "newcategory.jsp";
</script>
