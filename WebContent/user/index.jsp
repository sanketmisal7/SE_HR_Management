<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Home</title>
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
<%@include file="header.jsp" %>



<!-- slider start here -->
	<div class="slideshow owl-carousel">
		<div class="item">
			<img src="images/slider-1.jpg" alt="slider" title="slider" class="img-responsive"/>
			<div class="slide-detail">
				<div class="container">
					<div class="slider-caption">
						<div class="off"></div>
						<h1>Find Your Job</h1>
						<div class="col-md-4 col-sm-4 col-xs-12 paddleft">
							<select class="selectpicker form-control" name="allcate">
								<option value="1">All Category</option>
								<option value="0">Category 1</option>
								<option value="0">Category 2</option>
								<option value="0">Category 3</option>
							</select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<select class="selectpicker form-control" name=	"location">
								<option value="1">Select Location</option>
								<option value="0">Location 1</option>
								<option value="0">Location 2</option>
								<option value="0">Location 3</option>
							</select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12 paddright">
							<div class="input-group">
								<input name="s" class="form-control" value="" placeholder="Search" type="text">
								<span>
									<button type="submit" class="btnsrch" onclick="location.href='jobs.jsp'"><i class="fa fa-search"></i></button>
								</span>
							</div>
						</div>
						<div class="center">
							<button class="btn-default">ADVANCE JOB SEARCH <i class="fa fa-plus-square-o" aria-hidden="true"></i>
							</button>
						</div>	
					</div>
				</div>
			</div>
		</div>
		<div class="item">
			<img src="images/slider-2.jpg" alt="slider" title="slider" class="img-responsive"/>
			<div class="slide-detail">
				<div class="container">
					<div class="slider-caption">
						<div class="off"></div>
						<h1>Find Your Job</h1>
						<div class="col-md-4 col-sm-4 col-xs-12 paddleft">
							<select class="selectpicker form-control" name="allcate">
								<option value="1">All Category</option>
								<option value="0">Category 1</option>
								<option value="0">Category 2</option>
								<option value="0">Category 3</option>
							</select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<select class="selectpicker form-control" name=	"location">
								<option value="1">Select Location</option>
								<option value="0">Location 1</option>
								<option value="0">Location 2</option>
								<option value="0">Location 3</option>
							</select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12 paddright">
							<div class="input-group">
								<input name="s" class="form-control" value="" placeholder="Search" type="text">
								<span>
									<button type="submit" class="btnsrch" onclick="location.href='jobs.jsp'"><i class="fa fa-search"></i></button>
								</span>
							</div>
						</div>
						<div class="center">
							<button class="btn-default">ADVANCE JOB SEARCH <i class="fa fa-plus-square-o" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>	
		<div class="item">
			<img src="images/slider-3.jpg" alt="slider" title="slider" class="img-responsive"/>
			<div class="slide-detail">
				<div class="container">
					<div class="slider-caption">
						<div class="off"></div>
						<h1>Find Your Job</h1>
						<div class="col-md-4 col-sm-4 col-xs-12 paddleft">
							<select class="selectpicker form-control" name="allcate">
								<option value="1">All Category</option>
								<option value="0">Category 1</option>
								<option value="0">Category 2</option>
								<option value="0">Category 3</option>
							</select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<select class="selectpicker form-control" name=	"location">
								<option value="1">Select Location</option>
								<option value="0">Location 1</option>
								<option value="0">Location 2</option>
								<option value="0">Location 3</option>
							</select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12 paddright">
							<div class="input-group">
								<input name="s" class="form-control" value="" placeholder="Search" type="text">
								<span>
									<button type="submit" class="btnsrch" onclick="location.href='jobs.html'"><i class="fa fa-search"></i></button>
								</span>
							</div>
						</div>
						<div class="center">
							<button class="btn-default">ADVANCE JOB SEARCH <i class="fa fa-plus-square-o" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>	
		<div class="item">
			<img src="images/slider-1.jpg" alt="slider" title="slider" class="img-responsive"/>
			<div class="slide-detail">
				<div class="container">
					<div class="slider-caption">
						<div class="off"></div>
						<h1>Find Your Job</h1>
						<div class="col-md-4 col-sm-4 col-xs-12 paddleft">
							<select class="selectpicker form-control" name="allcate">
								<option value="1">All Category</option>
								<option value="0">Category 1</option>
								<option value="0">Category 2</option>
								<option value="0">Category 3</option>
							</select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<select class="selectpicker form-control" name=	"location">
								<option value="1">Select Location</option>
								<option value="0">Location 1</option>
								<option value="0">Location 2</option>
								<option value="0">Location 3</option>
							</select>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12 paddright">
							<div class="input-group">
								<input name="s" class="form-control" value="" placeholder="Search" type="text">
								<span>
									<button type="submit" class="btnsrch" onclick="location.href='jobs.html'"><i class="fa fa-search"></i></button>
								</span>
							</div>
						</div>
						<div class="center">
							<button class="btn-default">ADVANCE JOB SEARCH <i class="fa fa-plus-square-o" aria-hidden="true"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
