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

<link id="style-switch" href="resources/style/main.css" media="screen" rel="stylesheet" type="text/css">

<link id="style-switch" href="resources/file-uploader/css/jquery.fileupload.css" media="screen" rel="stylesheet" type="text/css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="resources/js/html5shiv.js"></script>
      <script src="resources/js/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- CSRF Token -->
	<%-- <input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" /> --%>

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
							<li class="active"><a href="incomeTax.htm">Income Tax Returns</a></li>
							<li><a href="loans.htm">Loans</a></li>
							<li><a href="bookKeeping.htm">Book Keeping</a></li>
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
					<h2>Income Tax Returns</h2>
				</div>
			</div>
			<!-- Subpage title end -->
		</div>
		<!-- Banner area end -->

		<!-- Main container start -->

		<section id="main-container" style="padding-bottom: 0px;">
			<div class="container">

				<div class="row">
					<div class="col-md-12 heading text-center">
						<span class="title-icon classic pull-left"><i class="fa fa-comments"></i></span>
						<h2 class="title classic">The easiest way for e-filing Income Tax Returns in India</h2>
						<h4>QuickFilling is simple to use and free</h4>
						<h5>We will import your data automatically and help you file your Income Tax return in minutes</h5>
					</div>
				</div>
				<form:form id="uploadIncomeTaxDataForm" method="post" commandName="incomeTaxModel" action="uploadIncomeTaxData.htm" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<label>Full Name</label>
								<form:input path="fullName" class="form-control" name="fullName" id="fullName" type="text"></form:input>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<label>Email Id</label>
								<form:input path="emailId" class="form-control" name="lastName" id="lastName" type="email"></form:input>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<label>Phone Number</label>
								<form:input path="phoneNumber" class="form-control" name="phoneNumber" id="phoneNumber" type="text"></form:input>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<label>Bank Name</label>
								<form:input path="bankName" class="form-control" name="bankName" id="bankName" type="text"></form:input>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<label>Bank Account</label>
								<form:input path="bankAccount" class="form-control" name="bankAccount" id="bankAccount" type="text"></form:input>
							</div>
						</div>
						<div class="col-md-2">
							<div class="form-group">
								<label>IFSC Code</label>
								<form:input path="ifscCode" class="form-control" name="ifscCode" id="ifscCode" type="text"></form:input>
								<form:hidden path="incomeTaxRequestId" id="incomeTaxRequestId" value="${incomeTaxModel.incomeTaxRequestId }" />
								<form:hidden path="otherDocuments" id="otherDocuments" value="${incomeTaxModel.otherDocuments }" />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 text-center">
							<!-- CSRF Token -->
							<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />
							<div class="fileupload fileupload-new" data-provides="fileinput">
								<span class="btn btn-white btn-file removeButton fileinput-button"> <span class="fileupload-new">Select Form 16 </span> <form:input
										id="uploadIncomeTaxData" path="files" type="file" class="default" accept=".pdf"></form:input>
								</span> <span id="fileNameUploaded"></span> <br>
							</div>
							<br>
						</div>
					</div>
				</form:form>
				<div class="row">
					<div class="col-md-12 text-center">
						<button disabled id="uploadButton" class="btn btn-primary solid blank ">Upload Form 16</button>
					</div>
				</div>
				<div class="gap-40"></div>
				<div class="row ">
					<div class="col-md-1 col-sm-1 wow fadeInDown" data-wow-delay=".5s"></div>
					<div class="col-md-2 col-sm-2 wow fadeInDown" data-wow-delay=".5s">
						<div class="service-content">
							<span class="service-image"><img class="img-responsive" src="resources/images/incometax/icon_ITRV.jpg" alt="" /></span>
							<p>ITRV - Submission</p>
							<p>Send us your ITR-V to our office and we will submit to CPC on your behalf.</p>
						</div>
					</div>
					<!--/ End first service -->

					<div class="col-md-2 col-sm-2 wow fadeInDown" data-wow-delay=".8s">
						<div class="service-content">
							<span class="service-image"><img class="img-responsive" src="resources/images/incometax/icon_document.jpg" alt="" /></span>
							<p>Document Management</p>
							<p>Store all your tax documents at one place and retrieve when needed.</p>
						</div>

					</div>
					<!--/ End Second features -->
					<div class="col-md-2 col-sm-2 wow fadeInDown" data-wow-delay="1.1s">
						<div class="service-content">
							<span class="service-image"><img class="img-responsive" src="resources/images/incometax/icon_refund.jpg" alt="" /></span>
							<p>Refund Tracking</p>
							<p>We will help you in tracking your Refund Status.</p>
						</div>
					</div>
					<!--/ End Third features -->

					<div class="col-md-2 col-sm-2 wow fadeInDown" data-wow-delay="1.1s">
						<div class="service-content">
							<span class="service-image"><img class="img-responsive" src="resources/images/incometax/icon_history.jpg" alt="" /></span>
							<p>Tax History</p>
							<p>Know year wise exact status of your Tax Return as per Income Tax Department.</p>
						</div>
					</div>
					<!--/ End Fourth features -->

					<div class="col-md-2 col-sm-2 wow fadeInDown" data-wow-delay="1.1s">
						<div class="service-content">
							<span class="service-image"><img class="img-responsive" src="resources/images/incometax/icon_support.jpg" alt="" /></span>
							<p>Post Filing Support</p>
							<p>Get any support and assistance on filing related problems.</p>
						</div>
					</div>
					<!--/ End Fifth features -->
				</div>

				<div class="gap-60"></div>

				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="faq-box">
							<h4>ADVANTAGES OF FILING YOUR INCOME TAX RETURN</h4>
							<p>
							<ul>
								<li>It becomes your standard income proof</li>
								<li>You can get the loans sanctioned quickly and easily</li>
								<li>You can trade in stocks, open bank accounts, get bank credits, make investments etc. and you can do all these with ease if you remain
									good in the financial institutions books by filing your tax returns.</li>
								<li>You can claim your refunds for taxes deducted or paid in excess of your tax liabilities.</li>
								<li>Many foreign countries want to know how financially sound you are before they grant you with a visa. So to prove your financial
									worth, Income tax returns are must.</li>
								<li>Not to forget, it is your obligation. The taxes you pay on your income will work towards betterment of our nation.</li>
								<li>For professionals and business organisations, Income tax returns are a must to become eligible to secure certain tenders.</li>
							</ul>
							</p>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="faq-box">
							<h4>DISADVANTAGES OF NOT FILING YOUR INCOME TAX RETURN</h4>
							<p>
							<ul>
								<li>If you don't file your return in time, you will have to pay interest on your tax dues when you file at a later date.</li>
								<li>If you have incurred losses, you can not carry forward the same to subsequent years if you do not file your return.</li>
								<li>You could become liable for a penalty or Prosecution by the Income Tax Department if you conceal or fail to disclose your income.</li>
							</ul>
							</p>
						</div>
					</div>
					<!-- End col-md-6 -->
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
								</a> <a target="_blank" title="Skype" href="#"> <span class="icon-pentagon wow bounceIn"><i class="fa fa-skype"></i></span>
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
			<!-- jquery fileUpload -->
			<script type="text/javascript" language="javascript" src="resources/js/jquery-ui.js"></script>
			<script type="text/javascript" language="javascript" src="resources/file-uploader/js/jquery.fileupload.js"></script>
			<script type="text/javascript" language="javascript" src="resources/file-uploader/js/vendor/jquery.ui.widget.js"></script>
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