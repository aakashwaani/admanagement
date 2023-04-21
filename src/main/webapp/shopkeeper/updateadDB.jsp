<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%


String s="C://Users//Akash//eclipse-workspace//AdvertiseManagementSystem//src//main//webapp//admin_panel//registered_users//assets//img";
MultipartRequest m = new MultipartRequest(request,s,1024*1024*1024);
Connection con = ConnectionProvider.getConnection();
String sql = "";
PreparedStatement ps = null;
int done = 0;






String adTitle = m.getParameter("adtitle");
String adCategory = m.getParameter("adcategory");
String adDetails = m.getParameter("addetails");
String photo="image/"+m.getFilesystemName("image");
String photo1=m.getFilesystemName("image");
String adId = m.getParameter("adId");

if(photo1==null){
	 
	 sql = "update ads set adTitle=?, adCategory=?, adDetails=?, adImage=? where adId=?";
	 ps = con.prepareStatement(sql);	
	 ps.setString(1, adTitle);
	 ps.setString(2, adCategory);
	 ps.setString(3, adDetails);
	 ps.setString(4, adId);
	 done = ps.executeUpdate();
	 
}else{
	 sql = "update ads set adTitle=?, adCategory=?, adDetails=?, adImage=? where adId=?";
	 ps = con.prepareStatement(sql);	
	 ps.setString(1, adTitle);
	 ps.setString(2, adCategory);
	 ps.setString(3, adDetails);
	 ps.setString(4, photo);
	 ps.setString(5, adId);
	 done = ps.executeUpdate();
}

if(done>0){ %>
	 

<script>
    alert("Update Success!!");
    location.href="adlist.jsp%";
   </script>
<%}else{ %>
<script>
    alert("Failed Try Again!!");
    location.href="updatead.jsp?%";
   </script>
<%} %>
















