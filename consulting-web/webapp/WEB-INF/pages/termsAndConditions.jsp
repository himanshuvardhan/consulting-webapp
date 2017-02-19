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
					<h2>Terms and Policy</h2>
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
						<h2 class="title classic">Terms and Policy</h2>
					</div>
				</div>
				<!-- Title row end -->
				<div class="row">
					<div class="col-md-12">
						<div class="testimonial-content">
							<h4>PLEASE READ THESE TERMS AND CONDITIONS CAREFULLY</h4>
							<p>
								<b>www.Quickfillings.com is a registered brand of Quick accounting And Consulting Private limited and we welcome you to
									www.Quickfillings.com</b>
							</p>
							<p>Since we will not be meeting face to face, it is important to set out the terms of the agreement clearly in advance. If you have any
								queries about www.Quickfillings.com, please do not hesitate to contact us. In this agreement, we have referred to the.www.Quickfillings.com
								service as the "service", to you as the "user" and to our agreement as the "agreement".</p>
							<p>If you wish to use www.Quickfillingss services, you affirm that you are more than 18 years of age and are fully able and competent to
								enter into the terms, conditions, obligations, affirmations, representations, and warranties consequent to the creation of the documents, and
								are aware of the same. Kindly call us for further assistance.</p>
							<p>
							<ol>
								<li>www.Quickfillings.com is not intended to be a source of advertising or solicitation and the contents of the website should not be
									construed as legal advice.</li>
								<li>Specifically www.Quickfillings.com does not provide any avenue for solicitation</li>
								<li>www.Quickfillings.com does not provide Legal Advice.
									<p>The information provided in the 'FAQs' or learning centre or by any other way does not amount to legal advice, such merely being
										commonly asked queries about tax planning's, company incorporations, structure design, accounting and other services. Users are advised to
										consult a professional if they need specialized guidance on any of these services.</p>
									<p>Except as otherwise provided, you acknowledge and agree that you have no right to modify, edit, copy, reproduce, create derivative
										works of, reverse engineer, alter, enhance or in any way exploit any of the Forms in any manner, except for modifications in filling out the
										Forms for your authorized use.</p>
									<p>Reselling or distributing without permission amounts to a violation of.www.Quickfillings.com exclusive copyright and is liable to
										prosecution.</p>
								</li>
								<li>Disclaimer of representations by users
									<p>www.Quickfillings.com makes no representation, guarantee, or warranty (express or implied) as to the legal ability, competence, or
										quality of representation which may be provided by any of the professionals or professional firms which are associated with or through this
										site or any affiliate thereof</p>
								</li>
							</ol>
							</p>
							<h3>Name Availability</h3>
							<p>Name availability application on the website are for the convenience of the user only. It does not guarantee that the specific name
								which has been entered by the user and which has been shown available to the user by the website will be assigned to the user only. That
								specific available name should be subject to the Ministry of Corporate Affairs and IP India approval only.</p>
							<h3>User Guidelines</h3>
							<p>The users www.Quickfillings.com are granted a nonexclusive, limited right to access and use the service in accordance with the rules
								that are described in this contract. In order to keep this system attractive and useful for all users, it is important that users follow the
								rules of the system www.Quickfillings.com reserves the right to deny further access to its service to any user who violates these rules, is
								the subject of complaints by www.Quickfillings.com users or for any other reason.</p>
							<p>Users engaged in any of the following activities on our system will not be tolerated:</p>
							<ul>
								<li>Foul or otherwise inappropriate language</li>
								<li>Racist, hateful, or otherwise offensive comments.</li>
								<li>Promote or provide instructional information about illegal activities, or promoting physical harm or injury against any group or
									individual.</li>
								<li>Defame any person or group which includes people of all ages, races, religions, and nationalities.</li>
								<li>Violate the rights of another, including but not limited to the intellectual property rights of another. This includes using the
									service for acts of copyright, trademark, patent, trade secret, or other intellectual property infringement, including but not limited to
									offering pirated computer programs or links to such programs, information used to circumvent manufacturer-installed copy-protect devices,
									including serial or registration numbers for software programs, or any type of cracker utilities (this also includes files which are solely
									intended for game emulation).</li>
								<li>Violate Internet standards.</li>
								<li>Use the service for displaying harassing, abusive, threatening, harmful, vulgar, obscene, or tortuous material or invading other's
									privacy.</li>
								<li>Interfere with or disrupting the service or servers or networks connected to the service by posting advertisements or links to
									competing services, transmitting "junk mail", "spam", "chain letters", or unsolicited mass distribution of e-mail.</li>
								<li>Compromise the security of the service www.Quickfillings.com provides. Please do not try to gain access to system areas private
									to.www.Quickfillings.com or to other users.</li>
							</ul>
							<p>At various locations on the Site www.Quickfillings.com may permit visitors to post reviews, comments, and other content (the "user
								content"). www.Quickfillings.com is not the publisher or author of such user content. It only stores and disseminates the ideas and opinions
								that www.Quickfillings.com members may choose to post and distribute as user content..www.Quickfillings.com disclaims all responsibility for
								this content. If any offending material is brought to the notice.www.Quickfillings.com, it will be deleted as soon as is possible. Whether
								such material is indeed offending will be finally be left to the discretion www.Quickfillings.com.</p>
							<h3>Limitations on Use</h3>
							<p>The contents of www.Quickfillings.com are for personal use only and not for commercial exploitation. You may not decompile, reverse
								engineer, disassemble, rent, lease, loan, sell, sublicense, or create derivative works from www.Quickfillings.com. Nor may you use any network
								monitoring or discovery software to determine the site architecture, or extract information about usage or users. You may not use any robot,
								spider, other automatic device, or manual process to monitor or copy the contents without taking prior written permission from
								www.Quickfillings.com You may not copy, modify, reproduce, republish, distribute, display, or transmit for commercial, non-profit or public
								purposes all or any portion of.www.Quickfillings.com, except to the extent permitted above. You may not use or otherwise export or re-export
								www.Quickfillings.com or any portion available on or through www.Quickfillings.com in violation of the export control laws and regulations of
								India. Any unauthorized use of www.Quickfillings.com or its content is prohibited.</p>

							<h3>Confidentiality</h3>
							<p>www.Quickfillings makes every effort to maintain the confidentiality of any information submitted by users to our system and our
								database of lawyers. The user is however warned that the use of the internet or e-mail for confidential or sensitive information is
								susceptible to risks that inevitably arise on this medium.</p>
							<h3>Indemnification</h3>
							<p>The user agrees that www.Quickfillings.com is not responsible for any harm that his/her use of this service may cause. The user agrees
								to indemnify, defend, and hold www.Quickfillings.com harmless from and against any and all liability and costs incurred in connection with any
								loss, liability, claim, demand, damage, and expenses arising from or in connection with the contents or use of the service. The user agrees
								that this defense and indemnity shall also apply to any breach by the user of the agreement or the foregoing representations, warranties and
								covenants. The user further agrees that this defense and indemnity shall include without limitation lawyer fees and costs. The user also
								agrees that this defense and indemnity shall apply to.www.Quickfillings.com, its founders, officers and employees.www.Quickfillings.com
								reserves the right, at its own expense, to assume the exclusive defense and control of any matter otherwise subject to indemnification by the
								user and the user shall not in any event settle any matter without the written consent of www.Quickfillings.com</p>
							<h3>Communications and Other Data</h3>
							<p>www.Quickfillings.com is not responsible for any loss of data resulting from accidental or deliberate deletion, network or system
								outages, backup failure, file corruption, or any other reasons.</p>
							<p>We do not assume any liability for any content posted by anyone on our website or through any e-mail communication.</p>
							<h3>License of your contents to www.Quickfillings.com</h3>
							<p>By uploading content to or submitting any materials for use on www.Quickfillings.com, you grant (or warrant that the owner of such
								rights has expressly granted) www.Quickfillings.com a perpetual, royalty-free, irrevocable, non-exclusive right and license to use, reproduce,
								modify, adapt, publish, translate, create derivative works from and distribute such materials or incorporate such materials into any form,
								medium, or technology now known or later develop www.Quickfillings.com however gives an assurance that any information of a sensitive nature
								will not be intentionally disclosed and revealed to any third party.</p>
							<h3>www.Quickfillings.com Proprietary Rights</h3>
							<p>Except as expressly provided in these terms and conditions, nothing contained herein shall be construed as conferring any license or
								right, by implication, estoppels or otherwise, under copyright or other intellectual property rights. The user agrees that the content and Web
								Site are protected by copyright, trademark, service marks, patents or other proprietary rights and laws. The user acknowledges and agrees that
								the user is permitted to use this material and information only as expressly authorized by www.Quickfillings.com, and may not copy, reproduce,
								transmit, distribute, or create derivative works of such content or information without express authorization. The user acknowledges and
								agrees that www.Quickfillings.com can display images and text throughout the Service. Users cannot extract and publish any information from
								the system, either electronically or in print, without the permission of www.Quickfillings.com and the permission of all other concerned
								parties. This is not a complete list - other things on the system are also www.Quickfillings.com property. Contact www.Quickfillings.com
								before copying anything from the system with plans of reproducing it or distributing it.</p>
							<h3>Linking to www.Quickfillings.com</h3>
							<p>Users are welcome to provide links to the homepage of www.Quickfillingss, provided they do not remove or obscure, by framing or
								otherwise, any portion of the homepage and that you discontinue providing links to the site if requested by www.Quickfillings.com.</p>
							<h3>Advertisers</h3>
							<p>www.Quickfillings.com may contain advertising and sponsorship. Advertisers and sponsors are responsible for ensuring that material
								submitted for inclusion on www.Quickfillings.com is accurate and complies with applicable laws.www.Quickfillings.com will not be responsible
								for the illegality of or any error or inaccuracy in advertisers' or sponsors' materials.</p>
							<h3>Registration</h3>
							<p>
								Certain sections of <a href="index.htm">www.Quickfillings.com</a> may require you to register. If registration is requested, you agree to
								provide www.Quickfillings.com with accurate and complete registration information. It is your responsibility to inform www.Quickfillings.com
								of any changes to that information. Each registration is for a single person only, unless specifically designated otherwise on the
								registration page www.Quickfillings.com does not permit a) any other person using the registered sections under your name; or b) access
								through a single name being made available to multiple users on a network. You are responsible for preventing such unauthorized use. If you
								believe there has been unauthorized use, please notify www.Quickfillings.com immediately by contacting us. If we find that unauthorized use is
								being made of www.Quickfillings.com and the services we provide, the right of any or many users may be terminated.
							</p>
							<h3>Errors and Corrections</h3>
							<p>www.Quickfillings.com does not represent or warrant that the service will be error-free, free of viruses or other harmful components, or
								that defects will be corrected.www.Quickfillings.com may make improvements and/or changes to its features, functionality or service at any
								time.</p>
							<h3>Third Party Content</h3>
							<p>Third party content may appear on www.Quickfillings.com or may be accessible via links from www.Quickfillings.com. www.Quickfillings.com
								is not responsible for and assumes no liability for any mistakes, misstatements of law, defamation, slander, libel, omissions, falsehood,
								obscenity or profanity in the statements, opinions, representations or any other form of information contained in any third party content
								appearing on www.Quickfillings.com. You understand that the information and opinions in the third party content is neither endorsed by nor
								does it reflect the belief of www.Quickfillings.com.</p>
							<h3>Unlawful Activity</h3>
							<p>www.Quickfillings.com reserves the right to investigate complaints or reported violations of the Agreement and to take any action
								www.Quickfillings.com deems appropriate including but not limited to reporting any suspected unlawful activity to law enforcement officials,
								regulators, or other third parties and disclosing any information necessary or appropriate to such persons or entities relating to user
								profiles, e-mail addresses, usage history, posted materials, IP addresses and traffic information.</p>
							<h3>Remedies for Violations</h3>
							<p>www.Quickfillings.com reserves the right to seek all remedies available at law and in equity for violations of the Agreement, including
								but not limited to the right to block access from a particular Internet address to www.Quickfillings.com and its features.</p>
							<h3>Severability of Provisions</h3>
							<p>The Agreement and the Privacy Policy constitute the entire agreement with respect to the use of the service provided by
								www.Quickfillings.com. If any provision of these terms and conditions is unlawful, void or unenforceable then that provision shall be deemed
								severable from the remaining provisions and shall not affect their validity and enforceability.</p>
							<h3>Modifications to Terms of Use</h3>
							<p>www.Quickfillings.com may change the agreement at any time. The user will be responsible for checking the Terms and Conditions before
								use. Use of the service after the change will indicate acceptance of the new terms and conditions.</p>
							<h3>Modifications to Service</h3>
							<p>www.Quickfillings.com reserves the right to modify or discontinue, temporarily or permanently, the service with or without notice to the
								user. The user agrees that www.Quickfillings.com shall not be liable to the user or any third party for any modification or discontinuance of
								the service. The user acknowledges and agrees that any termination of service under any provision of this agreement may be effected without
								prior notice, and acknowledges and agrees that www.Quickfillings.com may immediately delete data and files in the user's account and bar any
								further access to such files or the Service.</p>
							<h3>Disclaimer of Warranties and Limitation of Liability</h3>
							<p>A great danger for www.Quickfillings.com, and for all operators of online systems, is that we might be held accountable for the wrongful
								actions of our users. If one user libels another user, the injured user might blame us, even though the first user was really at fault. If a
								user uploads a program with a computer virus, and the other users' computers are damaged, we might be blamed even though a user left the virus
								on our System. If a user transmits illegal or improper information to another user, we might be blamed even though we did nothing more than
								unknowingly carry the message from one user to another. Accordingly, we need all users to accept responsibility for their own acts, and to
								accept that an act by another user that damages them must not be blamed on us, but only on the other user.</p>
							<p>Although it is the goal of www.Quickfillings.com to provide users with reliable and quality systems, we may make mistakes or experience
								system failure from time to time. Such problems are inevitable in operating a system of this size. We would not be able to make this system
								available to users if we had to accept blame or financial liability for any usability problems, system failures or errors, or mistakes or
								damages of any kind. In order to continue offering and improving our service www.Quickfillings.com must deny any warranties on this service
								and state that our liability for any problems connected with the use of our system or any communication through www.Quickfillings.com is
								strictly limited to the amount paid to www.Quickfillings.com by the user.</p>
							<h3>Disclaimer of Warranties</h3>
							<p>The user expressly agrees that use of the service is at the user's sole risk. The service is provided on an "as is" and "as available"
								basis.www.Quickfillings.com expressly disclaims all warranties of any kind, whether express or implied, including, but not limited to the
								implied warranties of merchantability, fitness for a particular purpose and non-infringement www.Quickfillings.com makes no warranty that the
								service will meet a user's requirements, that the service will be uninterrupted, timely, secure, or error-free; nor does www.Quickfillings.com
								make any warranty as to the results that may be obtained from the use of the service or as to the accuracy or reliability of any information
								obtained through the service or that defects in the software will be corrected. www.Quickfillings.com makes no warranty regarding any goods or
								services purchased or information obtained through the service or any transactions entered into through the service.</p>
							<p>No advice or information, whether oral or written, obtained by the User from www.Quickfillings.com shall create any warranty not
								expressly stated herein.</p>
							<h3>Limitation of Liability</h3>
							<p>The user agrees that www.Quickfillings.com shall not be liable for any direct, indirect, incidental, special or consequential damages
								resulting from the use or the inability to use the service or for the cost of procurement of substitute goods and services or resulting from
								any goods or services purchased or obtained or messages received or transactions entered into through or from the service or resulting from
								unauthorized access to or alteration of user's transmissions or data, including, but not limited to damages for loss of profits, use, data or
								other intangibles, even if www.Quickfillings.com has been advised of the possibility of such damages. The user further agrees that
								www.Quickfillings.com shall not be liable for any damages arising from interruption, suspension or termination of service, including, but not
								limited to direct, indirect, incidental, special, consequential or exemplary damages, whether or not such interruption, suspension or
								termination was justified, negligent, intentional or inadvertent.</p>
							<h3>Arbitration</h3>
							<p>Any controversy or claim arising out of or relating to this Agreement or www.Quickfillings.com services shall be settled by binding
								Arbitration in accordance with laws of India. Any such controversy or claim shall be arbitrated on an individual basis, and shall not be
								consolidated in any arbitration with any claim or controversy of any other party. Any other dispute or disagreement of a legal nature will
								also be decided in accordance with the laws of India, and the Courts of Haryana shall have jurisdiction in all such cases.</p>
							<h3>Ownership</h3>
							<p>This Site is owned and operated by www.Quickfillings.com. All right, title and interest in and to the materials provided on this Site,
								including but not limited to information, documents, logos, graphics, sounds and images (the "Materials") are owned by www.Quickfillings.com
								Except as otherwise expressly provided by www.Quickfillings.com, none of the materials may be copied, reproduced, republished, downloaded,
								uploaded, posted, displayed, transmitted or distributed in any way and nothing on this Site shall be construed to confer any license under any
								of www.Quickfillings.com intellectual property rights, whether by estoppel, implication or otherwise. Contact us if you have any questions
								about obtaining such licenses. www.Quickfillings.comdoes not sell, license, lease or otherwise provide any of the materials other than those
								specifically identified as being provided by www.Quickfillings.com. Any rights not expressly granted herein are reserved by
								www.Quickfillings.com.</p>
							<h3>Entire Agreement</h3>
							<p>This agreement constitutes the entire and whole agreement between user and www.Quickfillings.com and is intended as a complete and
								exclusive statement of the terms of the agreement. This agreement shall supersede all other communications between www.Quickfillings.com and
								its users with respect to the subject matter hereof and supersedes and replaces all prior or contemporaneous understandings or agreements,
								written or oral, regarding such subject matter. If at any time you find these Terms and Conditions unacceptable or if you do not agree to
								these Terms and Conditions, please do not use this Site. We may revise these Terms and Conditions at any time without notice to you. It is
								your responsibility to review these Terms and Conditions periodically.</p>
							<p>By using www.Quickfillings.com services or accessing the www.Quickfillings.com site, you acknowledge that you have read these terms and
								conditions and agree to be bound by them.</p>
							<h3>Indemnification</h3>
							<p>You agree to defend, indemnify and hold harmless www.Quickfillings.com our officers, directors, shareholders, employees and agents from
								and against any and all claims, liabilities, damages, losses or expenses, including reasonable attorneys' fees and costs, arising out of or in
								any way connected with your access to or use of the site and the materials.</p>
							<h3>Cancellation and Refund Policy</h3>
							<p>We strive to ensure that the services you avail through our website are to your full satisfaction, and are the best in the Industry at
								extremely reasonable and affordable rates.</p>
							<p>However, there may arise situations when you desire a refund. Firstly, when you pay for the services but later on decide that you do not
								wish to avail them. Secondly, when there is a delay in the services offered from our side, beyond the time frame we have intimated to you, due
								to human error i.e., factors for which we are solely responsible. Thirdly, although we highly doubt it, you might find our services
								unsatisfactory. In all three situations, kindly send in an e-mail to on the Ticket that has been created in your name, marking a copy to
								www.Quickfillings.com We would like to clarify that only refunds of the professional fees component of the charges paid by you shall be
								considered for a refund.</p>
							<p>Upon receiving your mail, the Senior Management at www.Quickfillings.com shall decide on whether your request for a refund should be
								processed, contingent on the reasons for such a request. Please note that we reserve the right to take the final and binding decision with
								regard to requests for refund.</p>
							<p>Most importantly, we wish to clarify that in cases outside our control, including but not limited to national holidays, department
								holidays, delays on the part of the Government of India, the respective State Governments, Our affiliates or elsewhere, acts of war, acts of
								God, earthquake, riot, sabotage, labour shortage or dispute, internet interruption, power disruption, lack of phone network connectivity,
								technical failures, breakage of sea cable, hacking, piracy, we shall not liable for any delays.</p>
							<p>If we confirm your request for refund, subject to the terms and conditions mentioned herein or elsewhere, we will send you an e-mail
								seeking the details required to refund the amount which may include your Bank Account details such as the account number and the IFS code of
								the branch in question. Kindly note that it will take us a minimum of about 48-72 working hours from the receipt of all such information to
								process the refund and initate the transfer.</p>
							<p>We reiterate once again that only the professional fees paid for our services shall be refunded, subject to the discretion of the Senior
								Management at www.Quickfillings.com.</p>
							<p>We assure you that we are continuously working to improve our services and are we are welcome to any suggestions from your end. For any
								other queries please contact out customer service desk at www.Quickfillings.com We appreciate your interest and support and we welcome you to
								our community!</p>
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