<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

		<div id="banner-area">
			<img src="resources/images/banner/banner1.jpg" alt="" />
			<div class="parallax-overlay"></div>
			<!-- Subpage title start -->
			<div class="banner-title-content">
				<div class="text-center">
					<h2>Privacy Policy</h2>
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
						<h2 class="title classic">Privacy Policy</h2>
					</div>
				</div>
				<!-- Title row end -->
				<div class="row">
					<div class="col-md-12">
						<div class="testimonial-content">
							<h4>Our Commitment to Privacy</h4>
							<p>
								Our Privacy Policy was developed as an extension of our commitment to combine quality products and services with integrity in dealing with our
								users. The Policy is designed to assist you in understanding how we collect, use and safeguard the personal information you provide to us and
								to assist you in making informed decisions when using our site and our products and services. This privacy statement applies to the website of
								www.Quickfillings.com: <a href="index.htm">www.Quickfillings.com</a>
							</p>
							<h4>Registration and Setup Forms</h4>
							<p>www.Quickfillings.com registration and website setup forms may require users to give us contact information, such as name and email
								address. Contact information from the registration and setup forms is used to setup your services or provide technical support. The customers
								contact information is also used to get in touch with the customer when necessary.</p>
							<h4>What is a Cookie?</h4>
							<p>Cookies are a feature of web browser (Firefox, Safari, Internet Explorer, Netscape Navigator, etc.) software that allows web servers to
								recognize the computer used to access a site. They are small pieces of data that are stored by a users web browser on one site to simplify
								subsequent interactions with that site by the same user or to use the information to streamline the user's transaction on related web pages.
								This makes it easier for a user to move from site to site and to complete transactions over the Internet. Cookies should make your online
								experience easier and more personalized.</p>
							<p>Our site utilizes cookies to collect information about how our site is used. Passive Information gathered may include the date and time
								of visits, the site pages viewed, time spent at our site, the sites visited just before and just after our site. If you do not wish to
								transmit 'cookie' information about yourself, you may turn off the cookie function in your web browser; please consult the 'Help' section of
								your browser to correctly do so.</p>
							<p>Our site's servers also automatically identify your computer by its Internet Protocol address which is a unique string of numbers that
								is assigned to your computer by your Internet Service Provider. Your IP address may be used to address problems with our server or administer
								our site or to gather broad demographic information about our users.</p>
							<h4>Your Information In Relation to Others We Link To</h4>
							<p>You may be able to access other websites through our site. When you do so you are doing so subject to their policies regarding privacy
								and data collection and you should read those sites privacy policies to make sure you agree to them before using such sites. When you choose
								to shop at such sites, you should read their privacy policies to make sure you agree to them before making purchases.</p>
							<h4>Sharing Information with Advertisers or Other Third Parties</h4>
							<p>We do not share any personal information with any parties outside www.Quickfillings.com. Including names and e-mail address. While we
								may contact you if you have opted to receive news and updates, all correspondance is sent through www.quickfilling.com and no others.</p>
							<h4>Sharing Information with the Government or As Otherwise Required by Law</h4>
							<p>You agree that You have the needed and required rights and permissions on all content uploaded on the website. Files such as music,
								photos, videos and other, must be accompanied by permission in writing from current copyright or license holder(s). Upon notification and
								proof of copyright infringement, Your account and or website may be suspended or terminated.</p>
							<h4>Questions, Comments, Contact</h4>
							<p>
								If you have any questions, comments or concerns with the privacy of your information collected by www.quickfilling.com, please <a
									href="contact.htm">contact</a> us.
							</p>
						</div>
					</div>
				</div>
				<div class="gap-40"></div>
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