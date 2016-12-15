<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<img src="resources/images/banner/banner2.jpg" alt="" />
			<div class="parallax-overlay"></div>
			<!-- Subpage title start -->
			<div class="banner-title-content">
				<div class="text-center">
					<h2>Company Order</h2>
					<ul class="breadcrumb">
						<li>Home</li>
						<li>Company</li>
						<li><a href="createCompany.htm"> Order</a></li>
					</ul>
				</div>
			</div>
			<!-- Subpage title end -->
		</div>
		<!-- Banner area end -->

		<!-- Main container start -->

		<section id="main-container">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<form:form id="contact-form" action="confirmCompanyOrder.htm" method="post" modelAttribute="companyOrderModel">
							<!-- CSRF Token -->
							<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>First Name</label>
										<form:input path="firstName" class="form-control" name="firstName" id="firstName" type="text"></form:input>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Last Name</label>
										<form:input path="lastName" class="form-control" name="lastName" id="lastName" type="text"></form:input>
									</div>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>Mobile Number</label>
										<form:input path="phoneNumber" class="form-control" name="phoneno" id="phoneno" type="text"></form:input>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label>Email</label>
										<form:input path="email" class="form-control" name="email" id="email" type="email"></form:input>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label>PAN Number</label>
										<form:input path="panNumber" class="form-control" name="panNumber" id="panNumber" typy="text"></form:input>
									</div>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>Address</label>
										<form:input path="address" class="form-control" name="address" id="address" type="text"></form:input>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label>City</label>
										<form:input path="city" class="form-control" name="city" id="city" type="text"></form:input>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label>State</label>
										<form:input path="state" class="form-control" name="state" id="state" type="text"></form:input>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label>Pincode</label>
										<form:input path="pincode" class="form-control" type="text" name="pincode" id="pincode"></form:input>
									</div>
								</div>
							</div>
							<hr>
							<div class="form-group">
								<label>Message</label>
								<form:textarea class="form-control" path="message" name="message" id="message" rows="10"></form:textarea>
							</div>
							<div class="text-right">
								<br>
								<button class="btn btn-primary solid blank" type="submit">Order Now</button>
							</div>
					</div>
					<div class="col-md-5">
						<div class="contact-info">
							<h3>Your Order Summary</h3>
							<p>
								<i>Company Name</i> : &nbsp; ${companyDetail.companyName }
							</p>
							<p>
								<i>Company Type</i> : &nbsp; ${companyDetail.companyType }
							</p>
							<p>
								<i>Price</i> : &nbsp; <i class="fa fa-inr" aria-hidden="true"></i>${companyDetail.companyPrice }
							</p>
							<p>
								<i>Money Back Gurantee<i>
							</p>
							<form:hidden path="companyId" class="form-control" name="state" id="companyId" value="${companyDetail.companyId }"></form:hidden>
							<form:hidden path="requestedCompanyName" class="form-control" name="state" id="requestedCompanyName" value="${companyDetail.companyName }"></form:hidden>
						</div>
						<c:if test="${companyDetail.companyId  == 1}">
							<div>
								<p>Company Cost Breakdown</p>
								<ul>
									<li>Company Name Search : Free</li>
									<li>Consultancy on Registration and Name availability : Free</li>
									<li>Government Fees : <i class="fa fa-inr" aria-hidden="true"></i> 5400
									</li>
									<li>Stamp Duty (for 1 Lakh Authorised Share Capital) : <i class="fa fa-inr" aria-hidden="true"></i> 1500
									</li>
									<li>Documents Notarization Cost : <i class="fa fa-inr" aria-hidden="true"></i> 500
									</li>
									<li>Professional Fees : <i class="fa fa-inr" aria-hidden="true"></i> 2799
									</li>
									<li>Service Tax : <i class="fa fa-inr" aria-hidden="true"></i> 800
									</li>
									<li>Total Cost : <i class="fa fa-inr" aria-hidden="true"> </i>12999
									</li>
									<li>Stamp duty Extra for States(MOA&AOA) : Punjab,Kerala,Madhya Pradesh</li>
									<li>(In case of NRI/Foreign Directors,Charges are extra)</li>
								</ul>
							</div>
						</c:if>
					</div>
					</form:form>
				</div>
			</div>
		</section>
		<!--/ Main container end -->

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
		<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
		<!-- For Google Map -->
		<script type="text/javascript" src="resources/js/gmap3.js"></script>
		<!-- Doc http://www.mkyong.com/google-maps/google-maps-api-hello-world-example/ -->
		<!-- Template custom -->
		<script type="text/javascript" src="resources/js/custom.js"></script>
	</div>
	<!-- Body inner end -->
</body>
</html>