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
<link id="style-switch" href="resources/style/presets/preset3.css" media="screen" rel="stylesheet" type="text/css">
<!-- Main -->
<link rel="stylesheet" href="resources/style/main.css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="resources/js/html5shiv.js"></script>
      <script src="resources/js/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div class="body-inner">

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
			<br />
			<br /> <a class="btn btn-sm btn-primary close-styler pull-right">Close X</a>
		</div>
		<!-- Style switcher end -->

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
							<li><a href="index.htm">Home</a></li>
							<li class="dropdown active"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Company <i class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="createCompany.htm">Create Company</a></li>
									</ul>
								</div></li>
							<li><a href="loans.htm">Loans</a></li>
							<li><a href="bookKeeping.htm">Book Keeping</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <i class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="blog-rightside.html">Blog with Sidebar</a></li>
										<li><a href="blog-item.html">Blog Single</a></li>
									</ul>
								</div></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Features <i class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="typography.html">Typography</a></li>
										<li><a href="elements.html">Elements</a></li>
									</ul>
								</div></li>
							<li><a href="contact.html">Contact</a></li>
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
					<div class="row">
						<form accept-charset="UTF-8" action="createCompany.htm" method="post">
							<!-- CSRF Token -->
							<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />
							<div class="col-md-6 input-group subscribe col-md-offset-3">
								<input name="companyName" type="text" value="${companyName}" class="form-control " placeholder="Enter Company Name" id="companyName"
									required=""> <span class="input-group-addon">
									<button class="btn" id="createCompany" type="submit">Register a Company in India</button>
									</a>
								</span>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- Subpage title end -->
		</div>
		<!-- Banner area end -->

		<!-- Main container start -->

		<section id="main-container">
			<div id="pricing-container" class="container">

				<!-- Pricing table start -->
				<div class="row">
					<div class="col-md-12 heading">
						<span class="title-icon classic pull-left"><i class="fa fa-university"></i></span>
						<c:if test="${not empty companyName && companyAlreadyExists}">
							<h2 class="title classic">${companyName} &nbsp; is Not Available</h2>
						</c:if>
						<c:if test="${not empty companyName && !companyAlreadyExists}">
							<h2 class="title classic">${companyName} &nbsp; is available</h2>
						</c:if>
						<c:if test="${empty companyName}">
							<h2 class="title classic">Pricing</h2>
						</c:if>
					</div>
				</div>
				<!-- Title row end -->
				<c:if test="${!companyAlreadyExists}">
					<div class="row">
						<!-- plan start -->
						<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay=".5s">
							<div class="plan text-center">
								<span class="plan-name">${companyName} <br> Private Limited
								</span>
								<p class="plan-price">
									<sup class="currency"><i class="fa fa-inr" aria-hidden="true"></i></sup><strong>11,999</strong><sub>.00</sub>
								</p>
								<ul class="list-unstyled">
									<li>DIN for 2 Directors</li>
									<li>Digital Signature for 2</li>
									<li>Name Approval</li>
									<li>MOA / AOA</li>
									<li>ROC Registration Certificate</li>
									<li>1 x Company PAN & TAN</li>
								</ul>
								<form accept-charset="UTF-8" action="companyOrder.htm" method="post">
									<!-- CSRF Token -->
									<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" /> <input name="companyName"
										type="hidden" class="form-control " id="companyName" required="" value="${companyName} "> <input name="companyId" type="hidden"
										class="form-control " id="companyId" required="" value="1">
									<button class="order btn btn-primary" type="submit">Create</button>
								</form>
							</div>
						</div>
						<!-- plan end -->

						<!-- plan start -->
						<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1s">
							<div class="plan text-center">
								<span class="plan-name">${companyName}<br> Limited Liability Partnership
								</span>
								<p class="plan-price">
									<sup class="currency"><i class="fa fa-inr" aria-hidden="true"></i></sup><strong>7,999</strong><sub>.00</sub>
								</p>
								<ul class="list-unstyled">
									<li>DPIN for 2 Partners</li>
									<li>Digital Signature for 2</li>
									<li>Name Approval</li>
									<li>LLP Agreement</li>
									<li>ROC Registration Certificate</li>
									<li>1 x LLP PAN & TAN</li>
								</ul>
								<form accept-charset="UTF-8" action="companyOrder.htm" method="post">
									<!-- CSRF Token -->
									<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" /> <input name="companyName"
										type="hidden" class="form-control " id="companyName" required="" value="${companyName} "> <input name="companyId" type="hidden"
										class="form-control " id="companyId" required="" value="2">
									<button class="order btn btn-primary" type="submit">Create</button>
								</form>
							</div>
						</div>
						<!-- plan end -->

						<!-- plan start -->
						<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1.4s">
							<div class="plan text-center">
								<span class="plan-name">${companyName} <br> One Person Company
								</span>
								<p class="plan-price">
									<sup class="currency"><i class="fa fa-inr" aria-hidden="true"></i></sup><strong>10,999</strong><sub>.00</sub>
								</p>
								<ul class="list-unstyled">
									<li>DIN for 1 Director / Owner</li>
									<li>Digital Signature for 1</li>
									<li>Name Approval</li>
									<li>MOA / AOA</li>
									<li>ROC Registration Certificate</li>
									<li>1 x Company PAN & TAN</li>
								</ul>
								<form accept-charset="UTF-8" action="companyOrder.htm" method="post">
									<!-- CSRF Token -->
									<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" /> <input name="companyName"
										type="hidden" class="form-control " id="companyName" required="" value="${companyName} "> <input name="companyId" type="hidden"
										class="form-control " id="companyId" required="" value="3">
									<button class="order btn btn-primary" type="submit">Create</button>
								</form>
							</div>
						</div>
						<!-- plan end -->

						<!-- plan start -->
						<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1.6s">
							<div class="plan text-center">
								<span class="plan-name">${companyName} <br> Public Limited Company
								</span>
								<p class="plan-price">
									<sup class="currency"><i class="fa fa-inr" aria-hidden="true"></i></sup><strong>39,999</strong><sub>.00</sub>
								</p>
								<ul class="list-unstyled">
									<li>DIN for 3 Directors</li>
									<li>Digital Signature for 3</li>
									<li>Name Approval</li>
									<li>MOA / AOA</li>
									<li>ROC Registration Certificate</li>
									<li>1 x Company PAN & TAN</li>
								</ul>
								<form accept-charset="UTF-8" action="companyOrder.htm" method="post">
									<!-- CSRF Token -->
									<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" /> <input name="companyName"
										type="hidden" class="form-control " id="companyName" required="" value="${companyName} "> <input name="companyId" type="hidden"
										class="form-control " id="companyId" required="" value="4">
									<button class="order btn btn-primary" type="submit">Create</button>
								</form>
							</div>
						</div>
						<!-- plan end -->
					</div>
					<!--/ Content row end -->

					<div class="gap-60"></div>
					<div class="gap-40"></div>

					<div class="row">
						<!-- plan start -->
						<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay=".5s">
							<div class="plan text-center">
								<span class="plan-name">${companyName} <br> Nidhi Limited Company
								</span>
								<p class="plan-price">
									<sup class="currency"><i class="fa fa-inr" aria-hidden="true"></i></sup><strong>84,999</strong><sub>.00</sub>
								</p>
								<ul class="list-unstyled">
									<li>DIN for 3 Directors</li>
									<li>Digital Signature for 3</li>
									<li>Name Approval</li>
									<li>MOA / AOA</li>
									<li>ROC Registration Certificate</li>
									<li>1 x Company PAN & TAN</li>
								</ul>
								<form accept-charset="UTF-8" action="companyOrder.htm" method="post">
									<!-- CSRF Token -->
									<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" /> <input name="companyName"
										type="hidden" class="form-control " id="companyName" required="" value="${companyName} "> <input name="companyId" type="hidden"
										class="form-control " id="companyId" required="" value="5">
									<button class="order btn btn-primary" type="submit">Create</button>
								</form>
							</div>
						</div>
						<!-- plan end -->

						<!-- plan start -->
						<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1s">
							<div class="plan text-center">
								<span class="plan-name">${companyName} <br> Section 8 Company</small></span>
								<p class="plan-price">
									<sup class="currency"><i class="fa fa-inr" aria-hidden="true"></i></sup><strong>25,000</strong><sub>.00</sub>
								</p>
								<ul class="list-unstyled">
									<li>DIN for 2 Directors</li>
									<li>Digital Signature for 2</li>
									<li>Name Approval</li>
									<li>MOA / AOA</li>
									<li>ROC Registration Certificate</li>
									<li>1 x Company PAN & TAN</li>
								</ul>
								<form accept-charset="UTF-8" action="companyOrder.htm" method="post">
									<!-- CSRF Token -->
									<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" /> <input name="companyName"
										type="hidden" class="form-control " id="companyName" required="" value="${companyName} "> <input name="companyId" type="hidden"
										class="form-control " id="companyId" required="" value="6">
									<button class="order btn btn-primary" type="submit">Create</button>
								</form>
							</div>
						</div>
						<!-- plan end -->

					</div>
					<!--/ Content row end -->
				</c:if>

			</div>
			<!-- container end -->
		</section>
		<!--/ Main container end -->

		<!-- Copyright start -->
		<section id="copyright" class="copyright angle">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="footer-social unstyled">
							<li><a title="Twitter" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-twitter"></i></span>
							</a> <a title="Facebook" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-facebook"></i></span>
							</a> <a title="Google+" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-google-plus"></i></span>
							</a> <a title="linkedin" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-linkedin"></i></span>
							</a> <a title="Pinterest" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-pinterest"></i></span>
							</a> <a title="Skype" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-skype"></i></span>
							</a> <a title="Dribble" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-dribbble"></i></span>
							</a></li>
						</ul>
					</div>
				</div>
				<!--/ Row end -->
				<div class="row">
					<div class="col-md-12 text-center">
						<div class="copyright-info">
							&copy; Copyright 2015 Craft. <span>All Rights Reserved</span>
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

		<script type="text/javascript" src="resources/js/createCompany.js"></script>
	</div>
	<!-- Body inner end -->
</body>
</html>