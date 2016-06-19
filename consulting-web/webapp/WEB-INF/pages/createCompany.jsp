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
	<div class="body-inner">
	
	<!-- CSRF Token -->
	<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}"/>
	
	<!-- Header start -->
	<header id="header" class="navbar-fixed-top header" role="banner">
		<div class="container">
			<div class="row">
				<!-- Logo start -->
				<div class="navbar-header">
				    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				    </button>
				    <div class="navbar-brand navbar-bg">
					    <a href="index.html">
					    	<img class="img-responsive" src="resources/images/logo.png" alt="logo">
					    </a> 
				    </div>                   
				</div><!--/ Logo end -->
				<nav class="collapse navbar-collapse clearfix" role="navigation">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
                       		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Home <i class="fa fa-angle-down"></i></a>
                       		<div class="dropdown-menu">
								<ul>
		                            <li><a href="index.html">Home 1</a></li>
		                            <li><a href="index-2.html">Home 2</a></li>
		                            <li><a href="index-3.html">Home 3</a></li>
		                            <li><a href="index-4.html">Home 4</a></li>
		                        </ul>
	                    	</div>
	                    </li>
						<li class="dropdown">
                       		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Company <i class="fa fa-angle-down"></i></a>
                       		<div class="dropdown-menu">
								<ul>
		                            <li><a href="about.html">About Us</a></li>
		                            <li><a href="service.html">Services</a></li>
		                            <li><a href="career.html">Career</a></li>
		                            <li><a href="testimonial.html">Testimonials</a></li>
		                            <li><a href="faq.html">Faq</a></li>
		                        </ul>
	                    	</div>
	                    </li>
						<li class="dropdown">
                       		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio <i class="fa fa-angle-down"></i></a>
                       		<div class="dropdown-menu">
								<ul>
		                            <li><a href="portfolio-classic.html">Portfolio Classic</a></li>
		                            <li><a href="portfolio-static.html">Portfolio Static</a></li>
		                            <li><a href="portfolio-item.html">Portfolio Single</a></li>
		                        </ul>
	                    	</div>
	                    </li>
	                    <li class="dropdown active">
                       		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                       		<div class="dropdown-menu">
								<ul>
		                           	<li><a href="team.html">Our Team</a></li>
		                           	<li><a href="about2.html">About Us - 2</a></li>
		                           	<li><a href="service2.html">Services - 2</a></li>
		                           	<li><a href="service-single.html">Services Single</a></li>
		                           	<li class="active"><a href="pricing.html">Pricing Table</a></li>
		                           	<li><a href="404.html">404 Page</a></li>
		                        </ul>
	                    	</div>
	                    </li>
	                    <li class="dropdown">
                       		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <i class="fa fa-angle-down"></i></a>
                       		<div class="dropdown-menu">
								<ul>
		                           	 <li><a href="blog-rightside.html">Blog with Sidebar</a></li>
	                            	<li><a href="blog-item.html">Blog Single</a></li>
		                        </ul>
	                    	</div>
	                    </li>
	                    <li class="dropdown">
                       		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Features <i class="fa fa-angle-down"></i></a>
                       		<div class="dropdown-menu">
								<ul>
		                           	 <li><a href="typography.html">Typography</a></li>
	                            	<li><a href="elements.html">Elements</a></li>
		                        </ul>
	                    	</div>
	                    </li>
            			<li><a href="contact.html">Contact</a></li>
                    </ul>
				</nav><!--/ Navigation end -->
			</div><!--/ Row end -->
		</div><!--/ Container end -->
	</header><!--/ Header end -->

	<div id="banner-area">
		<img src="resources/images/banner/banner2.jpg" alt ="" />
		<div class="parallax-overlay"></div>
			<!-- Subpage title start -->
			<div class="banner-title-content">
	        	<div class="text-center">
					<div class="row">
						<form accept-charset="UTF-8" action="createCompany.htm" method="post">
							<!-- CSRF Token -->
							<input type="hidden" id="Csrf_RQ_PARAM_NAME" name="Csrf_RQ_PARAM_NAME" value="${Csrf_RQ_PARAM_NAME}"/>
						    <div class="col-md-6 input-group subscribe col-md-offset-3">
						    	<input name="companyName" type="text" value="${companyName}" class="form-control " placeholder="Enter Company Name" id="companyName" required="">
	                            <span class="input-group-addon">
	                              <button  class="btn" id="createCompany" type="submit">Register a Company in India</button></a>
	                            </span>      
						    </div>
					    </form>
					</div>
	          	</div>
          	</div><!-- Subpage title end -->
	</div><!-- Banner area end -->

	<!-- Main container start -->

	<section id="main-container">
		<div class="container">

			<!-- Pricing table start -->
			<div class="row">
				<div class="col-md-12 heading">
					<span class="title-icon classic pull-left"><i class="fa fa-university"></i></span>
					<h2 class="title classic">Pricing Table 4 Col</h2>
				</div>
			</div><!-- Title row end -->


	  		<div class="row">
				<!-- plan start -->
				<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay=".5s">
				    <div class="plan text-center">
				        <span class="plan-name">Basic <small>Monthly plan</small></span>
				        <p class="plan-price"><sup class="currency">$</sup><strong>49</strong><sub>.99</sub></p>
				        <ul class="list-unstyled">
				            <li>100GB Monthly Bandwidth</li>
				            <li>$100 Google AdWords</li>
				            <li>100 Domain Hosting</li>
				            <li>SSL Shopping Cart</li>
				            <li>24/7 Live Support</li>
				        </ul>
				        <a class="btn btn-primary" href="#.">Sign Up</a>
				    </div>
				</div><!-- plan end -->

				<!-- plan start -->
				<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1s">
				    <div class="plan text-center">
				        <span class="plan-name">Standared <small>Monthly plan</small></span>
				        <p class="plan-price"><sup class="currency">$</sup><strong>99</strong><sub>.99</sub></p>
				        <ul class="list-unstyled">
				            <li>100GB Monthly Bandwidth</li>
				            <li>$100 Google AdWords</li>
				            <li>100 Domain Hosting</li>
				            <li>SSL Shopping Cart</li>
				            <li>24/7 Live Support</li>
				        </ul>
				        <a class="btn btn-primary" href="#.">Sign Up</a>
				    </div>
				</div><!-- plan end -->

				<!-- plan start -->
				<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1.4s">
				    <div class="plan text-center featured">
				        <span class="plan-name">Professional <small>Monthly plan</small></span>
				        <p class="plan-price"><sup class="currency">$</sup><strong>149</strong><sub>.99</sub></p>
				        <ul class="list-unstyled">
				            <li>100GB Monthly Bandwidth</li>
				            <li>$100 Google AdWords</li>
				            <li>100 Domain Hosting</li>
				            <li>SSL Shopping Cart</li>
				            <li>24/7 Live Support</li>
				        </ul>
				        <a class="btn btn-primary" href="#.">Sign Up</a>
				    </div>
				</div><!-- plan end -->

				<!-- plan start -->
				<div class="col-md-3 col-sm-6 wow fadeInUp" data-wow-delay="1.6s">
				    <div class="plan text-center">
				        <span class="plan-name">Premium <small>Monthly plan</small></span>
				        <p class="plan-price"><sup class="currency">$</sup><strong>399</strong><sub>.99</sub></p>
				        <ul class="list-unstyled">
				            <li>100GB Monthly Bandwidth</li>
				            <li>$100 Google AdWords</li>
				            <li>100 Domain Hosting</li>
				            <li>SSL Shopping Cart</li>
				            <li>24/7 Live Support</li>
				        </ul>
				        <a class="btn btn-primary" href="#.">Sign Up</a>
				    </div>
				</div><!-- plan end -->
			</div><!--/ Content row end -->

			<div class="gap-60"></div>
			<div class="gap-40"></div>


			<!-- Pricing table start -->
			<div class="row">
				<div class="col-md-12 heading">
					<span class="title-icon classic pull-left"><i class="fa fa-university"></i></span>
					<h2 class="title classic">Pricing Table 3 Col</h2>
				</div>
			</div><!-- Title row end -->


	  		<div class="row">
				<!-- plan start -->
				<div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay=".5s">
				    <div class="plan text-center">
				        <span class="plan-name">Basic <small>Monthly plan</small></span>
				        <p class="plan-price"><sup class="currency">$</sup><strong>49</strong><sub>.99</sub></p>
				        <ul class="list-unstyled">
				            <li>100GB Monthly Bandwidth</li>
				            <li>$100 Google AdWords</li>
				            <li>100 Domain Hosting</li>
				            <li>SSL Shopping Cart</li>
				            <li>24/7 Live Support</li>
				        </ul>
				        <a class="btn btn-primary" href="#.">Sign Up</a>
				    </div>
				</div><!-- plan end -->

				<!-- plan start -->
				<div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="1s">
				    <div class="plan text-center">
				        <span class="plan-name">Standared <small>Monthly plan</small></span>
				        <p class="plan-price"><sup class="currency">$</sup><strong>99</strong><sub>.99</sub></p>
				        <ul class="list-unstyled">
				            <li>100GB Monthly Bandwidth</li>
				            <li>$100 Google AdWords</li>
				            <li>100 Domain Hosting</li>
				            <li>SSL Shopping Cart</li>
				            <li>24/7 Live Support</li>
				        </ul>
				        <a class="btn btn-primary" href="#.">Sign Up</a>
				    </div>
				</div><!-- plan end -->

				<!-- plan start -->
				<div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="1.4s">
				    <div class="plan text-center featured">
				        <span class="plan-name">Professional <small>Monthly plan</small></span>
				        <p class="plan-price"><sup class="currency">$</sup><strong>149</strong><sub>.99</sub></p>
				        <ul class="list-unstyled">
				            <li>100GB Monthly Bandwidth</li>
				            <li>$100 Google AdWords</li>
				            <li>100 Domain Hosting</li>
				            <li>SSL Shopping Cart</li>
				            <li>24/7 Live Support</li>
				        </ul>
				        <a class="btn btn-primary" href="#.">Sign Up</a>
				    </div>
				</div><!-- plan end -->

		
			</div><!--/ Content row end -->

		</div><!-- container end -->
	</section><!--/ Main container end -->
	
	<section class="call-to-action">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<h3>Join with BizCraft and Give Your Website a Brand New Look</h3>
					<a href="#" class="pull-right btn btn-primary white">Purchase Now</a>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer start -->
	<footer id="footer" class="footer">
		<div class="container">

			<div class="row">
				<div class="col-md-4 col-sm-12 footer-widget">
					<h3 class="widget-title">Recent Posts</h3>

					<div class="latest-post-items media">
							<div class="latest-post-content media-body">
								<h4><a href="#">Bulgaria claims to find Europe's 'oldest town'</a></h4>
								<p class="post-meta">
									<span class="author">Posted by John Doe</span>
									<span class="post-meta-cat">in<a href="#"> Blog</a></span>
								</p>
							</div>
						</div><!-- 1st Latest Post end -->

						<div class="latest-post-items media">
							<div class="latest-post-content media-body">
								<h4><a href="#">Few Answers in Case of Murdered Law Professor</a></h4>
								<p class="post-meta">
									<span class="date"><i class="icon icon-calendar"></i> Mar 15, 2015</span>
									<span class="post-meta-comments"><i class="icon icon-bubbles4"></i> <a href="#">03</a></span>
								</p>
							</div>
						</div><!-- 2nd Latest Post end -->

						<div class="latest-post-items media">
							<div class="latest-post-content media-body">
								<h4><a href="#">Over the year we have lots of experience in our field</a></h4>
								<p class="post-meta">
									<span class="date"><i class="icon icon-calendar"></i> Apr 17, 2015</span>
									<span class="post-meta-comments"><i class="icon icon-bubbles4"></i> <a href="#">14</a></span>
								</p>
							</div>
						</div><!-- 3rd Latest Post end -->
	
				</div><!--/ End Recent Posts-->

				

				<div class="col-md-4 col-sm-12 footer-widget">
					<h3 class="widget-title">Flickr Photos</h3>

					<div class="img-gallery">
						<div class="img-container">
							<a class="thumb-holder" data-rel="prettyPhoto" href="resources/images/gallery/1.jpg">
								<img src="resources/images/gallery/1.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="resources/images/gallery/2.jpg">
								<img src="resources/images/gallery/2.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="resources/images/gallery/3.jpg">
								<img src="resources/images/gallery/3.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="resources/images/gallery/4.jpg">
								<img src="resources/images/gallery/4.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="resources/images/gallery/5.jpg">
								<img src="resources/images/gallery/5.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="resources/images/gallery/6.jpg">
								<img src="resources/images/gallery/6.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="resources/images/gallery/6.jpg">
								<img src="resources/images/gallery/7.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="resources/images/gallery/6.jpg">
								<img src="resources/images/gallery/8.jpg" alt="">
							</a>
							<a class="thumb-holder" data-rel="prettyPhoto" href="resources/images/gallery/6.jpg">
								<img src="resources/images/gallery/9.jpg" alt="">
							</a>
						</div>
					</div>

						
				</div><!--/ end flickr -->

				<div class="col-md-3 col-sm-12 footer-widget footer-about-us">
					<h3 class="widget-title">About Craft</h3>
					<p>We are a awward winning multinational company. We believe in quality and standard worldwide.</p>
					<h4>Address</h4>
					<p>1102 Saint Marys, Junction City, KS</p>
					<div class="row">
						<div class="col-md-6">
							<h4>Email:</h4>
							<p>info@craftbd.com</p>
						</div>
						<div class="col-md-6">
							<h4>Phone No.</h4>
							<p>+(785) 238-4131</p>
						</div>
					</div>
                    <form action="#" role="form">
                        <div class="input-group subscribe">
                            <input type="email" class="form-control" placeholder="Email Address" required="">
                            <span class="input-group-addon">
                              <button class="btn" type="submit"><i class="fa fa-envelope-o"> </i></button>
                            </span>                        
                        </div>
                    </form>
				</div><!--/ end about us -->


			</div><!-- Row end -->
		</div><!-- Container end -->
	</footer><!-- Footer end -->
	

	<!-- Footer start -->
	<section id="copyright" class="copyright angle">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="footer-social unstyled">
						<li>
							<a title="Twitter" href="#">
								<span class="icon-pentagon wow bounceIn"><i class="fa fa-twitter"></i></span>
							</a>
							<a title="Facebook" href="#">
								<span class="icon-pentagon wow bounceIn"><i class="fa fa-facebook"></i></span>
							</a>
							<a title="Google+" href="#">
								<span class="icon-pentagon wow bounceIn"><i class="fa fa-google-plus"></i></span>
							</a>
							<a title="linkedin" href="#">
								<span class="icon-pentagon wow bounceIn"><i class="fa fa-linkedin"></i></span>
							</a>
							<a title="Pinterest" href="#">
								<span class="icon-pentagon wow bounceIn"><i class="fa fa-pinterest"></i></span>
							</a>
							<a title="Skype" href="#">
								<span class="icon-pentagon wow bounceIn"><i class="fa fa-skype"></i></span>
							</a>
							<a title="Dribble" href="#">
								<span class="icon-pentagon wow bounceIn"><i class="fa fa-dribbble"></i></span>
							</a>
						</li>
					</ul>
				</div>
			</div><!--/ Row end -->
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="copyright-info">
         			 &copy; Copyright 2015 Craft. <span>All Rights Reserved</span>
        			</div>
				</div>
			</div><!--/ Row end -->
		   <div id="back-to-top" data-spy="affix" data-offset-top="10" class="back-to-top affix">
				<button class="btn btn-primary" title="Back to Top"><i class="fa fa-angle-double-up"></i></button>
			</div>
		</div><!--/ Container end -->
	</section><!--/ Footer end -->

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
	</div><!-- Body inner end -->
</body>
</html>