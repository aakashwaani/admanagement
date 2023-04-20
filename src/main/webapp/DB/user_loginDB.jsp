<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="com.admanagement.helper.ConnectionProvider"%>


<%
Connection con = null;
PreparedStatement stmt = null;

	con = ConnectionProvider.getConnection();
  String sql = "select * from app_user where userEmail=? and userpassword=?";
  PreparedStatement ps = con.prepareStatement(sql);
  ps.setString(1, request.getParameter("email"));
  ps.setString(2, request.getParameter("password"));
  ResultSet rs = ps.executeQuery();
  if(rs.next()){
 	 session.setAttribute("userId", rs.getString("userId"));
 	 session.setAttribute("email", rs.getString("userEmail"));
 	 response.sendRedirect("../index.jsp");
  }else{
 %>
  <script>
    alert("Email or Password are Wrong!!");
    location.href="../user_login.jsp";
  </script>
 <%} %>
