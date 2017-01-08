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
							<li class="active"><a href="importExport.htm">Import/Export</a></li>
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
					<h2>Import Export</h2>
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
						<h2 class="title classic">Import Export</h2>
					</div>
				</div>
				<!-- Title row end -->
				<div class="row">
					<div class="col-md-12">
						<p>Import Export (IE) Code is a registration required for persons importing or exporting goods and services from India. IE Code is issued by
							the Directorate General of Foreign Trade (DGFT), Ministry of Commerce and Industries, Government of India. IE Codes when issued can be used by
							the entity throughout its existence and doesn't require any renewal or filing. Therefore, it is recommended for most organizations to obtain IE
							Code, irrespective of if they need it at the moment.</p>
						<p>IE Code application must be made to the Directorate General of Foreign Trade along with the necessary supporting documents. Once, the
							application is submitted, DGFT will issue the IE Code for the entity in 15 - 20 working days or less.</p>
					</div>
				</div>

				<div class="row">
					<div class="row col-md-7">
						<div class="container">
							<div class="testimonial-content">
								<li><h4>Importers Require IE Code</h4>
									<p>All Importers who import goods into India require an IE Code. The IE Code must be quoted while clearing customs. Also, banks require
										the importers IE Code while sending money abroad.</p>
							</div>
							<div class="testimonial-content">
								<li><h4>Exporters Require IE Code</h4>
									<p>All Exporters who export goods or services from India require an IE Code. The IE Code must be quoted while sending shipments. And
										banks require the exporters IE Code while receiving money from abroad.</p>
							</div>
							<div class="testimonial-content">
								<li><h4>Lifetime - NO Renewal</h4>
									<p>IE Code is issued for the lifetime of the entity and requires no renewal. So once a IE Code is obtained, it can be used by that entity
										for all its import or export transactions without any further hassles.</p>
							</div>
							<div class="testimonial-content">
								<li><h4>No Return Filing</h4>
									<p>IE Code does not require the filing of any return. Once, an IE Code is issued there are no further procedures required to maintain
										validity of the IE Code. Even if import or export transactions occur, there are no filings required to DGFT.</p>
							</div>
							<div class="testimonial-content">
								<li><h4>Proprietors can have IE Code</h4>
									<p>Even individuals who are proprietors of a business can obtain IE Code in their name. It is not necessary to incorporate a business
										entity for obtaining IE Code.</p>
							</div>
							<div class="testimonial-content">
								<li><h4>Quick Processing</h4>
									<p>IE Code can easily be obtained from DGFT within 10-15 working days after submission of the application along with all the necessary
										information. It is not necessary to show proof of any import or export to obtain IE Code.</p>
							</div>
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
									<form:form id="loan-form" action="applyForImportExport.htm" method="post" modelAttribute="importExportOrderModel">
										<!-- CSRF Token -->
										<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />
										<div class="panel-body">
											<div class="row">
												<div class="col-md-12">
													<p>Starting At Rs.3,499 only(All Inclusive)</p>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label>Name</label>
														<form:input class="form-control" path="name" name="name" id="name" type="text" required="required"></form:input>
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
														<label>Email Address</label>
														<form:input class="form-control" path="emailId" name="emailId" id="emailId" type="email" required="required"></form:input>
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
											</div>
										</div>
									</form:form>

								</div>
							</div>
							<!--/ Panel 2 end-->
						</div>
						<!--/ Accordion end -->
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