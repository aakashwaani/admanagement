<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
System.out.println(request.getParameter("userId"));
System.out.println(request.getParameter("status"));

String userId = request.getParameter("userId");
String status = request.getParameter("status");

Connection con = ConnectionProvider.getConnection();
PreparedStatement pstm = con.prepareStatement("update app_user set appuser_status = ? where userId = ?");

pstm.setString(1, status);
pstm.setString(2, userId);
int done = pstm.executeUpdate();
if(done == 0){System.out.println("Something went wrong");}
response.sendRedirect("../View_userDetails.jsp");

%>