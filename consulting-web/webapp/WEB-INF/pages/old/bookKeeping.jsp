<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic Page Needs
	================================================== -->
<meta charset="utf-8">
<title>Quick Accounting & Consulting</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Mobile Specific Metas
	================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Favicons
	================================================== -->
<link rel="icon" href="img/favicon/favicon-32x32.png" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/favicon/favicon-144x144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicon/favicon-72x72.png">
<link rel="apple-touch-icon-precomposed" href="img/favicon/favicon-54x54.png">

<!-- CSS
	================================================== -->

<!-- Bootstrap -->
<link rel="stylesheet" href="resources/style/bootstrap.min.css">
<!-- Template styles-->
<link rel="stylesheet" href="resources/style/style.css">
<!-- Responsive styles-->
<link rel="stylesheet" href="resources/style/responsive.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="resources/style/font-awesome.min.css">
<!-- Animation -->
<link rel="stylesheet" href="resources/style/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet" href="resources/style/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="resources/style/owl.carousel.css">
<link rel="stylesheet" href="resources/style/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet" href="resources/style/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet" href="resources/style/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch" href="${stylePreset }" media="screen" rel="stylesheet" type="text/css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="resources/js/html5shiv.js"></script>
      <script src="resources/js/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- CSRF Token -->
	<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />

	<!-- Style switcher start -->
	<div class="style-switch-wrapper">
		<div class="style-switch-button">
			<i class="fa fa-sliders"></i>
		</div>
		<h3>Style Options</h3>
		<button id="preset1" class="btn btn-sm btn-primary"></button>
		<button id="preset2" class="btn btn-sm btn-primary"></button>
		<button id="preset3" class="btn btn-sm btn-primary"></button>
		<button id="preset4" class="btn btn-sm btn-primary"></button>
		<button id="preset5" class="btn btn-sm btn-primary"></button>
		<button id="preset6" class="btn btn-sm btn-primary"></button>
		<br /> <br /> <a class="btn btn-sm btn-primary close-styler pull-right">Close X</a>
	</div>
	<!-- Style switcher end -->

	<div class="body-inner">
		<!-- Header start -->
		<header id="header" class="navbar-fixed-top header" role="banner">
			<div class="container">
				<div class="row">
					<!-- Logo start -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<div class="navbar-brand navbar-bg">
							<a href="index.htm"> <img class="img-responsive" src="resources/images/logo.png" alt="logo">
							</a>
						</div>
					</div>
					<!--/ Logo end -->
					<nav class="collapse navbar-collapse clearfix" role="navigation">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a href="index.htm">Home</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Company <i class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="createCompany.htm">Create Company</a></li>
									</ul>
								</div></li>
							<li><a href="incomeTax.htm">Income Tax Returns</a></li>
							<li><a href="loans.htm">Loans</a></li>
							<li class="active"><a href="bookKeeping.htm">Book Keeping</a></li>
							<li><a href="importExport.htm">Import/Export</a></li>
							<li><a href="serviceRegistration.htm">Registration</a></li>
							<!-- <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Services<i class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="importExport.htm">Import/Export</a></li>
										<li><a href="serviceRegistration.htm">Registration</a></li>
									</ul>
								</div></li> -->
							<li><a href="contact.htm">Contact</a></li>
						</ul>
					</nav>
					<!--/ Navigation end -->
				</div>
				<!--/ Row end -->
			</div>
			<!--/ Container end -->
		</header>
		<!--/ Header end -->

		<div id="banner-area">
			<img src="resources/images/banner/banner1.jpg" alt="" />
			<div class="parallax-overlay"></div>
			<!-- Subpage title start -->
			<div class="banner-title-content">
				<div class="text-center">
					<h2>Book Keeping</h2>
				</div>
			</div>
			<!-- Subpage title end -->
		</div>
		<!-- Banner area end -->

		<!-- Main container start -->

		<section id="main-container" style="padding-bottom: 0px;">
			<div class="container">

				<!-- Company Profile -->
				<div class="row">
					<div class="col-md-12 heading">
						<span class="title-icon classic pull-left"><i class="fa fa-suitcase"></i></span>
						<h2 class="title classic">Services We Provide</h2>
					</div>
				</div>
				<!-- Title row end -->
				<div class="row">
					<div class="col-md-12">
						<ul>
							<li>Quick Accounting will manage your data entry & provide timely bank account & credit card reconciliation.</li>
							<li>We accurately track your revenue & expenses, and provide valuable insights into your business.</li>
							<li>We produce up-to-date Balance Sheet & Income Statements every month.</li>
							<li>Quick Accounting can help you easily manage your bill pay, payroll & more! You'll stay compliant & in control.</li>
							<li>We'll provide you a team of bookkeepers with expertise in your industry. We work with your existing accounting software & tools, but
								can also help you make the move to newer technologies.</li>

						</ul>
					</div>
				</div>
				<div class="gap-40"></div>
				<!--Isotope filter start -->
				<section id="main-container" class="portfolio portfolio-box" style="margin-top: -101px;">
					<div class="row text-center">
						<div class="isotope-nav" data-isotope-nav="isotope">
							<ul>
								<li class="accounting"><a>Accounting</a></li>
								<li class="whatwedo"><a>What We Do?</a></li>
								<li class="technologyweuse"><a>Technology We Use</a></li>
							</ul>
						</div>
					</div>
				</section>
				<!-- Isotope filter end -->
				<div class="container" style="margin-top: -100px;">
					<div class="row col-md-12">
						<!-- Testimonial start-->
						<div class="testimonial elements">
							<div class="row">
								<div id="testimonial-carousel" class="owl-carousel owl-theme testimonial-slide">
									<div class="item">
										<div class="row">
											<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay=".5s">
												<div class="service-content">
													<span class="service-image"><img class="img-responsive" src="resources/images/bookkeeping/accounting.jpg" alt="" /></span>
													<ul>
														<li><h4>Taxes</h4></li>
														<li><h4>Data Entry</h4></li>
														<li><h4>Job Costing</h4></li>
														<li><h4>Analytics</h4></li>
														<li><h4>Reporting</h4></li>
														<li><h4>Reconciliation</h4></li>
													</ul>
												</div>
											</div>
											<!--/ End first service -->

											<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay=".8s">
												<div class="service-content">
													<span class="service-image"><img class="img-responsive" src="resources/images/bookkeeping/expenses.jpg" alt="" /></span>
													<ul>
														<li><h4>Expense Management</h4></li>
														<li><h4>Mileage Tracking</h4></li>
														<li><h4>Receipt Collection</h4></li>
														<li><h4>Reconciliation</h4></li>
													</ul>
												</div>

											</div>
											<!--/ End Second features -->
											<!-- </div>
										<div class="row "> -->
											<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="1.1s">
												<div class="service-content">
													<span class="service-image"><img class="img-responsive" src="resources/images/bookkeeping/payments.jpg" alt="" /></span>
													<ul>
														<li><h4>Bill Pay</h4></li>
														<li><h4>Payment Processing</h4></li>
														<li><h4>Merchant Services</h4></li>
														<li><h4>Prepaid Debit Cards</h4></li>
														<li><h4>Reconciliation</h4></li>
													</ul>
												</div>
											</div>
											<!--/ End Third features -->

											<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="1.1s">
												<div class="service-content">
													<span class="service-image"><img class="img-responsive" src="resources/images/bookkeeping/payroll.jpg" alt="" /></span>
													<ul>
														<li><h4>Setup</h4></li>
														<li><h4>Reporting</h4></li>
														<li><h4>Compliance</h4></li>
														<li><h4>Reconciliation</h4></li>
													</ul>
												</div>
											</div>
											<!--/ End Fourth features -->
										</div>
										<!-- Content Row end -->
									</div>
									<div class="item">
										<ul>
											<li><h4>Weekly reconciliation</h4></li>
											<li><h4>Weekly financials</h4></li>
											<li><h4>Document collection & storage</h4></li>
											<li><h4>Accounting software setup</h4></li>
											<li><h4>Expense management</h4></li>
											<li><h4>Training</h4></li>
											<li><h4>Includes accounting & expense management software</h4></li>
											<li><h4>Payroll reconciliation</h4></li>
											<li><h4>Job cost allocation</h4></li>
											<li><h4>Electronic bill payment</h4></li>
										</ul>
									</div>
									<div class="item">
										<ul>
											<li><h4>TALLY ERP 9</h4></li>
											<li><h4>BUSY</h4></li>
											<li><h4>SAP</h4></li>
											<li><h4>IDS</h4></li>
											<li><h4>ORACLE</h4></li>
											<li><h4>XERO</h4></li>
											<li><h4>QUICK BOOKS</h4></li>
											<li><h4>MYOB</h4></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<form:form id="loan-form" action="applyForBookKeeping.htm" method="post" modelAttribute="bookKeepingOrderModel">
						<!-- CSRF Token -->
						<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />
						<div class="row col-md-12">
							<div class="col-md-3">
								<div class="form-group">
									<label>Full Name</label>
									<form:input class="form-control" path="name" name="name" id="name" type="text"></form:input>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Email Id</label>
									<form:input class="form-control" path="emailId" name="emailId" id="emailId" type="email"></form:input>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Phone Number</label>
									<form:input class="form-control" path="phoneNumber" name="phoneNumber" id="phone_number" type="text"></form:input>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Pan Number</label>
									<form:input class="form-control" path="panNumber" name="panNumber" id="panNumber" type="text"></form:input>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-12 text-center">
								<button class="btn btn-primary solid blank" type="submit">Apply Now</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
			<!--/ 1st container end -->


			<div class="gap-60"></div>
			<div class="gap-60"></div>


			<!-- Footer start -->
			<section id="copyright" class="copyright angle">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-social unstyled">
								<li><a target="_blank" title="Twitter" href="https://twitter.com/QuickAsr"> <span class="icon-pentagon wow bounceIn"><i
											class="fa fa-twitter"></i></span>
								</a> <a target="_blank" title="Facebook" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-facebook"></i></span>
								</a> <a target="_blank" title="Google+" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-google-plus"></i></span>
								</a> <a target="_blank" title="linkedin" href="https://www.linkedin.com/in/quick-acounting-and-consulting-pvt-ltd-515a55133"> <span
										class="icon-pentagon wow bounceIn"><i class="fa fa-linkedin"></i></span>
								</a> <a target="" title="Skype" href="skype:Quickasr?userinfo "> <span class="icon-pentagon wow bounceIn"><i class="fa fa-skype"></i></span>
								</a></li>
							</ul>
						</div>
					</div>
					<!--/ Row end -->
					<div class="row">
						<div class="col-md-12 text-center">
							<div class="copyright-info">
								&copy; Copyright 2016 Quick Accounting & Consulting. <span>All Rights Reserved</span>
							</div>
						</div>
					</div>
					<!--/ Row end -->
					<div id="back-to-top" data-spy="affix" data-offset-top="10" class="back-to-top affix">
						<button class="btn btn-primary" title="Back to Top">
							<i class="fa fa-angle-double-up"></i>
						</button>
					</div>
				</div>
				<!--/ Container end -->
			</section>
			<!--/ Footer end -->


			<!-- Javascript Files
	================================================== -->

			<!-- initialize jQuery Library -->
			<script type="text/javascript" src="resources/js/jquery.js"></script>
			<!-- Bootstrap jQuery -->
			<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
			<!-- Style Switcher -->
			<script type="text/javascript" src="resources/js/style-switcher.js"></script>
			<!-- Owl Carousel -->
			<script type="text/javascript" src="resources/js/owl.carousel.js"></script>
			<!-- PrettyPhoto -->
			<script type="text/javascript" src="resources/js/jquery.prettyPhoto.js"></script>
			<!-- Bxslider -->
			<script type="text/javascript" src="resources/js/jquery.flexslider.js"></script>
			<!-- CD Hero slider -->
			<script type="text/javascript" src="resources/js/cd-hero.js"></script>
			<!-- Isotope -->
			<script type="text/javascript" src="resources/js/isotope.js"></script>
			<script type="text/javascript" src="resources/js/ini.isotope.js"></script>
			<!-- Wow Animation -->
			<script type="text/javascript" src="resources/js/wow.min.js"></script>
			<!-- SmoothScroll -->
			<script type="text/javascript" src="resources/js/smoothscroll.js"></script>
			<!-- Eeasing -->
			<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
			<!-- Counter -->
			<script type="text/javascript" src="resources/js/jquery.counterup.min.js"></script>
			<!-- Waypoints -->
			<script type="text/javascript" src="resources/js/waypoints.min.js"></script>
			<!-- Google Map API Key Source -->
			<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
			<!-- For Google Map -->
			<script type="text/javascript" src="resources/js/gmap3.js"></script>
			<!-- Doc http://www.mkyong.com/google-maps/google-maps-api-hello-world-example/ -->
			<!-- Template custom -->
			<script type="text/javascript" src="resources/js/custom.js"></script>

			<script type="text/javascript" src="resources/js/main.js"></script>
	</div>
	<!-- Body inner end -->
</body>
</html>