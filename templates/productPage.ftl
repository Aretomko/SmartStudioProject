<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
	<meta charset="utf-8" />

	<title>Smartfon Studio | Katowice, Stawowa 4 (w bramie)</title>
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<link href="/static/css/flexslider.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/static/css/line-icons.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/static/css/elegant-icons.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/static/css/lightbox.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/static/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/static/css/theme.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/static/css/custom.css" rel="stylesheet" type="text/css" media="all" />
	<!--[if gte IE 9]>
        	<link rel="stylesheet" type="text/css" href="/static/css/ie9.css" />
		<![endif]-->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,400,300,600,700%7CRaleway:700' rel='stylesheet' type='text/css' />
	<script src="/static/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>

<body>
	<div class="loader">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>

	<div class="nav-container" id="home">
		<nav class="top-bar overlay-bar">
			<div class="container">

				<div class="row utility-menu">
					<div class="col-sm-12">
						<div class="utility-inner clearfix">
							<span class="alt-font"><i class="icon icon_pin"></i>Katowice, Stawowa 4 (w bramie)</span>
							<span class="alt-font"><i class="icon icon_mail"></i>smartfonstudio@gmail.com</span>
							<span class="alt-font"><i class="icon icon_phone"></i>+48 783 499 888</span>
							<div class="pull-right">
								<!-- <a href="#" class="language"><img alt="English" src="/static/img/logo.png"></a>
									<a href="#" class="language"><img alt="English" src="/static/img/logo.png"></a> -->
								<ul class="social-icons text-right">
									<li>
										<a href="#">
											<i class="icon social_facebook"></i>
										</a>
									</li>

									<li>
										<a href="#">
											<i class="icon social_instagram"></i>
										</a>
									</li>
								</ul>
							</div>

						</div>
					</div>
				</div>
				<!--end of row-->


				<div class="row nav-menu">
					<div class="col-sm-3 col-md-2 columns">
						<a href="/home#home">
							<img class="logo logo-light" alt="Logo" src="/static/img/logo.png" />
							<img class="logo logo-dark" alt="Logo" src="/static/img/logo-dark.png" />
						</a>
					</div>

					<div class="col-sm-9 col-md-10 columns" style="display:flex; flex-direction:row-reverse; margin-top:8px;">
						<ul class="menu">
							<li><a href="/home#home">Glówna</a></li>
							<li><a href="/home#service">Serwis</a></li>
							<li><a href="/home#contact">Kontakt</a></li>
						</ul>
					</div>
				</div>
				<!--end of row-->

				<div class="mobile-toggle">
					<i class="icon icon_menu"></i>
				</div>

			</div>
			<!--end of container-->
		</nav>
	</div>
		<div class="main-container">
			<header class="page-header">
            </header>

<section class="no-pad-bottom projects-gallery" id="service">


			<div class="projects-wrapper clearfix">

				<div class="container">
					<div class="projects-container column-projects">
                       <#list priceRecordFacades as priceRecordFacade>
						<div class="col-md-4 col-sm-6 project development image-holder">
							<div class="background-image-holder">
								<img class="background-image" alt="Background Image" src="${priceRecordFacade.imageLink}" />
							</div>
							<div class="hover-state">
								<div class="align-vertical">
									<h3 class="text-white">${priceRecordFacade.producer}<strong>${priceRecordFacade.phoneName}</strong></h3>
									<a href="/price/${priceRecordFacade.phoneName}" class="btn btn-primary btn-white">Lista usług</a>
								</div>
							</div>
						</div>
					</#list>
						<!--end of individual project-->





					</div>
					<!--end of projects-container-->
				</div>
				<!--end of container-->

			</div>
			<!--end of projects wrapper-->

		</section>
	</div>
	<div class="footer-container">


		<footer class="social bg-secondary-1">

			<div class="container">
				<div class="row">
					<div class="col-sm-12 text-center">
						<h1 class="text-white">Get In Touch</h1>
						<ul class="social-icons">

							<li>
								<a href="#">
									<i class="icon social_facebook"></i>
								</a>
							</li>

							<li>
								<a href="#">
									<i class="icon social_instagram"></i>
								</a>
							</li>
						</ul><br />
						<span class="sub">©<a href="/soon">Developers</a> - All Rights Reserved</span>
					</div>
				</div>
				<!--end of row-->
			</div>
			<!--end of container-->

		</footer>
	</div>

	<script src="/static/js/jquery.min.js"></script>
	<script src="/static/js/jquery.plugin.min.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/jquery.flexslider-min.js"></script>
	<script src="/static/js/smooth-scroll.min.js"></script>
	<script src="/static/js/skrollr.min.js"></script>
	<script src="/static/js/spectragram.min.js"></script>
	<script src="/static/js/scrollReveal.min.js"></script>
	<script src="/static/js/isotope.min.js"></script>
	<script src="/static/js/twitterFetcher_v10_min.js"></script>
	<script src="/static/js/lightbox.min.js"></script>
	<script src="/static/js/jquery.countdown.min.js"></script>
	<script src="/static/js/scripts.js"></script>
</body>

</html>