<!-- slider end here -->

<!-- featured start here -->
	<div id="featured">
		<div class="container">
			<div class="row">
				<!-- featured-jobs start here -->
				<div class="featured-jobs">
					<h1>FEATURED JOBS</h1>
					<div class="border"></div>
					<div class="border1"></div>
				</div>
				<!-- featured-jobs end here -->
				
				
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="product-box">
						<div class="image">
							<a href="jobs.jsp">
								<img class="img-responsive" src="images/p1.jpg" alt="p1" title="p1"/>
							</a>	
								<div class="buttons">
									<div class="open-down">
										<button type="button" class="rotate1">
											<i class="fa fa-link" aria-hidden="true"></i>
										</button>
										<button type="button" class="rotate1">
											<i class="fa fa-search" aria-hidden="true"></i>
										</button>
									</div>
								</div>		
						</div>		
						<div class="matter">
							<h1>IT Department Manager</h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Part Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Albany</a>
								</li>
							</ul>
							<p>We are looking for some technical expert to handle some audio and lighting system   </p>
						</div>
						<button type="button" class="btn btn-info" onclick="location.href='jobs.jsp'">VIEW MORE</button>
						<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.jsp'">APPLY NOW</button>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="product-box">
						<div class="image">
							<a href="jobs.jsp">
								<img class="img-responsive" src="images/p2.jpg" alt="p2" title="p2"/>
							</a>	
								<div class="buttons">
									<div class="open-down">
										<button type="button" class="rotate1">
											<i class="fa fa-link" aria-hidden="true"></i>
										</button>
										<button type="button" class="rotate1">
											<i class="fa fa-search" aria-hidden="true"></i>
										</button>
									</div>
								</div>		
						</div>		
						<div class="matter">
							<h1>Photographer</h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Part Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Albany</a>
								</li>
							</ul>
							<p> We have birthday event so we need some professional photographer who can take beautiful pictures </p>
						</div>
						<button type="button" class="btn btn-info" onclick="location.href='jobs.jsp'">VIEW MORE</button>
						<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.jsp'">APPLY NOW</button>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="product-box">
						<div class="image">
							<a href="jobs.jsp">
								<img class="img-responsive" src="images/p3.jpg" alt="p3" title="p3"/>
							</a>	
								<div class="buttons">
									<div class="open-down">
										<button type="button" class="rotate1">
											<i class="fa fa-link" aria-hidden="true"></i>
										</button>
										<button type="button" class="rotate1">
											<i class="fa fa-search" aria-hidden="true"></i>
										</button>
									</div>
								</div>		
						</div>		
						<div class="matter">
							<h1>Car washer</h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Part Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i>Alabny</a>
								</li>
							</ul>
							<p> We have some events going on so wee need Car washer team, who are expert in washing cars </p>
						</div>
						<button type="button" class="btn btn-info" onclick="location.href='jobs.jsp'">VIEW MORE</button>
						<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.jsp'">APPLY NOW</button>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="product-box">
						<div class="image">
							<a href="jobs.jsp">
								<img class="img-responsive" src="images/p4.jpg" alt="p4" title="p4"/>
							</a>	
								<div class="buttons">
									<div class="open-down">
										<button type="button" class="rotate1">
											<i class="fa fa-link" aria-hidden="true"></i>
										</button>
										<button type="button" class="rotate1">
											<i class="fa fa-search" aria-hidden="true"></i>
										</button>
									</div>
								</div>		
						</div>		
						<div class="matter">
							<h1>Worker</h1>
							<ul class="list-inline">
								<li>
									<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Part Time</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Albany</a>
								</li>
							</ul>
							<p>Some worker needed for shift some heavy materials. Please contact me for mre information </p>
						</div>
						<button type="button" class="btn btn-info" onclick="location.href='jobs.jsp'">VIEW MORE</button>
						<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.jsp'">APPLY NOW</button>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- browse start here -->
	<div class="browse">
		<div class="container">
			<div class="row">
				<!-- featured-jobs start here -->
				<div class="browse-jobs">
					<h1>BROWSE JOBS</h1>
					<div class="border"></div>
					<div class="border1"></div>
				</div>
				<!-- featured-jobs end here -->
				
				
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="jobs.jsp">
							<div class="boxbor">
								<i class="fa fa-desktop" aria-hidden="true"></i>
								<span>Information Technology</span>
							</div>
						</a>
					</div>	
				</div>
				
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="jobs.jsp">
							<div class="boxbor">
								<i class="fa fa-university" aria-hidden="true"></i>
								<span>Banking</span>
							</div>
						</a>
					</div>
				</div>
				
			    <div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="jobs.jsp">
							<div class="boxbor">
							<i class="fa fa-money" aria-hidden="true"></i>
								<span>Accounting</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="jobs.jsp">
							<div class="boxbor">
								<i class="fa fa-bar-chart" aria-hidden="true"></i>
									<span>Sales & marketing</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="jobs.jsp">
							<div class="boxbor">
								<i class="fa fa-tachometer" aria-hidden="true"></i>
								<span>Digital & Creative</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="jobs.jsp">
							<div class="boxbor">
							<i class="fa fa-suitcase" aria-hidden="true"></i>
								<span>Management</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="jobs.jsp">
							<div class="boxbor">
								<i class="fa fa-gavel" aria-hidden="true"></i>
									<span>Legal Jobs</span>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="matter">
						<a href="jobs.jsp">
							<div class="boxbor">
							<i class="fa fa-tags" aria-hidden="true"></i>
								<span>Retail</span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- browse end here -->

