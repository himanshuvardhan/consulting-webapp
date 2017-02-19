<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
							<li class="dropdown active"><a href="index.htm">Home</a></li>
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
							<li><a href="serviceRegistration.htm">Registration</a></li>
							<li><a href="gst.htm">GST</a></li>
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

		<!-- Slider start -->
		<section id="home" class="no-padding">
			<div id="main-slide" class="cd-hero">
				<ul class="cd-hero-slider">
					<li class="selected">
						<div class="overlay2">
							<img class="" src="resources/images/slider/bg1.jpg" alt="slider">
						</div>
						<div class="cd-full-width">
							<h2>Need To Invent The Future!</h2>
							<h3>We Making Difference To Great Things Possible</h3>
							<div class="row">
								<form accept-charset="UTF-8" action="createCompany.htm" method="post">
									<!-- CSRF Token -->
									<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />
									<div class="col-md-6 input-group subscribe col-md-offset-3">
										<input name="companyName" type="text" class="form-control " placeholder="Enter Company Name" id="companyName" required=""> <span
											class="input-group-addon">
											<button class="btn" id="createCompany" type="submit">Register a Company in India</button> </a>
										</span>
									</div>
								</form>
							</div>
						</div> <!-- .cd-full-width -->
					</li>
				</ul>
				<!--/ cd-hero-slider -->

				<div class="cd-slider-nav">
					<nav>
						<span class="cd-marker item-1"></span>
						<ul>
							<li class="selected"><a href="#0"><i class="fa fa-rocket"></i> Startup</a></li>
							<li><a href="loans.htm"><i class="fa fa-rupee"></i> Loans</a></li>
							<li><a href="incomeTax.htm"><i class="fa fa-percent"></i> Tax</a></li>
							<li><a href="bookKeeping.htm"><i class="fa fa-book"></i> Bookkeeping</a></li>
						</ul>
					</nav>
				</div>
				<!-- .cd-slider-nav -->

			</div>
			<!--/ Main slider end -->
		</section>
		<!--/ Slider end -->


		<!-- Service box start -->
		<section id="service" class="service angle">
			<div class="container">
				<div class="row">
					<div class="col-md-12 heading">
						<span class="title-icon pull-left"><i class="fa fa-cogs"></i></span>
						<h2 class="title">
							Service We Provide <span class="title-desc">A Quality Experience Team with 3 years Experience</span>
						</h2>
					</div>
				</div>
				<!-- Title row end -->

				<div class="row">
					<div class="col-md-12">
						<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay=".5s">
							<div class="service-content text-center">
								<span class="service-icon icon-pentagon"><i class="fa fa-rocket"></i></span>
								<h3>Pvt Company</h3>
								<ul class="text-left">
									<li>It is flexible and has limited liability.</li>
									<li>Greater capital contribution and greater stability.</li>
									<li>Possibility to grow big and expand</li>
								</ul>
							</div>
						</div>
						<!--/ End first service -->

						<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay=".8s">
							<div class="service-content text-center">
								<span class="service-icon icon-pentagon"><i class="fa fa-rupee"></i></span>
								<h3>Fund Requirement</h3>
								<ul class="text-left">
									<li>Fulfill Working Capital Needs.</li>
									<li>Social Purpose</li>
								</ul>
							</div>

						</div>
						<!--/ End Second service -->

						<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="1.1s">
							<div class="service-content text-center">
								<span class="service-icon icon-pentagon"><i class="fa fa-percent"></i></span>
								<h3>Tax Return Compliances</h3>
								<ul class="text-left">
									<li>Mandatory Compliance.</li>
									<li>Tax Planning</li>
								</ul>
							</div>
						</div>
						<!--/ End Third service -->

						<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="1.4s">
							<div class="service-content text-center">
								<span class="service-icon icon-pentagon"><i class="fa fa-book"></i></span>
								<h3>Bookkeeping</h3>
								<ul class="text-left">
									<li>Business Requirement.</li>
									<li>Professional Team</li>
								</ul>
							</div>
						</div>
						<!--/ End 4th service -->
					</div>
				</div>
				<!-- Content row end -->
			</div>
			<!--/ Container end -->
		</section>
		<!--/ Service box end -->

		<!-- Counter Strat -->
		<section class="ts_counter no-padding">
			<div class="container-fluid">
				<div class="row facts-wrapper wow fadeInLeft text-center">
					<div class="facts one col-md-3 col-sm-6">
						<span class="facts-icon"><i class="fa fa-user"></i></span>
						<div class="facts-num">
							<span class="counter"><c:out value="${metricMap['ENTERPRENEUR_SERVED']}" /></span>
						</div>
						<h3>Entrepreneur Served</h3>
					</div>

					<div class="facts two col-md-3 col-sm-6">
						<span class="facts-icon"><i class="fa fa-institution"></i></span>
						<div class="facts-num">
							<span class="counter"><c:out value="${metricMap['PROFESSIONAL_NETWORK']}" /></span>
						</div>
						<h3>Professional Network</h3>
					</div>

					<div class="facts three col-md-3 col-sm-6">
						<span class="facts-icon"><i class="fa fa-suitcase"></i></span>
						<div class="facts-num">
							<span class="counter"><c:out value="${metricMap['GEOGRAPHIES']}" /></span>
						</div>
						<h3>Geographies</h3>
					</div>

					<div class="facts four col-md-3 col-sm-6">
						<span class="facts-icon"><i class="fa fa-trophy"></i></span>
						<div class="facts-num">
							<span class="counter"><c:out value="${metricMap['TEAM_STRENGTH']}" /></span>
						</div>
						<h3>Team Strength</h3>
					</div>

				</div>
			</div>
			<!--/ Container end -->
		</section>
		<!--/ Counter end -->

		<section id="image-block" class="image-block no-padding">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 ts-padding" style="height: 650px; background: url(resources/images/image-block-bg.jpg) 50% 50%/cover no-repeat;"></div>
					<div class="col-md-6 ts-padding img-block-right">
						<div class="img-block-head text-center">
							<h2>Know More About Our Company</h2>
							<h3>Why Choose Us</h3>
							<p>How happy are you with the service provided by your current accountants? Do they:</p>
						</div>
						<ul>
							<li>Positively help you identify opportunities to improve your profits?</li>
							<li>Work with you to achieve your business goals?</li>
							<li>Give you more time to run your business?</li>

						</ul>
						<p>Quick Accounting give you peace of mind by looking after your routine financial and accounting operations. But we also do much more than
							that. We use our business advisory experience and expertise to monitor your business and give you proactive advice on how you can improve your
							bottom line and net worth.</p>

						<p>Our clients can expect:</p>

						<ul>
							<li>A fresh and proactive approach to their accounts and tax planning</li>
							<li>A friendly and personal service</li>
							<li>Innovative solutions tailored to their requirements</li>
							<li>Visits to their premises at a time to suit them.</li>
						</ul>
						<p>
							Please <a href="contact.htm">contact us</a> for further information and advice.
						</p>
						<!-- 
						<div class="image-block-content">
							<span class="feature-icon pull-left"><i class="fa fa-bicycle"></i></span>
							<div class="feature-content">
								<h3>Tons of Features</h3>
								<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut</p>
							</div>
						</div>
						/ End 1st block

						<div class="image-block-content">
							<span class="feature-icon pull-left"><i class="fa fa-diamond"></i></span>
							<div class="feature-content">
								<h3>PowerPack Theme</h3>
								<p>Proin gravida nibh vel velit auctor Aenean sollicitudin adipisicing</p>
							</div>
						</div>
						/ End 1st block

						<div class="image-block-content">
							<span class="feature-icon pull-left"><i class="fa fa-street-view"></i></span>
							<div class="feature-content">
								<h3>Day Night Support</h3>
								<p>Simply dummy text and typesettings industry has been the industry</p>
							</div>
						</div>
						/ End 1st block -->

					</div>
				</div>
			</div>
		</section>
		<!--/ Image block end -->

		<!-- Copyright start -->
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
							&copy; Copyright 2016 Quick Accounting & Consulting Pvt. Ltd. <span>All Rights Reserved</span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="footer-social unstyled">
							<li style="display: inline-block;"><a href="privacyPolicy.htm">Privacy Policy</a></li>&nbsp;|
							<li style="display: inline-block;"><a href="refundPolicy.htm"> Refund Policy</a></li>&nbsp;|
							<li style="display: inline-block;"><a href="termsAndConditions.htm"> Terms and Conditions</a></li>&nbsp;|
							<li style="display: inline-block;"><a href="happinessFactor.htm"> Happiness Factor</a></li>
						</ul>
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
		<!--/ Copyright end -->

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
		<!-- skype call -->
		<!-- <script type="text/javascript" src="https://secure.skypeassets.com/i/scom/js/skype-uri.js"></script> -->
		<!-- Template custom -->
		<script type="text/javascript" src="resources/js/custom.js"></script>
		<!-- Template custom -->
		<script type="text/javascript" src="resources/js/main.js"></script>
	</div>
	<!-- Body inner end -->
</body>
</html>