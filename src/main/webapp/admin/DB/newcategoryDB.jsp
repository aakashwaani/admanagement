
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.*"%>


<%
int done = 0;

try {
	MultipartRequest m = new MultipartRequest(request,
	"C://Users//Akash//eclipse-workspace//Online_Advertisement_System//src//main//webapp//admin//assets/categoryimage",
	1048 * 1048 * 1048);

	Connection con = ConnectionProvider.getConnection();

	String newadcategory = m.getParameter("newadcategory");
	String categoryimage = "/categoryimage/" + m.getFilesystemName("categoryimage");

	String query = "insert into add_categories(category, categoryImage) values(?,?)";
	PreparedStatement pstm = null;

	pstm = con.prepareStatement(query);
	pstm.setString(1, newadcategory);
	pstm.setString(2, categoryimage);

	done = pstm.executeUpdate();
} catch (Exception e) {
	e.printStackTrace();
}

if (done > 0) {
%>
1
<%
} else {
%>
0
<%
}
%>
<script type="text/javascript">
	alert("thank you.");
	location.href = "../newcategory.jsp";
</script>