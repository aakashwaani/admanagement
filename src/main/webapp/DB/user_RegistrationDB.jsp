<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%

String s="/Users/snehajature/eclipse-workspace/admanagement/src/main/webapp/assets/images";
MultipartRequest m = new MultipartRequest(request,s,1024*1024*1024);

String fname = m.getParameter("fname");
String mname = m.getParameter("mname");
String lname = m.getParameter("lname");
String MOB = m.getParameter("MOB");
String email = m.getParameter("email");
String password = m.getParameter("password");
String userRole = m.getParameter("roleName");
String photo="../images/"+m.getFilesystemName("image");


int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	conn = ConnectionProvider.getConnection();
	String query = "insert into  app_user (userFirstName, userMiddletName, userLastName,userMOB,userEmail,userpassword,userRole,user_Image) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	stmt = conn.prepareStatement(query);
	
	
	stmt.setString(1, fname);
	stmt.setString(2, mname);
	stmt.setString(3, lname);
	stmt.setString(4, MOB);
	stmt.setString(5, email);
	stmt.setString(6, password);
	stmt.setString(7, userRole);
	stmt.setString(8, photo);


	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("Form Submitted successfully!");
	}
} catch (SQLException ex) {
	ex.printStackTrace();

}
%>
<script type="text/javascript">
	alert("thank you.");
	location.href = "../User_Registration.jsp";
</script>