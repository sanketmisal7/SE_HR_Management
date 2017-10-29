<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Submit Job</title>
<!-- Bootstrap stylesheet -->
<link href="<%=request.getContextPath() %>/user/css/bootstrap.css" rel="stylesheet">
<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i,700%7CSource+Sans+Pro:300,400,600,700" rel="stylesheet"> 
<!-- stylesheet -->
<link href="<%=request.getContextPath() %>/user/css/style.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath() %>/user/css/style_cyan.css" title="style_cyan" rel="alternate stylesheet" type="text/css"/>
<link href="<%=request.getContextPath() %>/user/css/style_red.css" title="style_red" rel="alternate stylesheet" type="text/css"/>
<link href="<%=request.getContextPath() %>/user/css/style_green.css" title="style_green" rel="alternate stylesheet" type="text/css"/>
<link href="<%=request.getContextPath() %>/user/css/style_blue.css" title="style_blue" rel="alternate stylesheet" type="text/css"/>
<!-- font-awesome -->
<link href="<%=request.getContextPath() %>/user/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- crousel css -->
<link href="<%=request.getContextPath() %>/user/css/owl.carousel.css" rel="stylesheet" type="text/css" />
<!--bootstrap select-->
<link href="<%=request.getContextPath() %>/user/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@include file="../user/header.jsp" %>
<!-- header end here -->

<!-- submit-job start here -->
<%if((request.getAttribute("msg")!=null))
      {
    	  %>
      <div class="alert alert-info">
            <strong><%= request.getAttribute("msg") %></strong>
            
        </div>
      <%
		request.setAttribute("msg", null);
      } %>

	<div id="submit-job">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- submit-job-content start here -->
					<div class="submit-job-content">
						<h1>Submit a job</h1>
						<ul class="list-inline">
							<li>
								<a href="<%=request.getContextPath() %>/user/index.jsp">Home</a>
							</li>
							<li>></li>
							<li>
								<a href="<%=request.getContextPath() %>/user/submit-job.jsp">Submit a job</a>
							</li>
						</ul>
					</div>
				<!-- submit-job-content end here -->
				</div>
			</div>
		</div>
	</div>
<!-- submit-job end here -->


<!-- submit-job-form start here -->
	<div id="submit-job-form">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- submit-form start here -->
					<div class="submit-form">
						<div class="border"></div>
						<div class="border1"></div>
						<form class="form-horizontal" action="<%=request.getContextPath()%>/submitjobAdmin" method="post">
							<fieldset>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Event name</label>
										<input class="form-control" id="eventname" placeholder=" " value="" name="eventname" required="" type="text">
									</div>
									<div class="col-sm-6">
										<label>No of employees</label>
										<input class="form-control" placeholder="" id="num" value="" name="num" required="" type="number">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Location (optional)</label>
										<input class="form-control" id="location" placeholder="e.g. albany*" value="" name="location" required="" type="text">
									</div>
									<div class="col-sm-6">
										<label>Job category</label>
										<select class="selectpicker form-control" name="jobcategory">
											<option selected="" value="skilled" >skilled</option>
											<option value="unskilled">unskilled</option>
											
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>date</label>
										<input  type="date" class="form-control" id="date" placeholder="e.g. 07/27/17 *" value="" name="date" required="" >
									</div>
									<div class="col-sm-6">
										<label>day</label>
										<input class="form-control" placeholder=" e.g. monday*" id="day" value="" name="day" required="" type="text">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Start time</label>
										<input type="time" "form-control" id="starttime" placeholder="e.g. 10.00  *" value="" name="starttime" required="" type="number">
									</div>
									<div class="col-sm-6">
										<label>End time </label>
										<input type="time" "form-control" placeholder=" e.g. 10.00 *" id="endtime" value="" name="endtime" required="" type="number">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<label>Event Description</label>
										<textarea class="form-control" id="eventdes" rows="10" name="eventdes" placeholder="Your description *" required=""></textarea>
									</div>
									
								</div>
																<div class="button">
									<button type="submit" value="Submit" class="btn btn-primary btnus">SUBMIT A JOB</button>
								</div>
							</fieldset>
						</form>
					</div>
					<!-- submit-form end here -->
				</div>
			</div>
		</div>
	</div>
<!-- submit-job-form end here -->


