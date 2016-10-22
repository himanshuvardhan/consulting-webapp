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

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="resources/js/html5shiv.js"></script>
      <script src="resources/js/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- CSRF Token -->
	<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}" />
	<input type="hidden" id="styleSwitcherPreset" name="styleSwitcherPreset" value="preset1" />

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
							<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
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
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Company <i
									class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="createCompany.htm">Create Company</a></li>
									</ul>
								</div></li>
							<li><a href="incomeTax.htm">Income Tax</a></li>
							<li><a href="loans.htm">Loans</a></li>
							<li><a href="bookKeeping.htm">Book Keeping</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Features <i
									class="fa fa-angle-down"></i></a>
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
										<input name="companyName" type="text" class="form-control " placeholder="Enter Company Name" id="companyName"
											required=""> <span class="input-group-addon">
											<button class="btn" id="createCompany" type="submit">Register a Company in India</button> </a>
										</span>
									</div>
								</form>
							</div>
						</div> <!-- .cd-full-width -->
					</li>
					<li>
						<div class="overlay2">
							<img class="" src="resources/images/slider/bg2.jpg" alt="slider">
						</div>
						<div class="cd-half-width">
							<h2>How Big Can You Dream?</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. In consequatur cumque natus!</p>
							<a href="#0" class="cd-btn btn btn-primary solid">Take a Tour</a>
						</div> <!-- .cd-half-width -->

						<div class="cd-half-width cd-img-container">
							<img src="resources/images/slider/bg-thumb1.png" alt="">
						</div> <!-- .cd-half-width.cd-img-container -->
					</li>
					<li>
						<div class="overlay2">
							<img class="" src="resources/images/slider/bg3.jpg" alt="slider">
						</div>
						<div class="cd-half-width cd-img-container img-right">
							<img src="resources/images/slider/bg-thumb2.png" alt="">
						</div> <!-- .cd-half-width.cd-img-container -->
						<div class="cd-half-width">
							<h2>Your Challenge is Our Progress</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. In consequatur cumque natus!</p>
							<a href="#0" class="cd-btn btn btn-primary white">Start</a> <a href="#0"
								class="cd-btn btn secondary btn-primary solid">Learn More</a>
						</div> <!-- .cd-half-width -->
					</li>
					<li class="cd-bg-video">
						<div class="cd-full-width">
							<h2>WE ARE HERE TO MAKE IT HAPPEN</h2>
							<h3>We Making Difference To Great Things Possible</h3>

							<a href="#0" class="cd-btn btn btn-primary solid">Learn more</a>
						</div> <!-- .cd-full-width -->

						<div class="cd-bg-video-wrapper" data-video="resources/videos/video">
							<!-- video element will be loaded using jQuery -->
						</div> <!-- .cd-bg-video-wrapper -->
					</li>
				</ul>
				<!--/ cd-hero-slider -->

				<div class="cd-slider-nav">
					<nav>
						<span class="cd-marker item-1"></span>
						<ul>
							<li class="selected"><a href="#0"><i class="fa fa-rocket"></i> Startup</a></li>
							<li><a href="#0"><i class="fa fa-money"></i> Loans</a></li>
							<li><a href="#0"><i class="fa fa-android"></i> Tax</a></li>
							<li class="video"><a href="#0"><i class="fa fa-book"></i> Bookkeeping</a></li>
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
								<p>High Life narwhal, banh mi PBR single-origin coffee Odd Future actually aliqua polaroid befor</p>
							</div>
						</div>
						<!--/ End first service -->

						<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay=".8s">
							<div class="service-content text-center">
								<span class="service-icon icon-pentagon"><i class="fa fa-money"></i></span>
								<h3>Fund Requirement</h3>
								<p>Food truck master cleanse mixtape minim Portland, cardigan stumptown chambray swag</p>
							</div>

						</div>
						<!--/ End Second service -->

						<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="1.1s">
							<div class="service-content text-center">
								<span class="service-icon icon-pentagon"><i class="fa fa-android"></i></span>
								<h3>Tax Return Compliances</h3>
								<p>Neutra Thundercats craft beer, listicle meggings bicycle rights 90's XOXO beard cardiga</p>
							</div>
						</div>
						<!--/ End Third service -->

						<div class="col-md-3 col-sm-3 wow fadeInDown" data-wow-delay="1.4s">
							<div class="service-content text-center">
								<span class="service-icon icon-pentagon"><i class="fa fa-book"></i></span>
								<h3>Bookkeeping</h3>
								<p>We design beautiful modern engaging websites that always latest responsive technologies.</p>
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

		<!-- Portfolio start -->
		<section id="portfolio" class="portfolio">
			<div class="container">
				<div class="row">
					<div class="col-md-12 heading">
						<span class="title-icon classic pull-left"><i class="fa fa-suitcase"></i></span>
						<h2 class="title classic">Our Awesome Work</h2>
					</div>
				</div>
				<!-- Title row end -->

				<!--Isotope filter start -->
				<div class="row text-right">
					<div class="isotope-nav" data-isotope-nav="isotope">
						<ul>
							<li><a href="#" class="active" data-filter="*">All</a></li>
							<li><a href="#" data-filter=".web-design">Web Design</a></li>
							<li><a href="#" data-filter=".development">Development</a></li>
							<li><a href="#" data-filter=".joomla">Joomla</a></li>
							<li><a href="#" data-filter=".wordpress">Wordpress</a></li>
						</ul>
					</div>
				</div>
				<!-- Isotope filter end -->
			</div>

			<div class="container-fluid">
				<div class="row">
					<div id="isotope" class="isotope">
						<div class="col-sm-3 web-design isotope-item">
							<div class="grid">
								<figure class="effect-oscar">
									<img src="resources/images/portfolio/portfolio1.jpg" alt="">
									<figcaption>
										<h3>Startup Business</h3>
										<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a> <a
											class="view icon-pentagon" data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg1.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
							</div>
						</div>
						<!-- Isotope item end -->

						<div class="col-sm-3 development isotope-item">
							<div class="grid">
								<figure class="effect-oscar">
									<img src="resources/images/portfolio/portfolio2.jpg" alt="">
									<figcaption>
										<h3>Easy to Lanunch</h3>
										<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a> <a
											class="view icon-pentagon" data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg2.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
							</div>
						</div>
						<!-- Isotope item end -->

						<div class="col-sm-3 joomla isotope-item">
							<div class="grid">
								<figure class="effect-oscar">
									<img src="resources/images/portfolio/portfolio3.jpg" alt="">
									<figcaption>
										<h3>Your Business</h3>
										<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a> <a
											class="view icon-pentagon" data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg3.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
							</div>
						</div>
						<!-- Isotope item end -->

						<div class="col-sm-3 wordpress isotope-item">
							<div class="grid">
								<figure class="effect-oscar">
									<img src="resources/images/portfolio/portfolio4.jpg" alt="">
									<figcaption>
										<h3>Prego Match</h3>
										<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a> <a
											class="view icon-pentagon" data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg4.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
							</div>
						</div>
						<!-- Isotope item end -->

						<div class="col-sm-3 joomla isotope-item">
							<div class="grid">
								<figure class="effect-oscar">
									<img src="resources/images/portfolio/portfolio5.jpg" alt="">
									<figcaption>
										<h3>Fashion Brand</h3>
										<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a> <a
											class="view icon-pentagon" data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg5.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
							</div>
						</div>
						<!-- Isotope item end -->

						<div class="col-sm-3 development isotope-item">
							<div class="grid">
								<figure class="effect-oscar">
									<img src="resources/images/portfolio/portfolio6.jpg" alt="">
									<figcaption>
										<h3>The Insidage</h3>
										<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a> <a
											class="view icon-pentagon" data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg1.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
							</div>
						</div>
						<!-- Isotope item end -->

						<div class="col-sm-3 development isotope-item">
							<div class="grid">
								<figure class="effect-oscar">
									<img src="resources/images/portfolio/portfolio7.jpg" alt="">
									<figcaption>
										<h3>Light Carpet</h3>
										<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a> <a
											class="view icon-pentagon" data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg2.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
							</div>
						</div>
						<!-- Isotope item end -->

						<div class="col-sm-3 development isotope-item">
							<div class="grid">
								<figure class="effect-oscar">
									<img src="resources/images/portfolio/portfolio8.jpg" alt="">
									<figcaption>
										<h3>Amazing Keyboard</h3>
										<a class="link icon-pentagon" href="portfolio-item.html"><i class="fa fa-link"></i></a> <a
											class="view icon-pentagon" data-rel="prettyPhoto" href="resources/images/portfolio/portfolio-bg3.jpg"><i
											class="fa fa-search"></i></a>
									</figcaption>
								</figure>
							</div>
						</div>
						<!-- Isotope item end -->
					</div>
					<!-- Isotope content end -->
				</div>
				<!-- Content row end -->
			</div>
			<!-- Container end -->
		</section>
		<!-- Portfolio end -->

		<!-- Counter Strat -->
		<section class="ts_counter no-padding">
			<div class="container-fluid">
				<div class="row facts-wrapper wow fadeInLeft text-center">
					<div class="facts one col-md-3 col-sm-6">
						<span class="facts-icon"><i class="fa fa-user"></i></span>
						<div class="facts-num">
							<span class="counter">1200</span>
						</div>
						<h3>Clients</h3>
					</div>

					<div class="facts two col-md-3 col-sm-6">
						<span class="facts-icon"><i class="fa fa-institution"></i></span>
						<div class="facts-num">
							<span class="counter">1277</span>
						</div>
						<h3>Item Sold</h3>
					</div>

					<div class="facts three col-md-3 col-sm-6">
						<span class="facts-icon"><i class="fa fa-suitcase"></i></span>
						<div class="facts-num">
							<span class="counter">869</span>
						</div>
						<h3>Projects</h3>
					</div>

					<div class="facts four col-md-3 col-sm-6">
						<span class="facts-icon"><i class="fa fa-trophy"></i></span>
						<div class="facts-num">
							<span class="counter">76</span>
						</div>
						<h3>Awwards</h3>
					</div>

				</div>
			</div>
			<!--/ Container end -->
		</section>
		<!--/ Counter end -->

		<!-- Feature box start -->
		<section id="feature" class="feature">
			<div class="container">
				<div class="row">
					<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
						<span class="feature-icon pull-left"><i class="fa fa-heart-o"></i></span>
						<div class="feature-content">
							<h3>Clean &amp; Modern Design</h3>
							<p>Bras urna felis accumsan at ultrde cesid posuere masa socis nautoque penat</p>
						</div>
					</div>
					<!--/ End first featurebox -->

					<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
						<span class="feature-icon pull-left"><i class="fa fa-codepen"></i></span>
						<div class="feature-content">
							<h3>Useful Shortcodes</h3>
							<p>High Life narwhal, banh mi PBR single-origin coffee Odd Future actually aliqua</p>
						</div>
					</div>
					<!--/ End 2nd featurebox -->

					<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
						<span class="feature-icon pull-left"><i class="fa fa-film"></i></span>
						<div class="feature-content">
							<h3>Parallax Section</h3>
							<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
					<!--/ End 3rd featurebox -->
				</div>
				<!-- Content row end -->

				<div class="gap-40"></div>

				<div class="row">
					<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
						<span class="feature-icon pull-left"><i class="fa fa-newspaper-o"></i></span>
						<div class="feature-content">
							<h3>Multipurpose Concept</h3>
							<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
					<!--/ End 1st featurebox -->

					<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
						<span class="feature-icon pull-left"><i class="fa fa-desktop"></i></span>
						<div class="feature-content">
							<h3>Responsive Layout</h3>
							<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
					<!--/ End 2nd featurebox -->

					<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
						<span class="feature-icon pull-left"><i class="fa fa-pagelines"></i></span>
						<div class="feature-content">
							<h3>Light wight Performance</h3>
							<p>High Life narwhal, banh mi PBR single-origin coffee Odd Future actually aliqua</p>
						</div>
					</div>
					<!--/ End 3rd featurebox -->

				</div>
				<!-- Content row end -->

				<div class="gap-40"></div>

				<div class="row">
					<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
						<span class="feature-icon pull-left"><i class="fa fa-recycle"></i></span>
						<div class="feature-content">
							<h3>Free Lifetime Updates</h3>
							<p>Bras urna felis accumsan at ultrde cesid posuere masa socis nautoque penat</p>
						</div>
					</div>
					<!--/ End first featurebox -->

					<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
						<span class="feature-icon pull-left"><i class="fa fa-diamond"></i></span>
						<div class="feature-content">
							<h3>Endless Possibilites</h3>
							<p>High Life narwhal, banh mi PBR single-origin coffee Odd Future actually aliqua</p>
						</div>
					</div>
					<!--/ End first featurebox -->

					<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
						<span class="feature-icon pull-left"><i class="fa fa-whatsapp"></i></span>
						<div class="feature-content">
							<h3>24/7 Live Support</h3>
							<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
					<!--/ End first featurebox -->
				</div>
				<!-- Content row end -->

			</div>
			<!--/ Container end -->
		</section>
		<!--/ Feature box end -->


		<section id="image-block" class="image-block no-padding">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 ts-padding"
						style="height: 650px; background: url(resources/images/image-block-bg.jpg) 50% 50%/cover no-repeat;"></div>
					<div class="col-md-6 ts-padding img-block-right">
						<div class="img-block-head text-center">
							<h2>Know More About Our Company</h2>
							<h3>Why Choose Us</h3>
							<p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.
								Proin gravida nibh vel velit auctor Aenean sollicitudin, adipisicing elit sed lorem quis bibendum auctor.</p>
						</div>

						<div class="gap-30"></div>

						<div class="image-block-content">
							<span class="feature-icon pull-left"><i class="fa fa-bicycle"></i></span>
							<div class="feature-content">
								<h3>Tons of Features</h3>
								<p>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut</p>
							</div>
						</div>
						<!--/ End 1st block -->

						<div class="image-block-content">
							<span class="feature-icon pull-left"><i class="fa fa-diamond"></i></span>
							<div class="feature-content">
								<h3>PowerPack Theme</h3>
								<p>Proin gravida nibh vel velit auctor Aenean sollicitudin adipisicing</p>
							</div>
						</div>
						<!--/ End 1st block -->

						<div class="image-block-content">
							<span class="feature-icon pull-left"><i class="fa fa-street-view"></i></span>
							<div class="feature-content">
								<h3>Day Night Support</h3>
								<p>Simply dummy text and typesettings industry has been the industry</p>
							</div>
						</div>
						<!--/ End 1st block -->

					</div>
				</div>
			</div>
		</section>
		<!--/ Image block end -->


		<!-- Team start -->
		<section id="team" class="team">
			<div class="container">
				<div class="row">
					<div class="col-md-12 heading">
						<span class="title-icon pull-left"><i class="fa fa-weixin"></i></span>
						<h2 class="title">
							Meet with our Team <span class="title-desc">A Quality Experience Team with 4 years experience</span>
						</h2>
					</div>
				</div>
				<!-- Title row end -->

				<div class="row text-center">
					<div class="col-md-3 col-sm-6">
						<div class="team wow slideInLeft">
							<div class="img-hexagon">
								<img src="resources/images/team/team1.jpg" alt=""> <span class="img-top"></span> <span class="img-bottom"></span>
							</div>
							<div class="team-content">
								<h3>Vosgi Varduhi</h3>
								<p>Web Designer</p>
								<div class="team-social">
									<a class="fb" href="#"><i class="fa fa-facebook"></i></a> <a class="twt" href="#"><i class="fa fa-twitter"></i></a>
									<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a> <a class="linkdin" href="#"><i
										class="fa fa-linkedin"></i></a> <a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
								</div>
							</div>
						</div>
					</div>
					<!--/ Team 1 end -->
					<div class="col-md-3 col-sm-6">
						<div class="team wow slideInLeft">
							<div class="img-hexagon">
								<img src="resources/images/team/team2.jpg" alt=""> <span class="img-top"></span> <span class="img-bottom"></span>
							</div>
							<div class="team-content">
								<h3>Robert Aleska</h3>
								<p>Web Designer</p>
								<div class="team-social">
									<a class="fb" href="#"><i class="fa fa-facebook"></i></a> <a class="twt" href="#"><i class="fa fa-twitter"></i></a>
									<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a> <a class="linkdin" href="#"><i
										class="fa fa-linkedin"></i></a> <a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
								</div>
							</div>
						</div>
					</div>
					<!--/ Team 2 end -->
					<div class="col-md-3 col-sm-6">
						<div class="team wow slideInRight">
							<div class="img-hexagon">
								<img src="resources/images/team/team3.jpg" alt=""> <span class="img-top"></span> <span class="img-bottom"></span>
							</div>
							<div class="team-content">
								<h3>Taline Voski</h3>
								<p>Web Designer</p>
								<div class="team-social">
									<a class="fb" href="#"><i class="fa fa-facebook"></i></a> <a class="twt" href="#"><i class="fa fa-twitter"></i></a>
									<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a> <a class="linkdin" href="#"><i
										class="fa fa-linkedin"></i></a> <a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
								</div>
							</div>
						</div>
					</div>
					<!--/ Team 3 end -->
					<div class="col-md-3 col-sm-6">
						<div class="team animate wow slideInRight">
							<div class="img-hexagon">
								<img src="resources/images/team/team4.jpg" alt=""> <span class="img-top"></span> <span class="img-bottom"></span>
							</div>
							<div class="team-content">
								<h3>Alban Spencer</h3>
								<p>Web Designer</p>
								<div class="team-social">
									<a class="fb" href="#"><i class="fa fa-facebook"></i></a> <a class="twt" href="#"><i class="fa fa-twitter"></i></a>
									<a class="gplus" href="#"><i class="fa fa-google-plus"></i></a> <a class="linkdin" href="#"><i
										class="fa fa-linkedin"></i></a> <a class="dribble" href="#"><i class="fa fa-dribbble"></i></a>
								</div>
							</div>
						</div>
					</div>
					<!--/ Team 4 end -->
				</div>
				<!--/ Content row end -->
			</div>
			<!--/ Container end -->
		</section>
		<!--/ Team end -->

		<!-- Parallax 1 start -->
		<section class="parallax parallax1">
			<div class="parallax-overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<h2>Are You Ready to Buy This Template!</h2>
						<h3>Just Click Button and Use Your Own</h3>
						<p>
							<a href="#" class="btn btn-primary white">Purchase Now</a> <a href="#" class="btn btn-primary solid">Get In
								Touch</a>
						</p>
					</div>
				</div>
			</div>
			<!-- Container end -->
		</section>
		<!-- Parallax 1 end -->

		<!-- Pricing table start -->
		<section id="pricing" class="pricing">
			<div class="container">
				<div class="row">
					<div class="col-md-12 heading">
						<span class="title-icon pull-left"><i class="fa fa-university"></i></span>
						<h2 class="title">
							Pricing Table <span class="title-desc">We Love to Work with Passion</span>
						</h2>
					</div>
				</div>
				<!-- Title row end -->
				<div class="row">
					<!-- plan start -->
					<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay=".5s">
						<div class="plan text-center">
							<span class="plan-name">Basic <small>Monthly plan</small></span>
							<p class="plan-price">
								<sup class="currency">$</sup><strong>49</strong><sub>.99</sub>
							</p>
							<ul class="list-unstyled">
								<li>100GB Monthly Bandwidth</li>
								<li>$100 Google AdWords</li>
								<li>100 Domain Hosting</li>
								<li>SSL Shopping Cart</li>
								<li>24/7 Live Support</li>
							</ul>
							<a class="btn btn-primary" href="#.">Sign Up</a>
						</div>
					</div>
					<!-- plan end -->

					<!-- plan start -->
					<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1s">
						<div class="plan text-center">
							<span class="plan-name">Standared <small>Monthly plan</small></span>
							<p class="plan-price">
								<sup class="currency">$</sup><strong>99</strong><sub>.99</sub>
							</p>
							<ul class="list-unstyled">
								<li>100GB Monthly Bandwidth</li>
								<li>$100 Google AdWords</li>
								<li>100 Domain Hosting</li>
								<li>SSL Shopping Cart</li>
								<li>24/7 Live Support</li>
							</ul>
							<a class="btn btn-primary" href="#.">Sign Up</a>
						</div>
					</div>
					<!-- plan end -->

					<!-- plan start -->
					<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1.4s">
						<div class="plan text-center featured">
							<span class="plan-name">Professional <small>Monthly plan</small></span>
							<p class="plan-price">
								<sup class="currency">$</sup><strong>149</strong><sub>.99</sub>
							</p>
							<ul class="list-unstyled">
								<li>100GB Monthly Bandwidth</li>
								<li>$100 Google AdWords</li>
								<li>100 Domain Hosting</li>
								<li>SSL Shopping Cart</li>
								<li>24/7 Live Support</li>
							</ul>
							<a class="btn btn-primary" href="#.">Sign Up</a>
						</div>
					</div>
					<!-- plan end -->

					<!-- plan start -->
					<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1.6s">
						<div class="plan text-center">
							<span class="plan-name">Premium <small>Monthly plan</small></span>
							<p class="plan-price">
								<sup class="currency">$</sup><strong>399</strong><sub>.99</sub>
							</p>
							<ul class="list-unstyled">
								<li>100GB Monthly Bandwidth</li>
								<li>$100 Google AdWords</li>
								<li>100 Domain Hosting</li>
								<li>SSL Shopping Cart</li>
								<li>24/7 Live Support</li>
							</ul>
							<a class="btn btn-primary" href="#.">Sign Up</a>
						</div>
					</div>
					<!-- plan end -->
				</div>
				<!--/ Content row end -->
			</div>
			<!--/  Container end-->
		</section>
		<!--/ Pricing table end -->


		<!-- Testimonial start-->
		<section class="testimonial parallax parallax2">
			<div class="parallax-overlay"></div>
			<div class="container">
				<div class="row">
					<div id="testimonial-carousel" class="owl-carousel owl-theme text-center testimonial-slide">
						<div class="item">
							<div class="testimonial-thumb">
								<img src="resources/images/team/testimonial1.jpg" alt="testimonial">
							</div>
							<div class="testimonial-content">
								<p class="testimonial-text">Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will
									uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by
									accident, sometimes on purpose. Lorem Ipsum is that it as opposed to using.</p>
								<h3 class="name">
									Sarah Arevik<span>Chief Executive</span>
								</h3>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-thumb">
								<img src="resources/images/team/testimonial2.jpg" alt="testimonial">
							</div>
							<div class="testimonial-content">
								<p class="testimonial-text">Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will
									uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by
									accident, sometimes on purpose. Lorem Ipsum is that it as opposed to using.</p>
								<h3 class="name">
									Narek Bedros<span>Sr. Manager</span>
								</h3>
							</div>
						</div>
						<div class="item">
							<div class="testimonial-thumb">
								<img src="resources/images/team/testimonial3.jpg" alt="testimonial">
							</div>
							<div class="testimonial-content">
								<p class="testimonial-text">Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will
									uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by
									accident, sometimes on purpose. Lorem Ipsum is that it as opposed to using.</p>
								<h3 class="name">
									Taline Lucine<span>Sales Manager</span>
								</h3>
							</div>
						</div>
					</div>
					<!--/ Testimonial carousel end-->
				</div>
				<!--/ Row end-->
			</div>
			<!--/  Container end-->
		</section>
		<!--/ Testimonial end-->


		<!-- Clients start -->
		<section id="clients" class="clients">
			<div class="container">
				<div class="row wow fadeInLeft">
					<div id="client-carousel" class="col-sm-12 owl-carousel owl-theme text-center client-carousel">
						<figure class="item client_logo">
							<a href="#"> <img src="resources/images/clients/client1.png" alt="client">
							</a>
						</figure>
						<figure class="item client_logo">
							<a href="#"> <img src="resources/images/clients/client2.png" alt="client">
							</a>
						</figure>
						<figure class="item client_logo">
							<a href="#"> <img src="resources/images/clients/client3.png" alt="client">
							</a>
						</figure>
						<figure class="item client_logo">
							<a href="#"> <img src="resources/images/clients/client4.png" alt="client">
							</a>
						</figure>
						<figure class="item client_logo">
							<a href="#"> <img src="resources/images/clients/client5.png" alt="client">
							</a>
						</figure>
						<figure class="item client_logo">
							<a href="#"> <img src="resources/images/clients/client6.png" alt="client">
							</a>
						</figure>
						<figure class="item client_logo">
							<a href="#"> <img src="resources/images/clients/client7.png" alt="client">
							</a>
						</figure>
						<figure class="item client_logo">
							<a href="#"> <img src="resources/images/clients/client8.png" alt="client">
							</a>
						</figure>
					</div>
					<!-- Owl carousel end -->
				</div>
				<!-- Main row end -->
			</div>
			<!--/ Container end -->
		</section>
		<!--/ Clients end -->

		<!-- Copyright start -->
		<section id="copyright" class="copyright angle">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="footer-social unstyled">
							<li><a title="Twitter" href="#"> <span class="icon-pentagon wow bounceIn"><i
										class="fa fa-twitter"></i></span>
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
		<!-- Template custom -->
		<script type="text/javascript" src="resources/js/main.js"></script>
	</div>
	<!-- Body inner end -->
</body>
</html>