<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="com.admanagement.helper.ConnectionProvider"%>

<%
   
   Connection con = ConnectionProvider.getConnection();
   String sql = "select adEmail from app_user where adEmail=?";
   PreparedStatement ps = con.prepareStatement(sql);
   ps.setString(1, request.getParameter("email"));
   ResultSet rs = ps.executeQuery();
   if(rs.next()){
	   out.print("1"); // Success
   }else{
	   out.print("0"); // Fail
   }
%>