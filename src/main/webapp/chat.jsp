<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.admanagement.helper.ConnectionProvider"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
<title>Online Advertisement System</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<style>
body {
	background-color: #f4f7f6;
	margin-top: 20px;
}

.card {
	background: #fff;
	transition: .5s;
	border: 0;
	margin-bottom: 30px;
	border-radius: .55rem;
	position: relative;
	width: 100%;
	box-shadow: 0 1px 2px 0 rgb(0 0 0/ 10%);
}

.chat-app .people-list {
	width: 280px;
	position: absolute;
	left: 0;
	top: 0;
	padding: 20px;
	z-index: 7
}

.chat-app .chat {
	margin-left: 280px;
	border-left: 1px solid #eaeaea
}

.people-list {
	-moz-transition: .5s;
	-o-transition: .5s;
	-webkit-transition: .5s;
	transition: .5s
}

.people-list .chat-list li {
	padding: 10px 15px;
	list-style: none;
	border-radius: 3px
}

.people-list .chat-list li:hover {
	background: #efefef;
	cursor: pointer
}

.people-list .chat-list li.active {
	background: #efefef
}

.people-list .chat-list li .name {
	font-size: 15px
}

.people-list .chat-list img {
	width: 45px;
	border-radius: 50%
}

.people-list img {
	float: left;
	border-radius: 50%
}

.people-list .about {
	float: left;
	padding-left: 8px
}

.people-list .status {
	color: #999;
	font-size: 13px
}

.chat .chat-header {
	padding: 15px 20px;
	border-bottom: 2px solid #f4f7f6
}

.chat .chat-header img {
	float: left;
	border-radius: 40px;
	width: 40px
}

.chat .chat-header .chat-about {
	float: left;
	padding-left: 10px
}

.chat .chat-history {
	padding: 20px;
	border-bottom: 2px solid #fff;
	    height: 500px;
    overflow: auto;
}

.chat .chat-history ul {
	padding: 0
}

.chat .chat-history ul li {
	list-style: none;
	margin-bottom: 30px
}

.chat .chat-history ul li:last-child {
	margin-bottom: 0px
}

.chat .chat-history .message-data {
	margin-bottom: 15px
}

.chat .chat-history .message-data img {
	border-radius: 40px;
	width: 40px
}

.chat .chat-history .message-data-time {
	color: #434651;
	padding-left: 6px;
	
	
}

.chat .chat-history .message {
	color: #444;
	padding: 18px 20px;
	line-height: 26px;
	font-size: 16px;
	border-radius: 7px;
	display: inline-block;
	position: relative
}

.chat .chat-history .message:after {
	bottom: 100%;
	left: 7%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-bottom-color: #fff;
	border-width: 10px;
	margin-left: -10px
}

.chat .chat-history .my-message {
	background: #efefef
}

.chat .chat-history .my-message:after {
	bottom: 100%;
	left: 30px;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-bottom-color: #efefef;
	border-width: 10px;
	margin-left: -10px
}

.chat .chat-history .other-message {
	background: #e8f1f3;
	text-align: right
}

.chat .chat-history .other-message:after {
	border-bottom-color: #e8f1f3;
	left: 93%
}

.chat .chat-message {
	padding: 20px
}

.online, .offline, .me {
	margin-right: 2px;
	font-size: 8px;
	vertical-align: middle
}

.online {
	color: #86c541
}

.offline {
	color: #e47297
}

.me {
	color: #1d8ecd
}

.float-right {
	float: right
}

.clearfix:after {
	visibility: hidden;
	display: block;
	font-size: 0;
	content: " ";
	clear: both;
	height: 0
}

@media only screen and (max-width: 767px) {
	.chat-app .people-list {
		height: 465px;
		width: 100%;
		overflow-x: auto;
		background: #fff;
		left: -400px;
		display: none
	}
	.chat-app .people-list.open {
		left: 0
	}
	.chat-app .chat {
		margin: 0
	}
	.chat-app .chat .chat-header {
		border-radius: 0.55rem 0.55rem 0 0
	}
	.chat-app .chat-history {
		height: 300px;
		overflow-x: auto
	}
}

@media only screen and (min-width: 768px) and (max-width: 992px) {
	.chat-app .chat-list {
		height: 650px;
		overflow-x: auto
	}
	.chat-app .chat-history {
		height: 600px;
		overflow-x: auto
	}
}

@media only screen and (min-device-width: 768px) and (max-device-width:
	1024px) and (orientation: landscape) and
	(-webkit-min-device-pixel-ratio: 1) {
	.chat-app .chat-list {
		height: 480px;
		overflow-x: auto
	}
	.chat-app .chat-history {
		height: calc(100vh - 350px);
		overflow-x: auto
	}
}
</style>

<script type="text/javascript">

