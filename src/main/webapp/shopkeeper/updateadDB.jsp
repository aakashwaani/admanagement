<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
String adtitle = request.getParameter("adtitle");
String adcategory = request.getParameter("adcategory");
String addetails = request.getParameter("addetails");
String image = request.getParameter("image");
String adId = request.getParameter("adId");

int i = 0;
try {
	Connection con = ConnectionProvider.getConnection();
	String query = "UPDATE ads SET adtitle = ?,adcategory= ?, addetails=?,image=? WHERE adId = ?; ";
	PreparedStatement pstm = con.prepareStatement(query);
	pstm.setString(1, adtitle);
	pstm.setString(2, adcategory);
	pstm.setString(3, addetails);
	pstm.setString(4, image);
	pstm.setString(5, adId);

	i = pstm.executeUpdate();
	System.out.println(i);
	out.println(i);

} catch (Exception e) {
	e.printStackTrace();
}
%>