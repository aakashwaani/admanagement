<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

     <%@page import="java.sql.*" %>
    
    <%
     String shopId= request.getParameter("shopId");
     
     Connection con = ConnectionProvider.getConnection();
     String sql = "delete from shop where shopId=?";
     PreparedStatement ps = con.prepareStatement(sql);
     ps.setString(1, shopId);
     int done = ps.executeUpdate();
     if(done>0){
    %>
    <script>
     alert("Deleted Success!!");
     location.href="view_shopDetails.jsp";
    </script>
    <%}else{ %>
    <script>
     alert("Failed Try Again!!");
     location.href="view_shopDetails.jsp";
    </script>
    <%} %>