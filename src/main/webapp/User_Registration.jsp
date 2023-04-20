<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.admanagement.helper.ConnectionProvider"%>
    <%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>
<style type="text/css">

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


 
 
  <section class="Registration">
        <div class="container">
        <div class="row d-flex justify-content-center">
          
                <div class="col-md-6 ">
                    <div class="widget top-space margin-bottom-none">
                        <div class="widget-header">
                            <h1>Contact Us</h1>
                        </div>
                        <form method="POST" action="DB/user_RegistrationDB.jsp" enctype="multipart/form-data" class="needs-validation" novalidate>
                        
                                    
                                    <div class="form-group">
                                        <label for="name">First Name</label> <input type="text" name="fname"
								id="fname"  placeholder="Enter First Name" class="form-control"
								required>
                                    </div>
                                    
                               
                            
                            <div class="form-group">
                                <label for="name">Middle Name</label> <input type="text" name="mname"
								id="mname"  placeholder="Enter Middle Name" class="form-control"
								required>
                               
                            </div>
                            <div class="form-group">
                                <label for="name">Last Name</label> <input type="text" name="lname"
								id="lname"  placeholder="Enter Last Name" class="form-control"
								required>
                               
                            </div>
                            
                            <div class="form-group">
                                <label for="number">Mobile Number</label> <input type="number" name="MOB"
								id="MOB"  placeholder="Enter number" class="form-control"
								required>
                               
                            </div>
                            
                            <div class="form-group">
                                <label for="email">Email</label> <input type="email" name="email"
								id="email"  placeholder="Enter Email" class="form-control"
								required>
                               
                            </div>
                            
                            <div class="form-group">
                                <label for="password">Password</label> <input type="password" name="password"
								id="password"  placeholder="Enter password" class="form-control"
								required>      
                            </div>
                            
                            
                            <div class="form-group">
						<label>User Role</label>
						<select class="form-control" id="roleName" name="roleName">
						<option value="">---Select Role---</option>
						 <%
						 Connection con =  ConnectionProvider.getConnection();
					       String sql = "select * from user_role";
					      PreparedStatement ps = con.prepareStatement(sql);
					      ResultSet rs = ps.executeQuery();
					      
					      while(rs.next()){
					        %>
							      <option value="<%=rs.getString("roleId") %>"><%=rs.getString("userRole") %></option>
							      <%} %>
						</select>
						</div>
						
						
						 <div class="form-group">
                                         <label for="file">Image</label> <input type="file" name="image"
								id="image" placeholder="Choose File" class="form-control"
								required>                     
                             </div>
                            
                            
                            <div class="text-right">
                                <input type="submit" class="btn btn-primary" value="Register">
                            </div>
                        </form>
                    </div>
                </div>
   </div>
   </div>
   </section>
   
 
 
 <jsp:include page="footer.jsp"></jsp:include>                       
                        
</body>
</html>