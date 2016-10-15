<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic Page Needs
	================================================== -->
<meta charset="utf-8">
<title>BizCraft - Responsive Html5 Template</title>
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
							<a href="index.html"> <img class="img-responsive" src="resources/images/logo.png" alt="logo">
							</a>
						</div>
					</div>
					<!--/ Logo end -->
					<nav class="collapse navbar-collapse clearfix" role="navigation">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.htm">Home</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Company <i class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="createCompany.htm">Create Company</a></li>
									</ul>
								</div></li>
							<li class="dropdown active"><a href="loans.htm">Loans</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="team.html">Our Team</a></li>
										<li><a href="about2.html">About Us - 2</a></li>
										<li><a href="service2.html">Services - 2</a></li>
										<li><a href="service-single.html">Services Single</a></li>
										<li><a href="pricing.html">Pricing Table</a></li>
										<li><a href="404.html">404 Page</a></li>
									</ul>
								</div></li>
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
					<h2>LOANS</h2>
				</div>
			</div>
			<!-- Subpage title end -->
		</div>
		<!-- Banner area end -->

		<!-- Main container start -->

		<section id="main-container">
			<!--Isotope filter start -->
			<section id="main-container" class="portfolio portfolio-box" style="margin-top: -101px;">
				<div class="row text-center">
					<div class="isotope-nav" data-isotope-nav="isotope">
						<ul>
							<li class="homeloan"><a>Home Loan</a></li>
							<li class="personalLoan"><a>Loan Against Property</a></li>
							<li class="balanceTransfer"><a>Balance Transfer & Top ups</a></li>
						</ul>
					</div>
				</div>
			</section>
			<!-- Isotope filter end -->
			<div class="container" style="margin-top: -100px;">
				<div class="row col-md-7">
					<!-- Testimonial start-->
					<div class="testimonial elements">
						<div class="row">
							<div id="testimonial-carousel" class="owl-carousel owl-theme testimonial-slide">
								<div class="item">
									<div class="testimonial-thumb">
										<h2>Home Loans</h2>
									</div>
									<div class="testimonial-content">
										<p>If you are looking around to choose a home loan then services of Quick Loan Advisor can be highly beneficial. We provide you Home
											Loan Checklist that will help you in making a decision apt for your needs and requirements. Our Home Loan Checklist can help you in many
											purposes like:
										<ul>
											<li>For buying an investment property</li>
											<li>For constructing your new home</li>
											<li>To buy or acquire residential property, etc.</li>
										</ul>
										</p>
										<h6 class="name">Advices given by our loan experts help you in avoiding hassles that you may face by applying for those loans that do
											not fulfill your requirements. We include all the essential details in our checklist that lets you have absolutely convenient experience in
											finalizing your loan deal with bank or financial institution. We include details regarding:</h6>
										<li><h4>Interest Rates</h4>
											<ul>
												<li>Variable Interest Rate Home Loan: In this interest rate increases or decreases in accordance with the rates in the markets</li>
												<li>Fixed Interest Rate Home Loan: In this, you may elect to fix an interest rate typically for years as per rules</li>
											</ul></li>
										<li><h4>Generally Interest Rates-9.45% to 9.80 % depending on Financials</h4></li>
										<li><h4>Repayment Options</h4>
											<ul>
												<li>Additional Repayments: Updates you if you can make additional repayments in addition to your normal minimum monthly repayments or
													not</li>
												<li>Redraw Facility: Updates you if you can redraw your extra funds from your loans or not</li>
												<li>Paying Weekly, Fortnightly or Monthly: Updates you about the timing of your loan repayments and through this you may know how
													sooner you can aptly repay you home loan</li>
											</ul></li>
										<li><h4>Key Criteria of Home Loans</h4>
											<ul>
												<li>Age should be in 21 to 58 years if person is salaried and if self employed, then age can be in between 21 to 60 years</li>
												<li>Loan to value should be 70% to the registered value or market value of the property, but whichever will be lesser that will be
													considered</li>
												<li>Eligibility will be based on the free income available for equity monthly installment</li>
												<li>Tenure of home loans can be up to 20 years.</li>
												<li>One time charges include processing fee or upfront fee and that shall be paid either at the time of in principle sanction
													acceptance or after the completion of final sanction.</li>
												<li>Charges also include legal due diligence charges & valuation charges. Additionally, there can be inclusion of prepayment charges
													too if customer likes to prepay the loan by taking over the loan from any other lender.</li>
											</ul></li>
									</div>
								</div>
								<div class="item">
									<div class="testimonial-thumb">
										<h2>Loan against Property</h2>
									</div>
									<div class="testimonial-content">
										<p>We provide most convincing and helpful advices for the loan against property which is a loan given or disbursed against the mortgage
											of a property, which is decided as a certain percentage of the market value of property.
										<li><h4>Different purposes where you can take a loan against your Property:</h4></li>
										<ul>
											<li>For expanding your business in a lucrative manner</li>
											<li>Getting your son/daughter married without facing any monetary problems</li>
											<li>Sending your son/daughter for higher studies abroad quite easily</li>
											<li>Funding your dream vacation in the easiest and reliable fashion</li>
											<li>Funding medical treatments in the competent and convenient manner</li>
											<li>For fulfilling business needs of corporate</li>
										</ul>
										</p>
										<li><h4>Noticeable Advantages of Loan against property:</h4></li>
										<ul>
											<li>You can use it anytime you want to</li>
											<li>There are fewer risks involved</li>
											<li>Easy accessibility of customized loan with great feasibility</li>
											<li>There are many numerous legal companies that are into such trade</li>
										</ul>
										<li><h4>Different types of properties which can be mortgaged for a Loan:</h4></li>
										<ul>
											<li>Normally, you can take a loan against your all types of self-occupied or rented residential property and that property can be any
												piece of land or a house.</li>
										</ul>
										<li><h4>Eligibility criteria to get a loan against a Property:</h4></li>
										<p>Eligibility criteria vary from one bank to another for loan against property but from all the different factors, most common ones
											that mostly all banks follow are:
										<ul>
											<li>Cost or value of the property mortgaged</li>
											<li>Your income, debt obligations and savings</li>
											<li>Track record of your repayment for other loans or credit cards, etc.</li>
										</ul>
										<p>
										<li><h4>Rate of Interest-Generally varies 11.00 to 12%.</h4></li>
										</p>

										<li><h4>List of Documents:</h4></li>
										<ul>
											<li>Profile of promoter & company</li>
											<li>Financial and audit reports of last three years along with provisional for the current year</li>
											<li>KYC documents and latest net worth of promoter and applicant company</li>
											<li>Brief about all the security being offered</li>
											<li>Brief about all the end use of funds</li>
											<li>Debt profile related to company</li>
											<li>Projected financials along with all the assumptions</li>
											<li>If available then external credit rating too</li>
											<li>The repayment schedule</li>
											<li>The valuation report or legal opinion related to the property</li>
											<li>Detailed break up report of end use of funds</li>
										</ul>
									</div>
								</div>
								<div class="item">
									<div class="testimonial-thumb">
										<h2>Balance Transfer/Top-up</h2>
									</div>
									<div class="testimonial-content">
										<p>We efficiently help you in your balance transfer & top-up requirements. Our experts assist you in Balance Transfer, which is
											considered as a facility that provides a choice to the customer to transfer the outstanding balance of the loan availed for better ROIs. It
											assists you in moving from higher rate of interest to lower rate of interest. In Top-up facility, we help customers who are having their
											loan running with a financial institution and wishes to get some extra funding on the same loan. We alleviate the whole process of balance
											transfer and top up for our clients quite convincingly. We help customers in arranging extra fund under our services for Top-up helps and
											we can also competently arrange such funds from other bank that will come under inclusion of balance transfer & top-up services.
										<li><h4>Key Features of Balance Transfer & Top-up Loans:</h4></li>
										<ul>
											<li>It includes a wide range of product options that further offers attractive fixed and floating rate options for choosing</li>
											<li>With this, you can get additional top-up loan amount up to 100% of the original home loan amount at the interest rates of home
												loans</li>
										</ul>
										</p>
										<li><h4>Document Required for Balance Transfer & Top-up Loans:</h4></li>
										<p>For such loans, some important documents are required by banks or financial institutions for processing your application for Balance
											Transfer and Top Up procedures:</p>
										<ul>
											<li>Copy of Your Property Paper that should include complete set of property paper Xerox, your occupancy Certificate and approved plan</li>
											<li>Outstanding of the amount of Loan</li>
											<li>Foreclosure Letter</li>
											<li>Application form with Photograph</li>
											<li>Any document for age proof</li>
											<li>Address Proof</li>
											<li>Job Confirmation proof is needed for applicant below 23 years of age</li>
											<li>Income Proof and all related documents should be signed by the applicant or co applicant</li>
											<li>Log in free Cheque</li>
											<li>Bank Statement or pass book copy of applicant</li>
										</ul>
										<p>For easing your financial burden, refinancing your already existing Mortgage Loan or Home Loan or even consolidating a number of
											other debts into one loan can be an effective ways that you can try, and we assist you in this by arranging Balance Transfer & Top-up loans
											for you. You may contact us for taking apt advices for better financial plans that will restructure your financial arrangements and help
											you in achieving your financial goals more efficiently.</p>

									</div>
								</div>
							</div>
							<!--/ Testimonial carousel end-->
						</div>
					</div>
					<!--/ Testimonial end-->
				</div>
				<div class="row col-md-1"></div>
				<div class="row col-md-4">

					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Interest Calculator</a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>Amount</label> <input class="form-control" name="amount" id="amount" type="number" min="0" onkeyup="computeLoan()"
													onchange="computeLoan()"></input>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label>Rate of Interest</label> <input class="form-control" name="interest" id="interest_rate" type="number" min="0"
													onkeyup="computeLoan()" onchange="computeLoan()"></input>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<label>Months</label> <input class="form-control" name="months" id="months" type="number" min="0" onkeyup="computeLoan()"
													onchange="computeLoan()"></input>
											</div>
										</div>
										<div id="monthlyEmiSection" class="col-md-12">
											<h3 class="title-border">Your Monthly EMI:</h3>
											<h4>
												<i class="fa fa-inr"></i> &ensp; <span id="monthlyEmi">0.0</span>
											</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--/ Panel 1 end-->

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseTwo"> Apply for loan</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<form:form id="loan-form" action="applyForLoan.htm" method="post" modelAttribute="loanOrderModel">
									<!-- CSRF Token -->
									<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />
									<div class="panel-body">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label>Loan Type</label>
													<form:select class="form-control" path="loanId" name="loanType" id="loanType">
														<form:options items="${loanTypesMap}" ></form:options>
													</form:select>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label>Name</label> <form:input class="form-control" path="name" name="name" id="name" type="text"></form:input>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label>Phone Number</label> <form:input class="form-control" path="phoneNumber" name="phoneNumber" id="phone_number" type="text"></form:input>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label>Email Address</label> <form:input class="form-control" path="emailId" name="emailId" id="emailId" type="email"></form:input>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label>PAN Number</label> <form:input class="form-control" path="panNumber" name="panNumber" id="panNumber" type="text"></form:input>
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
			<!--/ container end -->

		</section>
		<!--/ Main container end -->

		<!-- Footer start -->
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
		<!-- Owl Carousel -->
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