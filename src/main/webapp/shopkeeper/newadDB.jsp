
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>



<%
String adtitle = request.getParameter("adtitle");
String adcategory = request.getParameter("adcategory");
String adprice = request.getParameter("adprice");
String addetails = request.getParameter("addetails");
String adimage = request.getParameter("adimage");
String shopname = request.getParameter("shopname");
String shopaddress = request.getParameter("shopaddress");
String shoperemail = request.getParameter("shoperemail");
String shoperphone = request.getParameter("shoperphone");
int done = 0;
Connection conn = null;
PreparedStatement stmt = null;

try {

	MultipartRequest m = new MultipartRequest(request,
	"C://Users//Akash//eclipse-workspace//Online_Advertisement_System//src//main//webapp//shopkeeper//assets//img", 1048 * 1048 * 1048);

	conn = ConnectionProvider.getConnection();
	String query = "INSERT INTO ads (adtitle, adcategory, adprice, addetails, shopname, shopaddress, shoperemail, shoperphone, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	stmt = conn.prepareStatement(query);
	stmt.setString(1, adtitle);
	stmt.setString(2, adcategory);
	stmt.setString(3, adprice);
	stmt.setString(4, addetails);
	stmt.setString(5, shopname);
	stmt.setString(6, shopaddress);
	stmt.setString(7, shoperemail);
	stmt.setString(8, shoperphone);
	stmt.setString(9, "/img/" + m.getFilesystemName(""));
	int rowsInserted = stmt.executeUpdate();
	if (rowsInserted > 0) {
		System.out.println("A new ad was inserted successfully!");
	}
} catch (SQLException ex) {
	ex.printStackTrace();
} finally {
	if (stmt != null) {
		stmt.close();
	}
	if (conn != null) {
		conn.close();
	}
}
%>