function getId(a){
	console.log(a)
}
</script>
<body>
	<%
	Connection con = ConnectionProvider.getConnection();
	int loginedInUserId = 6;
	String reciverId = (request.getParameter("recId"));
	Statement st = null;
	ResultSet rs = null;
	PreparedStatement pstm = null;
	System.out.println("Reciver Id :" +  reciverId);
	System.out.println("Sender Id :" + loginedInUserId);
	System.out.println("\n");


	%>
	
	
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row clearfix">
			<div class="col-lg-12">
				<div class="card chat-app">
					<div id="plist" class="people-list">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-search"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="Search...">
						</div>
						<ul class="list-unstyled chat-list mt-2 mb-0">
						<%
						st = con.createStatement();

						rs = st.executeQuery("select * from app_user where userId != " + loginedInUserId);
								while (rs.next()) {
								%>
							<li class="clearfix" onclick="sendData(<%= rs.getInt("userId")%>)"><img
								src="https://bootdey.com/img/Content/avatar/avatar1.png"
								alt="avatar" >
								<div class="about">
									<div class="name mt-2 fw-bold" ><%=rs.getString("userFirstName") + " " + rs.getString("userMiddletName") + " "
											+ rs.getString("userLastName") %></div>
								</div></li>
								
								<%
									}
								%>
							
						</ul>
					</div>


					<div class="chat">
						<div class="chat-header clearfix">
							<div class="row">
								<div class="col-lg-6">
									<a href="javascript:void(0);" data-toggle="modal"
										data-target="#view_info"> <img
										src="https://bootdey.com/img/Content/avatar/avatar2.png"
										alt="avatar">
									</a>
									<div class="chat-about">
										<h5 class="mt-2">
											<%
											try {
												
												st = con.createStatement();
												rs = st.executeQuery(("select userFirstName,userMiddletName,userLastName from app_user where userId = " + reciverId));
												while (rs.next()) {
													out.print(rs.getString("userFirstName") + " " + rs.getString("userMiddletName") + " "
													+ rs.getString("userLastName"));

												}
											} catch (Exception e) {
												e.printStackTrace();
											}
											%>
										</h5>
									</div>
								</div>

							</div>
						</div>
						<div class="chat-history" id ="chatHis">
							<ul class="m-b-0" id="dynamicMessage" style="height:500px">
								<%
								pstm = con.prepareStatement("select * from chat_history where (senderId = ? and recieverId = ?) or (senderId = ? and recieverId = ?) order by messageTime");
														//	select * from chat_history where (senderId = 5 and recieverId = 3) or (senderId = 3 and recieverId = 5);
	
								
								pstm.setInt(1, loginedInUserId);
								pstm.setString(2, reciverId);
								pstm.setString(3, reciverId);
								pstm.setInt(4, loginedInUserId);

								
								
								rs = pstm.executeQuery();
								while (rs.next()) {
									if (loginedInUserId == Integer.parseInt(rs.getString("senderId"))) {
								%>

								<li class="clearfix">
									<div class="message-data text-right">
										<span class="message-data-time"><%=rs.getString("messageTime")%></span>
										<img src="https://bootdey.com/img/Content/avatar/avatar7.png"
											alt="avatar">
									</div>
									<div class="message other-message float-right"><%=rs.getString("message")%></div>
								</li>
								<%
								} else {
								%>
								<li class="clearfix">
									<div class="message-data">
										<span class="message-data-time"><%=rs.getString("messageTime")%></span>
									</div>
									<div class="message my-message"><%=rs.getString("message")%></div>
								</li>



								<%
								}
								}
								%>


							</ul>
						</div>



						<form id="sendMessage">
							<div class="chat-message clearfix">
								<div class="input-group mb-0">
									<input type="hidden" value="<%=loginedInUserId%>" name="senderId"> 
									<input type="hidden" value="<%=reciverId%>" name="reciverId"> 
										
										
									<input type="text" class="form-control" placeholder="Enter text here..." name="message">
									<div class="input-group-prepend">
										<button type="submit" class="input-group-text">
											<i class="fa fa-send" onclick="setScroll();"></i>
										</button>
									</div>

								</div>
							</div>
						</form>
						
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="jquery-3.6.4.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>





<script type="text/javascript">
		
		function sendData(x){
			location.href="chat.jsp?recId="+x;
			$("#dynamicMessage").load('demo.jsp #dynamicMessage');

		}
		

	 function setScroll(){
		var delayInMilliseconds = 100; //1 second
		setTimeout(function() {
			var messageBody = document.querySelector('#chatHis');
			 messageBody.scrollTop = messageBody.scrollHeight - messageBody.clientHeight;
		}, delayInMilliseconds);
			 
	}

	setScroll();
	

		$(document).ready(function() {$("#sendMessage").submit(function(event) {

												event.preventDefault();
												//let f = new FormData($("#addAcademicYear")[0])

												$.ajax({
															type : 'POST',
															url : 'DB/sendMessageDB.jsp',
															data : $("#sendMessage").serialize(),
															success : function(responce) {
																
																console.log(responce.trim())
																if (responce.trim() == "1") {
																	
																	$("#sendMessage")[0].reset()
																	$("#dynamicMessage").load('chat.jsp?recId=<%= reciverId%> #dynamicMessage');
																	setScroll();

																} else {
																	console.log("Something went wrong")

																}
															}
														})
											})
							/* 				    $("#addAcademicYear").addClass('was-validated');
							 */
						});
	</script>


</body>

</html>