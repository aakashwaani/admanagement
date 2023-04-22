<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page import="java.sql.*"%>

<%
Connection con = ConnectionProvider.getConnection();
String s = "C:/Users/Akash/eclipse-workspace/Online_Advertisement_System/src/main/webapp/shopkeeper/assets/img";
MultipartRequest m = new MultipartRequest(request, s, 1024 * 1024 * 1024);
String sql = "";
PreparedStatement ps = null;
int done = 0;

String adTitle = m.getParameter("adtitle");
String adCategory = m.getParameter("adcategory");
String adDetails = m.getParameter("addetails");
String photo = "/img/" + m.getFilesystemName("adImage");
String photo1 = m.getFilesystemName("adImage");
String adId = m.getParameter("adId");

if (photo1 == null) {

	sql = "update ads set adTitle=?, adCategory=?, adDetails=? where adId=?";
	ps = con.prepareStatement(sql);
	ps.setString(1, adTitle);
	ps.setString(2, adCategory);
	ps.setString(3, adDetails);
	ps.setString(4, adId);
	done = ps.executeUpdate();

} else {
	sql = "update ads set adTitle=?, adCategory=?, adDetails=?, adImage=? where adId=?";
	ps = con.prepareStatement(sql);
	ps.setString(1, adTitle);
	ps.setString(2, adCategory);
	ps.setString(3, adDetails);
	ps.setString(4, photo);
	ps.setString(5, adId);
	done = ps.executeUpdate();
}

if (done > 0) {
%>


<script>
    alert("Update Success!!");
    location.href="adlist.jsp?adId=<%=adId%>";
   </script>
<%
} else {
%>
<script>
    alert("Failed Try Again!!");
    location.href="updateadDB.jsp?adId=<%=adId%>
	";
</script>
<%
}
%>
















