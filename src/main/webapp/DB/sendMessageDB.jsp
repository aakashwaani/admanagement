<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String senderId = request.getParameter("senderId");
String reciverId = request.getParameter("reciverId");
String message = request.getParameter("message");
/* 
System.out.println(senderId);
System.out.println(reciverId);
System.out.println(message);
System.out.println(message); */

try {
	Connection con = ConnectionProvider.getConnection();
	PreparedStatement pstmt = con.prepareStatement("INSERT INTO chat_history (message, senderId, recieverId) VALUES (?, ?, ?)");
	pstmt.setString(1, message); // Setting the value of the first parameter to "Hello there!"
	pstmt.setString(2, senderId); // Setting the value of the third parameter to 1
	pstmt.setString(3, reciverId);

	int done = pstmt.executeUpdate();
	out.print(done);
} catch (Exception e) {
	e.printStackTrace();
}
%>