<!DOCTYPE html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
<title>Beauty Salon - Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

<link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

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
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<!-- name of the salon can be changed below -->
			<a class="navbar-brand" href="index">Patricia</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="index#about" class="nav-link">About</a></li>
					<li class="nav-item"><a href="index#services" class="nav-link">Services</a></li>
					<li class="nav-item"><a href="index#appointment" class="nav-link">Appointment</a></li>
					<li class="nav-item"><a href="index#staff" class="nav-link">Staff</a></li>
					<li class="nav-item"><a href="index#pricing" class="nav-link">Pricing</a></li>
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

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-33"> Login </span>
					<sec:authorize access="isAnonymous()">
						<form:form method="POST" action="/customers"
							modelAttribute="customerForm">
	

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email"
							placeholder="Email"> <span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="wrap-input100 rs1 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="password"
							placeholder="Password"> <span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="container-login100-form-btn m-t-20">
						<button class="login100-form-btn">Sign in</button>
					</div>
					</sec:authorize>

					<div class="text-center p-t-45 p-b-4">
						<span class="txt1"> Forgot </span> <a href="#" class="txt2 hov1">
							Username / Password? </a>
					</div>

					<div class="text-center">
						<span class="txt1"> Create an account? </span> <a href="signup"
							class="txt2 hov1"> Sign up </a>
					</div>
					<sec:authorize access="hasAuthority('USER')">
						<li class="nav-item">
							<span class="login100-form-title p-b-33"><b>You're already logged in.</b></span>
						</li>
					</sec:authorize>
					
					<sec:authorize access="hasAuthority('ADMIN')">
						<li class="nav-item">
							<span class="login100-form-title p-b-33"><b>You're already logged in.</b></span>
						</li>
					</sec:authorize>
	
				</form>
			</div>
		</div>
	</div>
	<script src="js/main.js"></script>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