<!-- testimonial start here -->
	<div id="testimonial">
		<div class="container">
			<div class="row">
				<!-- testimonial-jobs start here -->
				<div class="testimonial-jobs">
					<h1>TESTIMONIAL</h1>
					<div class="border"></div>
					<div class="border1"></div>
				</div>
				<!-- testimonial-jobs end here -->
				
				<div id="testimonials" class="col-md-12 col-sm-12 col-xs-12 owl-carousel">
					<div class="item">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="photo">
								<img src="images/pic-1.png" class="img-responsive" alt="pic-1" title="pic-1" />
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>There are many variations of passages of Lorem Ipsum available, temporary  type  words </p>
								<span class="fa fa-quote-right" aria-hidden="true"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="photo">
								<img src="images/pic-2.png" class="img-responsive" alt="pic-2" title="pic-2" />
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>There are many variations of passages of Lorem Ipsum available, temporary  type  words </p>
								<span class="fa fa-quote-right" aria-hidden="true"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="photo">
								<img src="images/pic-3.png" class="img-responsive" alt="pic-3" title="pic-3" />
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>There are many variations of passages of Lorem Ipsum available, temporary  type  words </p>
								<span class="fa fa-quote-right" aria-hidden="true"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="photo">
								<img src="images/pic-1.png" class="img-responsive" alt="pic-1" title="pic-1" />
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>There are many variations of passages of Lorem Ipsum available, temporary  type  words </p>
								<span class="fa fa-quote-right" aria-hidden="true"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="photo">
								<img src="images/pic-2.png" class="img-responsive" alt="pic-2" title="pic-2" />
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>There are many variations of passages of Lorem Ipsum available, temporary  type  words </p>
								<span class="fa fa-quote-right" aria-hidden="true"></span>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="photo">
								<img src="images/pic-3.png" class="img-responsive" alt="pic-3" title="pic-3" />
								<i class="fa fa-quote-left" aria-hidden="true"></i>
								<p>There are many variations of passages of Lorem Ipsum available, temporary  type  words </p>
								<span class="fa fa-quote-right" aria-hidden="true"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- testimonial end here -->




