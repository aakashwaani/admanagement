<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Online Advertisement System</title>
<jsp:include page="links.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section class="breadcumb_area">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-12 text-center">
					<div class="breadcumb_section">
						<div class="page_title">
							<h3>Sign Up</h3>
						</div>
						<div class="page_pagination">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li><i class="fa fa-angle-right" aria-hidden="true"></i></li>
								<li>Sign Up</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



    <section class="login">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-4 col-sm-offset-4">
                    <div class="login-panel widget">
                        <div class="login-body">
                            <form>
                                <div class="form-group">
                                    <label class="control-label">Email <span class="required">*</span></label>
                                    <input type="text" placeholder="Email Address" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Password <span class="required">*</span></label>
                                    <input type="password" placeholder="Password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Confirm Password <span
                                            class="required">*</span></label>
                                    <input type="password" placeholder="Confirm Password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-block btn-primary">Sign Up</button>
                                </div>
                            </form>
                        </div>
                        
                    </div>
                    <p class="text-center margin-bottom-none"><a href="login.jsp"><strong>Already Have an account?
                            </strong></a></p>
                </div>
            </div>
        </div>
    </section>


	<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>