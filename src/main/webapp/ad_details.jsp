<%@page import="com.admanagement.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>             


	<div id="page-wrapper">
		<div class="main-page">
			<div class="container">

			<!-- <div class="container" id="category"> -->

				<div class="container" id="category"> 
				
   
</div>
</div>
	
	
</div></div>


	<script type="text/javascript">
	
	let category = [ "Furniture & Decors", "Sports", "Mobiles and Tablets",
        "Electronics", "Home Appliances", "Kids & Toys", "Fashion",
        "Books & Hobbies" ];	
	let images=[
		"https://images.unsplash.com/photo-1634712282287-14ed57b9cc89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnVybml0dXJlJTIwZGVzaWdufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
			"https://images.unsplash.com/photo-1602211844066-d3bb556e983b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fHNwb3J0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60/800x500",
					"https://images.unsplash.com/photo-1516163024308-a3328ec040bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG1vYmlsZSUyMHRhYmxldHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60/800x500",
							"https://images.unsplash.com/photo-1550009158-9ebf69173e03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZWxlY3Ryb25pY3N8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60/800x500",
									"https://images.unsplash.com/photo-1570222094114-d054a817e56b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXBwbGlhbmNlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60/800x500",
											"https://images.unsplash.com/photo-1566576912321-d58ddd7a6088?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dG95c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60/800x500",
													"https://images.unsplash.com/photo-1479064555552-3ef4979f8908?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60/800x500",
															"https://images.unsplash.com/photo-1524578271613-d550eacf6090?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60/800x500"
		
	];
let text = "",text1="";
let k=0;
for(let i = 0; i < 2;i++ ) {
	console.log(i);
	text +=`<div class="row gx-5 justify-content-center py-4">`;
	for(let j=0;j<4;j++){
		text += `<div class="col-md-6 col-lg-4 col-xl-3 mb-5 `+k+`">
    <div class="demo">
    <a class="card lift" href="View_ad.jsp?adcategory="`+adcategory[k]+`">
        <img class="card-img-top" src=`+images[k]+` alt="...">
        <div class="card-body text-center py-3">
            <h6 class="card-title mb-0">`+category[k]+`</h6>
        </div>
    </a>
    </div>
    </div>`;
		k++;
	}
text+=`</div>`;

}

document.getElementById("adcategory").innerHTML = text;
	</script>
</body>
</html>