<!-- latest start here -->
<div id="latest">
		<div class="container">
			<div class="row">
				<!-- latest-candidate start here -->
				<div class="latest-candidate">
					<h1>OUR LATEST CANDIDATES</h1>
					<div class="border"></div>
					<div class="border1"></div>
				</div>
				<!-- latest-candidate end here -->
				
				
				<div id="latests" class="owl-carousel">
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-1.png" class="img-responsive" alt="cand-1" title="cand-1" />
								<h1>John Doe</h1>
								<p>Web Designer </p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-2.png" class="img-responsive" alt="cand-2" title="cand-2" />
								<h1>Mike</h1>
								<p> Worker </p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-3.png" class="img-responsive" alt="cand-3" title="cand-3" />
								<h1>Philly</h1>
								<p>Parking staff </p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-4.png" class="img-responsive" alt="cand-4" title="cand-4" />
								<h1>John</h1>
								<p>Event manager </p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-5.png" class="img-responsive" alt="cand-5" title="cand-5" />
								<h1>Bill</h1>
								<p> DJ </p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-6.png" class="img-responsive" alt="cand-6" title="cand-6" />
								<h1>Nancy</h1>
								<p>Decorator</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-1.png" class="img-responsive" alt="cand-1" title="cand-1" />
								<h1>Glen</h1>
								<p>Lighting Expert </p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-2.png" class="img-responsive" alt="cand-2" title="cand-2" />
								<h1>John Doe</h1>
								<p>Web Designer </p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-3.png" class="img-responsive" alt="cand-3" title="cand-3" />
								<h1>John Doe</h1>
								<p>Web Designer </p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
							<div class="candidate">
								<img src="images/cand-4.png" class="img-responsive" alt="cand-4" title="cand-4" />
								<h1>John Doe</h1>
								<p>Web Designer </p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- latest end here -->


<!-- partner start here -->
	<div id="partner">
		<div class="container">
			<div class="row">
				<!-- our-partner start here -->
				<div class="our-partner">
					<h1>OUR PARTNERS</h1>
					<div class="border"></div>
					<div class="border1"></div>
				</div>
				<!-- our-partner end here -->
				
				<div id="partners" class="owl-carousel">
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 image">
							<img src="images/l1.jpg" class="img-responsive" alt="l1" title="l1" />
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 image">
							<img src="images/l2.jpg" class="img-responsive" alt="l2" title="l2" />
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 image">
							<img src="images/l3.jpg" class="img-responsive" alt="l3" title="l3" />
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 image">
							<img src="images/l4.jpg" class="img-responsive" alt="l4" title="l4" />
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 image">
							<img src="images/l5.jpg" class="img-responsive" alt="l5" title="l5" />
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 image">
							<img src="images/l1.jpg" class="img-responsive" alt="l1" title="l1" />
						</div>
					</div>
					<div class="item">
						<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 image">
							<img src="images/l2.jpg" class="img-responsive" alt="l2" title="l2" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- partner end here -->

<!-- Footer start here -->
	<%@include file="footer.jsp" %>
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
 <!-- color switcher
<script src="js/switcher.js" type="text/javascript"></script>-->
</body>
</html>