<!-- Footer start here -->
	<footer>
		<div class="container">
			<div class="bor col-md-12 col-sm-12 col-xs-12 padd0">
				<div class="col-sm-5 col-md-5 col-xs-12 subscribe">
					<h5>Subscribe Our Newsletter</h5>
					<form name="subscribe">
						<div class="form-group">
							<div class="input-group">
								<input type="text" placeholder="Enter your Email Address" id="subscribe_email1" name="subscribe_email" value="" class="form-control">
								<div class="input-group-btn">
									<button class="btn btn-default btn-lg" type="submit"><i class="fa fa-paper-plane-o" aria-hidden="true"></i> SUBSCRIBE</button>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="col-sm-4 col-md-4 col-xs-12 follow">
					<h5>Follow us on</h5>
					<ul class="list-inline socialicon">
						<li>
							<a href="https://www.facebook.com/" target="_blank">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="https://twitter.com/" target="_blank">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="https://plus.google.com/" target="_blank">
								<i class="fa fa-google-plus" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="https://www.instagram.com/" target="_blank">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="https://in.linkedin.com/" target="_blank">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</a>
						</li>	
					</ul>
				</div>
				<div class="col-sm-3 col-md-3 col-xs-12 need">
					<h5>Need Help ?</h5>
					<h6><i class="fa fa-phone" aria-hidden="true"></i> CALL US : <span>1800-0000-1234</span></h6>
				</div>	
			</div>
			<div class="row">
				<div class="col-sm-3 col-md-3 col-xs-12 matter">
					<img src="images/foot-logo.png"  class="img-responsive footerlogochange" alt="foot-logo" title="foot-logo" />
					<p>Aliquam hendrit rutrum iaculis nullam ondimentum mal uada velit beum donec sit amet tristique erosam amet risus mollis malesuada quis quis nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultr amet tristique erosam.</p>
						
				</div>
				<div class="col-sm-3 col-md-3 col-xs-12 info">
					<h5>Information</h5>
					<ul class="list-unstyled">
						<li>
							<a href="about.jsp"><i class="fa fa-caret-right" aria-hidden="true"></i>About Us</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Help Desk</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Support</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Privacy Policy</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Terms & Conditions</a>
						</li>
					</ul>
				</div>	
				<div class="col-sm-3 col-md-3 col-xs-12 use">
					<h5>Useful Links</h5>
					<ul class="list-unstyled">
						<li>
							<a href="<%=request.getContextPath() %>/user/index.jsp"><i class="fa fa-caret-right" aria-hidden="true"></i>Homepage</a>
						</li>
						<li>
							<a href="<%=request.getContextPath() %>/user/submit-job.jsp"><i class="fa fa-caret-right" aria-hidden="true"></i>Submit Job</a>
						</li>
						<li>
							<a href="jobs.jsp"><i class="fa fa-caret-right" aria-hidden="true"></i>All Candidates</a>
						</li>
						<li>
							<a href="blog.jsp"><i class="fa fa-caret-right" aria-hidden="true"></i>Latest Blogs</a>
						</li>
						<li>
							<a href="jobs.jsp"><i class="fa fa-caret-right" aria-hidden="true"></i>Jobs</a>
						</li>
					</ul>
				</div>	
			
				<div class="col-sm-3 col-md-3 col-xs-12 padd0">
					<h5>Get in touch</h5>
					<form class="form-horizontal form" method="post">
						<fieldset>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="input-username" placeholder="Name" value="" name="email" required="" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="email" placeholder="Email Address" value="" name="email" required="" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group col-sm-12">
									<input type="text" placeholder="Message" id="message" name="message" value="" class="form-control big">
									<div class="input-group-btn">
										<button class="btn btn-default btn-lg" type="submit"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
									</div>
								</div>
							</div>
						</fieldset>
					</form>
				</div>	
			</div>
		</div>
	</footer>
	<div class="powered">
		<div class="container">
			<p>Copyright &#169; 2017. All Rights Reserved</p>
		</div>
	</div>
<!-- Footer end here -->
<!-- jquery -->
<script src="<%=request.getContextPath() %>/user/js/jquery.2.1.1.min.js" type="text/javascript"></script>
<!-- bootstrap js -->
<script src="<%=request.getContextPath() %>/user/js/bootstrap.min.js" type="text/javascript"></script>
<!--bootstrap select-->
<script src="<%=request.getContextPath() %>/user/js/bootstrap-select.js" type="text/javascript"></script>
<!-- owlcarousel js -->
<script src="<%=request.getContextPath() %>/user/js/owl.carousel.min.js" type="text/javascript"></script>
<!--internal js-->
<script src="<%=request.getContextPath() %>/user/js/internal.js" type="text/javascript"></script>
<!-- color switcher-->
<script src="<%=request.getContextPath() %>/user/js/switcher.js" type="text/javascript"></script>
</body>
</html>
