<!DOCTYPE html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
<title>Beauty Salon</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i"
	rel="stylesheet">
<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<!-- name of the salon can be changed here -->
			<a class="navbar-brand" href="index">Patricia</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="index#about"
						class="nav-link">About</a></li>
					<li class="nav-item"><a href="index#services"
						class="nav-link">Services</a></li>
					<li class="nav-item"><a href="index#appointment"
						class="nav-link">Appointment</a></li>
					<li class="nav-item"><a href="index#staff"
						class="nav-link">Staff</a></li>
					<li class="nav-item"><a href="index#pricing"
						class="nav-link">Pricing</a></li>
					<li class="nav-item"><a href="contact" class="nav-link">Contact</a></li>
					
					<sec:authorize access="isAnonymous()">
						<li class="nav-item"><a href="signup" class="nav-link">Login</a></li>
					</sec:authorize>
					
					<sec:authorize access="hasAuthority('USER')">
					    <li class="nav-item">
					    	<a href="customer" class="nav-link">Your Profile</a>
					    </li>
					</sec:authorize>
					
					<sec:authorize access="hasAuthority('ADMIN')">
					    <li class="nav-item">
					    	<a href="admin" class="nav-link">Your Profile</a>
					    </li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<section id="home-section" class="hero"
		style="background-image: url(images/bg.jpg);"
		data-stellar-background-ratio="0.5">
		<div class="home-slider owl-carousel">
			<div class="slider-item js-fullheight">
				<div class="overlay"></div>
				<div class="container-fluid p-0">
					<div
						class="row d-md-flex no-gutters slider-text align-items-end justify-content-end"
						data-scrollax-parent="true">
						<img class="one-third align-self-end order-md-last img-fluid"
							src="images/bg_1.png" alt="">
						<div class="one-forth d-flex align-items-center ftco-animate"
							data-scrollax=" properties: { translateY: '70%' }">
							<div class="text mt-5">
								<span class="subheading">Beauty Salon</span>
								<h1 class="mb-4">Get Pretty Look</h1>
								<p class="mb-4">A small river named Duden flows by their
									place and supplies it with the necessary regelialia. It is a
									paradisematic country.</p>

								<p>
									<a href="#" class="btn btn-primary py-3 px-4">Discover Now</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="slider-item js-fullheight">
				<div class="overlay"></div>
				<div class="container-fluid p-0">
					<div
						class="row d-flex no-gutters slider-text align-items-center justify-content-end"
						data-scrollax-parent="true">
						<img class="one-third align-self-end order-md-last img-fluid"
							src="images/bg_2.png" alt="">
						<div class="one-forth d-flex align-items-center ftco-animate"
							data-scrollax=" properties: { translateY: '70%' }">
							<div class="text mt-5">
								<span class="subheading">Natural Beauty</span>
								<h1 class="mb-4">Beauty Salon</h1>
								<p class="mb-4">Client can put some text here</p>

								<p>
									<a href="#" class="btn btn-primary py-3 px-4">Discover Now</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="ftco-section ftco-no-pb ftco-no-pt" id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-6 d-flex">
					<div
						class="p-md-5 img img-2 d-flex justify-content-center align-items-center"
						style="background-image: url(images/about.jpg);">
						<a href="https://www.youtube.com/watch?v=PoJin5SdBss"
							class="icon popup-vimeo d-flex justify-content-center align-items-center">
							<span class="icon-play"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 py-md-5 pb-5 wrap-about pb-md-5 ftco-animate">
					<div class="heading-section mb-4 mt-md-5">
						<h1 class="big" id="about">About</h1>
						<span class="subheading">About Us</span>
						<h2 class="mb-4">A World Class Beauty Salon Company</h2>
					</div>
					<div class="pb-md-5">
						<p>some text here</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="services-section py-5 py-md-0 bg-light">
		<div class="container">
			<div class="row no-gutters d-flex">
				<div
					class="col-md-6 col-lg-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon">
							<span class="flaticon-makeup"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Makeup</h3>
							<p>text address or whatever</p>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon">
							<span class="flaticon-flower"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Hair Styling</h3>
							<p>A small river named Duden flows by their place and
								supplies.</p>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services active d-block">
						<div class="icon">
							<span class="flaticon-polish"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Nails</h3>
							<p>A small river named Duden flows by their place and
								supplies.</p>
						</div>
					</div>
				</div>
				<div
					class="col-md-6 col-lg-3 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services d-block">
						<div class="icon">
							<span class="flaticon-facial-treatment"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">Body Treatment</h3>
							<p>A small river named Duden flows by their place and
								supplies.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-services" id="services">
		<div class="container">
			<div class="row">
				<div class="col-md-6 pr-md-4">
					<div class="heading-section pr-5 pb-5 ftco-animate">
						<h1 class="big">Services</h1>
						<span class="subheading">Explore Our Services</span>
						<h2 class="mb-4 mt-3">The beauty is not luxurious imagination</h2>
						<p>Far far away, we have everything you need to be beautiful</p>
					</div>
					<div class="services-wrap ftco-animate mb-5">
						<a href="#" class="img d-flex align-items-end"
							style="background-image: url(images/services-1.jpg);">
							<div class="number">
								<h3>01</h3>
							</div>
						</a>
						<div class="d-flex justify-content-end">
							<div class="text d-flex align-items-center">
								<div>
									<h3>
										<a href="#">Manicure &amp; Pedicure</a>
									</h3>
								</div>
								<div
									class="btn-custom text-center align-self-stretch d-flex align-items-center">
									<a href="#">Explore <span class="ion-ios-arrow-forward"></span></a>
								</div>
							</div>
						</div>
					</div>
					<div class="services-wrap ftco-animate mt-3">
						<a href="#" class="img d-flex align-items-end"
							style="background-image: url(images/services-2.jpg);">
							<div class="number">
								<h3>02</h3>
							</div>
						</a>
						<div class="d-flex justify-content-end">
							<div class="text d-flex align-items-center">
								<div>
									<h3>
										<a href="#">Haircut &amp; Coloring</a>
									</h3>
								</div>
								<div
									class="btn-custom text-center align-self-stretch d-flex align-items-center">
									<a href="#">Explore <span class="ion-ios-arrow-forward"></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 pl-md-4">
					<div class="services-wrap ftco-animate mb-5">
						<a href="#" class="img d-flex align-items-end"
							style="background-image: url(images/services-3.jpg);">
							<div class="number">
								<h3>03</h3>
							</div>
						</a>
						<div class="d-flex justify-content-end">
							<div class="text d-flex align-items-center">
								<div>
									<h3>
										<a href="#">Professional Makeup</a>
									</h3>
								</div>
								<div
									class="btn-custom text-center align-self-stretch d-flex align-items-center">
									<a href="#">Explore <span class="ion-ios-arrow-forward"></span></a>
								</div>
							</div>
						</div>
					</div>
					<div class="services-wrap ftco-animate mt-3">
						<a href="#" class="img d-flex align-items-end"
							style="background-image: url(images/services-4.jpg);">
							<div class="number">
								<h3>04</h3>
							</div>
						</a>
						<div class="d-flex justify-content-end">
							<div class="text d-flex align-items-center">
								<div>
									<h3>
										<a href="#">Body Spa</a>
									</h3>
								</div>
								<div
									class="btn-custom text-center align-self-stretch d-flex align-items-center">
									<a href="#">Explore <span class="ion-ios-arrow-forward"></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pt ftco-booking">
		<div class="container-fluid px-0">
			<div class="row no-gutters d-md-flex justify-content-end">
				<div class="one-forth d-flex align-items-end">
					<div class="text">
						<div class="overlay"></div>
						<div class="appointment-wrap" id="appointment">
							<span class="subheading">Reservation</span>
							<h3 class="mb-2">Make an Appointment</h3>
							<form action="services" class="appointment-form">
								<div class="form-group">
									<input type="submit" value="Make an Appointment" class="btn btn-primary">
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="one-third">
					<div class="img" style="background-image: url(images/bg-1.jpg);">
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-team" id="staff">
		<div class="container">
			<div class="row justify-content-center pb-3">
				<div class="col-md-10 heading-section text-center ftco-animate">
					<h1 class="big">Stylist</h1>
					<span class="subheading">Stylist</span>
					<h2 class="mb-4">Our Professionals</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia</p>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="carousel-team owl-carousel">
						<div class="item">
							<a href="#" class="team text-center">
								<div class="img"
									style="background-image: url(images/stylist-1.jpg);"></div>
								<h2>Hair Professional name</h2> <span class="position">Hair
									Stylist</span>
							</a>
						</div>
						<div class="item">
							<a href="#" class="team text-center">
								<div class="img"
									style="background-image: url(images/stylist-2.jpg);"></div>
								<h2>Nicole Simon</h2> <span class="position">Nail Master</span>
							</a>
						</div>
						<div class="item">
							<a href="#" class="team text-center">
								<div class="img"
									style="background-image: url(images/stylist-3.jpg);"></div>
								<h2>Cloe Meyer</h2> <span class="position">Director</span>
							</a>
						</div>
						<div class="item">
							<a href="#" class="team text-center">
								<div class="img"
									style="background-image: url(images/stylist-4.jpg);"></div>
								<h2>Rachel Clinton</h2> <span class="position">Hair
									Stylist</span>
							</a>
						</div>
						<div class="item">
							<a href="#" class="team text-center">
								<div class="img"
									style="background-image: url(images/stylist-5.jpg);"></div>
								<h2>Dave Buff</h2> <span class="position">Barber</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pt ftco-no-pb">
		<div class="container">
			<div class="row no-gutters justify-content-center mb-5 pb-2">
				<div class="col-md-6 text-center heading-section ftco-animate">
					<h1 class="big">Works</h1>
					<span class="subheading">Works</span>
					<h2 class="mb-4">Working on a Salon</h2>
					<p>Separated they live in. A small river named Duden flows by
						their place and supplies it with the necessary regelialia.</p>
				</div>
			</div>
		</div>
		<div class="container-fluid p-0">
			<div class="row no-gutters">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="images/work-1.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Stylist</span>
							<h3>
								<span>Makeup</span>
							</h3>
						</div>
						<a href="images/work-1.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="images/work-2.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Beauty</span>
							<h3>
								<span>Makeup</span>
							</h3>
						</div>
						<a href="images/work-2.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="images/work-3.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Beauty</span>
							<h3>
								<span>Makeup</span>
							</h3>
						</div>
						<a href="images/work-3.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="images/work-4.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Beauty</span>
							<h3>
								<span>Makeup</span>
							</h3>
						</div>
						<a href="images/work-4.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="images/work-5.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Beauty</span>
							<h3>
								<span>Makeup</span>
							</h3>
						</div>
						<a href="images/work-5.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="images/work-6.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Fashion</span>
							<h3>
								<span>Makeup</span>
							</h3>
						</div>
						<a href="images/work-6.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="images/work-7.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Beauty</span>
							<h3>
								<span>Makeup</span>
							</h3>
						</div>
						<a href="images/work-7.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="project">
						<img src="images/work-8.jpg" class="img-fluid"
							alt="Colorlib Template">
						<div class="text">
							<span>Beauty</span>
							<h3>
								<span>Makeup</span>
							</h3>
						</div>
						<a href="images/work-8.jpg"
							class="icon image-popup d-flex justify-content-center align-items-center">
							<span class="icon-expand"></span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-pricing" id="pricing">
		<div class="container">
			<div class="row justify-content-center pb-3">
				<div class="col-md-10 heading-section text-center ftco-animate">
					<h1 class="big">Pricing</h1>
					<span class="subheading">Pricing</span>
					<h2 class="mb-4">Our Prices</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 ftco-animate">
					<div class="pricing-entry pb-5 text-center">
						<div>
							<h3 class="mb-4">Hair Style</h3>
							<p>
								<span class="price">&euro;50.00</span> <span class="per">/
									session</span>
							</p>
						</div>
						<ul>
							<li>Hair Dryer</li>
							<li>Hair Coloring</li>
							<li>Hair Cut</li>
							<li>Hair Dresser</li>
							<li>Hair Spa</li>
						</ul>
						<p class="button text-center">
							<a href="#" class="btn btn-primary px-4 py-3">Get Offer</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 ftco-animate">
					<div class="pricing-entry pb-5 text-center">
						<div>
							<h3 class="mb-4">Manicure Pedicure</h3>
							<p>
								<span class="price">&euro;34.50</span> <span class="per">/
									session</span>
							</p>
						</div>
						<ul>
							<li>Manicure</li>
							<li>Pedicure</li>
							<li>Coloring</li>
							<li>Nails</li>
							<li>Nail Cut</li>
						</ul>
						<p class="button text-center">
							<a href="#" class="btn btn-primary px-4 py-3">Get Offer</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 ftco-animate">
					<div class="pricing-entry active pb-5 text-center">
						<div>
							<h3 class="mb-4">Makeup</h3>
							<p>
								<span class="price">&euro;54.50</span> <span class="per">/
									session</span>
							</p>
						</div>
						<ul>
							<li>Makeup</li>
							<li>Professional Makeup</li>
							<li>Blush On</li>
							<li>Facial Massage</li>
							<li>Facial Spa</li>
						</ul>
						<p class="button text-center">
							<a href="#" class="btn btn-primary px-4 py-3">Get Offer</a>
						</p>
					</div>
				</div>
				<div class="col-md-3 ftco-animate">
					<div class="pricing-entry pb-5 text-center">
						<div>
							<h3 class="mb-4">Body Treatment</h3>
							<p>
								<span class="price">&euro;89.50</span> <span class="per">/
									session</span>
							</p>
						</div>
						<ul>
							<li>Massage</li>
							<li>Spa</li>
							<li>Foot Spa</li>
							<li>Body Spa</li>
							<li>Relaxing</li>
						</ul>
						<p class="button text-center">
							<a href="#" class="btn btn-primary px-4 py-3">Get Offer</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="testimony-section bg-light">
		<div class="container">
			<div class="row no-gutters ftco-animate justify-content-center">
				<div class="col-md-6 col-lg-5 d-flex">
					<div class="testimony-img"
						style="background-image: url(images/testimony-img.png);"></div>
				</div>
				<div class="col-md-6 col-lg-7 py-5">
					<div class="py-md-5">
						<div class="heading-section ftco-animate">
							<h1 class="big big-2">Happy</h1>
							<span class="subheading">Testimony</span>
							<h2 class="mb-0">Happy Customer</h2>
						</div>
						<div class="carousel-testimony owl-carousel ftco-animate">
							<div class="item">
								<div class="testimony-wrap pb-4">
									<div class="text">
										<p class="mb-4">Far far away, behind the word mountains,
											far from the countries Vokalia and Consonantia, there live
											the blind texts.</p>
									</div>
									<div class="d-flex">
										<div class="user-img"
											style="background-image: url(images/stylist-1.jpg)"></div>
										<div class="pos ml-3">
											<p class="name">Jeff Nucci</p>
											<span class="position">Businessman</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap pb-4">
									<div class="text">
										<p class="mb-4">Far far away, behind the word mountains,
											far from the countries Vokalia and Consonantia, there live
											the blind texts.</p>
									</div>
									<div class="d-flex">
										<div class="user-img"
											style="background-image: url(images/stylist-2.jpg)"></div>
										<div class="pos ml-3">
											<p class="name">Jeff Nucci</p>
											<span class="position">Businessman</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap pb-4">
									<div class="text">
										<p class="mb-4">Far far away, behind the word mountains,
											far from the countries Vokalia and Consonantia, there live
											the blind texts.</p>
									</div>
									<div class="d-flex">
										<div class="user-img"
											style="background-image: url(images/stylist-3.jpg)"></div>
										<div class="pos ml-3">
											<p class="name">Jeff Nucci</p>
											<span class="position">Businessman</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap pb-4">
									<div class="text">
										<p class="mb-4">Far far away, behind the word mountains,
											far from the countries Vokalia and Consonantia, there live
											the blind texts.</p>
									</div>
									<div class="d-flex">
										<div class="user-img"
											style="background-image: url(images/stylist-4.jpg)"></div>
										<div class="pos ml-3">
											<p class="name">Jeff Nucci</p>
											<span class="position">Businessman</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="testimony-wrap pb-4">
									<div class="text">
										<p class="mb-4">Far far away, behind the word mountains,
											far from the countries Vokalia and Consonantia, there live
											the blind texts.</p>
									</div>
									<div class="d-flex">
										<div class="user-img"
											style="background-image: url(images/stylist-5.jpg)"></div>
										<div class="pos ml-3">
											<p class="name">Jeff Nucci</p>
											<span class="position">Businessman</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="ftco-footer ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2 logo">Beauty Salon</h2>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-5">
						<h2 class="ftco-heading-2">Information</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">FAQs</a></li>
							<li><a href="#" class="py-2 d-block">Privacy</a></li>
							<li><a href="#" class="py-2 d-block">Terms Condition</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Links</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">Home</a></li>
							<li><a href="#" class="py-2 d-block">About</a></li>
							<li><a href="#" class="py-2 d-block">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Contact</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span
									class="text">City Centre, Dublin, Ireland</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+353 1 </span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">info@beautysalon.ie</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
