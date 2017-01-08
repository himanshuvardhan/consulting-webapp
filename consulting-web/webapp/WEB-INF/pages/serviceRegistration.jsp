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
<link rel="icon" href="resources/images/favicon/favicon-32x32.png" type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/images/favicon/favicon-144x144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/images/favicon/favicon-72x72.png">
<link rel="apple-touch-icon-precomposed" href="resources/images/favicon/favicon-54x54.png">

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
							<li><a href="bookKeeping.htm">Book Keeping</a></li>
							<li><a href="importExport.htm">Import/Export</a></li>
							<li class="active"><a href="serviceRegistration.htm">Registration</a></li>
							<li><a href="gst.htm">GST</a></li>
							<!-- <li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Services<i class="fa fa-angle-down"></i></a>
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
					<h2>Registration</h2>
				</div>
			</div>
			<!-- Subpage title end -->
		</div>
		<!-- Banner area end -->

		<!-- Main container start -->

		<section id="main-container" style="padding-bottom: 0px;">
			<div class="container">
				<div class="row">
					<div class="row col-md-7">
						<!--Isotope filter start -->
						<section id="main-container" class="portfolio portfolio-box" style="margin-top: -101px;">
							<div class="row text-center">
								<div class="isotope-nav" data-isotope-nav="isotope">
									<ul>
										<li class="accounting"><a>Licenses</a></li>
										<li class="whatwedo"><a>Tax Registration</a></li>
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
													<div class="landing-tab clearfix">
														<ul class="nav nav-tabs nav-stacked col-md-5 col-sm-5">
															<li class="active"><a class="animated fadeIn" href="#tab_a" data-toggle="tab"> <span class="tab-icon"><i
																		class="fa fa-info"></i></span>
																	<div class="tab-info">
																		<h3>FSSAI Food License</h3>
																	</div>
															</a></li>
															<li><a class="animated fadeIn" href="#tab_b" data-toggle="tab"> <span class="tab-icon"><i class="fa fa-briefcase"></i></span>
																	<div class="tab-info">
																		<h3>IEC Registration</h3>
																	</div>
															</a></li>
															<li><a class="animated fadeIn" href="#tab_c" data-toggle="tab"> <span class="tab-icon"><i class="fa fa-android"></i></span>
																	<div class="tab-info">
																		<h3>Trade License</h3>
																	</div>
															</a></li>
															<li><a class="animated fadeIn" href="#tab_d" data-toggle="tab"> <span class="tab-icon"><i class="fa fa-pagelines"></i></span>
																	<div class="tab-info">
																		<h3>ISO Registration</h3>
																	</div>
															</a></li>
															<li><a class="animated fadeIn" href="#tab_e" data-toggle="tab"> <span class="tab-icon"><i class="fa fa-support"></i></span>
																	<div class="tab-info">
																		<h3>Digital Signature (DSC)</h3>
																	</div>
															</a></li>
															<li><a class="animated fadeIn" href="#tab_f" data-toggle="tab"> <span class="tab-icon"><i class="fa fa-pagelines"></i></span>
																	<div class="tab-info">
																		<h3>ESI Registration</h3>
																	</div>
															</a></li>
															<li><a class="animated fadeIn" href="#tab_g" data-toggle="tab"> <span class="tab-icon"><i class="fa fa-support"></i></span>
																	<div class="tab-info">
																		<h3>Employees Provident Fund</h3>
																	</div>
															</a></li>
														</ul>
														<div class="tab-content col-md-7 col-sm-7">
															<div class="tab-pane active animated fadeInRight" id="tab_a">
																<ul style="margin-left: -100px;">
																	<li><p>Online process. Save 25% cost.</p></li>
																	<li><p>Basic Registration: Rs.4,099 only(All Inclusive)</p></li>
																	<li><p>State Registration: Rs.12,499 only(All Inclusive)</p></li>
																	<li><p>Central Registration: Rs.21,499 only(All Inclusive)</p></li>
																	<li><p>FSSAI application code in 7 days & license in 30-60 days</p></li>
																</ul>
															</div>
															<div class="tab-pane animated fadeInLeft" id="tab_b">
																<ul style="margin-left: -100px;">
																	<li><p>Starting At Rs.3,499only(All Inclusive)</p></li>
																</ul>
															</div>
															<div class="tab-pane animated fadeIn" id="tab_c">
																<ul style="margin-left: -100px;">
																	<li><p>Ideal for trading business</p></li>
																	<li><p>Online process. Save 40% cost.</p></li>
																	<li><p>Starting At Rs.4999 only (+registration fees)</p></li>
																	<li><p>Trade License Registration in 10-20 days</p></li>
																</ul>
															</div>
															<div class="tab-pane animated fadeIn" id="tab_d">
																<ul style="margin-left: -100px;">
																	<li><p>Ideal for maintaining standard and quality</p></li>
																	<li><p>Online process. Save 50% cost.</p></li>
																	<li><p>Starting At Rs.8,299 onwards</p></li>
																	<li><p>ISO Registration in less than 15 days</p></li>
																</ul>
															</div>
															<div class="tab-pane animated fadeIn" id="tab_e">
																<ul style="margin-left: -100px;">
																	<li><p>Ideal for people engaged in online transactions</p></li>
																	<li><p>Online process. Save 40% cost.</p></li>
																	<li><p>Starting At Rs.9,99 onwards</p></li>
																	<li><p>Digital Signature in less than 2 days</p></li>
																</ul>
															</div>
															<div class="tab-pane animated fadeIn" id="tab_f">
																<ul style="margin-left: -100px;">
																	<li><p>Mandatory for all companies with > 10 employees</p></li>
																	<li><p>Online process. Save 30% cost.</p></li>
																	<li><p>Starting At Rs.4,499 onwards</p></li>
																	<li><p>ESI Registration in 2-8 days</p></li>
																</ul>
															</div>
															<div class="tab-pane animated fadeIn" id="tab_g">
																<ul style="margin-left: -100px;">
																	<li><p>Mandatory for companies with > 20 employees</p></li>
																	<li><p>Online process. Save 30% cost.</p></li>
																	<li><p>Starting At Rs.3,499 onwards</p></li>
																	<li><p>Employees Provident Fund Registration in 4-5 days</p></li>
																</ul>
															</div>
														</div>
														<!-- tab content -->
													</div>
													<!-- Overview tab end -->
												</div>
												<!--/ Content row end -->
											</div>
											<div class="item">
												<div class="row">
													<div class="landing-tab clearfix">
														<ul class="nav nav-tabs nav-stacked col-md-5 col-sm-5">
															<li class="active"><a class="animated fadeIn" href="#tab_h" data-toggle="tab"> <span class="tab-icon"><i
																		class="fa fa-info"></i></span>
																	<div class="tab-info">
																		<h3>Service Tax Registration</h3>
																	</div>
															</a></li>
															<li><a class="animated fadeIn" href="#tab_i" data-toggle="tab"> <span class="tab-icon"><i class="fa fa-briefcase"></i></span>
																	<div class="tab-info">
																		<h3>Sales Tax Registration</h3>
																	</div>
															</a></li>
															<li><a class="animated fadeIn" href="#tab_j" data-toggle="tab"> <span class="tab-icon"><i class="fa fa-android"></i></span>
																	<div class="tab-info">
																		<h3>Professional Tax Registration</h3>
																	</div>
															</a></li>
															<li><a class="animated fadeIn" href="#tab_k" data-toggle="tab"> <span class="tab-icon"><i class="fa fa-pagelines"></i></span>
																	<div class="tab-info">
																		<h3>Excise Tax Registration</h3>
																	</div>
															</a></li>
														</ul>
														<div class="tab-content col-md-7 col-sm-7">
															<div class="tab-pane active animated fadeInRight" id="tab_h">
																<ul style="margin-left: -100px;">
																	<li><p>Made easy and simple</p></li>
																	<li><p>Online process. Save 30% cost.</p></li>
																	<li><p>Starting At Rs.3,999 Onwards</p></li>
																	<li><p>Service Tax Registration in 5-15 days</p></li>
																</ul>
															</div>
															<div class="tab-pane animated fadeInLeft" id="tab_i">
																<ul style="margin-left: -100px;">
																	<li><p>Mandatory for entities engaged in sale of goods</p></li>
																	<li><p>Online process. Save 40% cost.</p></li>
																	<li><p>Starting At Rs.9,999 only(All Inclusive)</p></li>
																	<li><p>Sales Tax Registration in 4-5 days</p></li>
																</ul>
															</div>
															<div class="tab-pane animated fadeIn" id="tab_j">
																<ul style="margin-left: -100px;">
																	<li><p>Easily get PTEC & PTRC registered online</p></li>
																	<li><p>Online process. Save 30% cost.</p></li>
																	<li><p>Starting At Rs.3,999 only(All Inclusive)</p></li>
																	<li><p>Professional Tax Registration in 2-8 days</p></li>
																</ul>
															</div>
															<div class="tab-pane animated fadeIn" id="tab_k">
																<ul style="margin-left: -100px;">
																	<li><p>Easily get PTEC & PTRC registered online</p></li>
																	<li><p>Online process. Save 30% cost.</p></li>
																	<li><p>Starting At Rs.12,999 only(All Inclusive)</p></li>
																	<li><p>Excise Tax Registration Registration in less than 10 days</p></li>
																</ul>
															</div>
														</div>
														<!-- tab content -->
													</div>
													<!-- Overview tab end -->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>
						</div>
					</div>
					<div class="row col-md-1"></div>
					<div class="row col-md-4">
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseTwo"> Apply</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse in">
									<form:form id="loan-form" action="applyForServiceRegistration.htm" method="post" modelAttribute="serviceRegistrationModel">
										<!-- CSRF Token -->
										<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />
										<div class="panel-body">
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<label>Service</label>
														<form:select class="form-control" path="serviceType" name="serviceType" id="serviceType" required="required">
															<form:options items="${serviceMap}"></form:options>
														</form:select>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label>Full Name</label>
														<form:input class="form-control" path="name" name="name" id="name" type="text" required="required"></form:input>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label>Email Id</label>
														<form:input class="form-control" path="emailId" name="emailId" id="emailId" type="email" required="required"></form:input>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label>Phone Number</label>
														<form:input class="form-control" path="phoneNumber" name="phoneNumber" id="phone_number" type="text" required="required"></form:input>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label>PAN Number</label>
														<form:input class="form-control" path="panNumber" name="panNumber" id="panNumber" type="text" required="required"></form:input>
													</div>
												</div>
												<div class="col-md-12 text-right">
													<button class="btn btn-primary solid blank" type="submit">Apply Now</button>
												</div>
									</form:form>

								</div>
							</div>
							<!--/ Panel 2 end-->
						</div>
						<!--/ Accordion end -->
					</div>
				</div>

			</div>
			<!--/ 1st container end -->

		</section>
		<div class="gap-60"></div>
		<div class="gap-60"></div>


		<!-- Footer start -->
		<section id="copyright" class="copyright angle">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="footer-social unstyled">
							<li><a target="_blank" title="Twitter" href="https://twitter.com/QuickAsr"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-twitter"></i></span>
							</a> <a target="_blank" title="Facebook" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-facebook"></i></span>
							</a> <a target="_blank" title="Google+" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-google-plus"></i></span>
							</a> <a target="_blank" title="linkedin" href="https://www.linkedin.com/in/quick-acounting-and-consulting-pvt-ltd-515a55133"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-linkedin"></i></span>
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
		<!-- <script src="http://maps.google.com/maps/api/js?sensor=false"></script> -->
		<!-- For Google Map -->
		<!-- <script type="text/javascript" src="resources/js/gmap3.js"></script> -->
		<!-- Doc http://www.mkyong.com/google-maps/google-maps-api-hello-world-example/ -->
		<!-- Template custom -->
		<script type="text/javascript" src="resources/js/custom.js"></script>

		<script type="text/javascript" src="resources/js/main.js"></script>
	</div>
	<!-- Body inner end -->
</body>
</html>