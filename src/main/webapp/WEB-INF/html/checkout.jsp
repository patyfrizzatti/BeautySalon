<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link rel="stylesheet" href="../css/main.css">
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Pacifico"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i,900,900i"
	rel="stylesheet">
<link rel="stylesheet" href="../../css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="../css/animate.css">
<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../css/magnific-popup.css">
<link rel="stylesheet" href="../css/aos.css">
<link rel="stylesheet" href="../css/ionicons.min.css">
<link rel="stylesheet" href="../css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../css/jquery.timepicker.css">
<link rel="stylesheet" href="../css/flaticon.css">
<link rel="stylesheet" href="../css/icomoon.css">
<link rel="stylesheet" href="../css/style.css">
<link href='../css/mainCalendar.css' rel='stylesheet' />
<link href='../css/mainDayGrid.css' rel='stylesheet' />
<link href='../css/mainTimeGrid.css' rel='stylesheet' />
<script src='../js/mainCalendar.js'></script>
<script src='../js/mainInteraction.js'></script>
<script src='../js/mainDayGrid.js'></script>
<script src='../js/mainTimeGrid.js'></script>
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<!-- name of the salon can be changed below -->
			<a class="navbar-brand" href="index">Patricia</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="../index"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="../index#about" class="nav-link">About</a></li>
					<li class="nav-item"><a href="../index#services"
						class="nav-link">Services</a></li>
					<li class="nav-item"><a href="../index#appointment"
						class="nav-link">Appointment</a></li>
					<li class="nav-item"><a href="../index#staff" class="nav-link">Staff</a></li>
					<li class="nav-item"><a href="../index#pricing"
						class="nav-link">Pricing</a></li>
					<li class="nav-item"><a href="../contact" class="nav-link">Contact</a></li>
					
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
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50" style="margin-top: 62px;">
				<span class="login100-form-title p-b-33">Welcome ${customerName}</span>
				<span class="login100-form-title p-b-33">your bookings are below:</span>
				<br>
				<c:forEach items="${bookings}" var="b">
					<span style="padding-left: 12px;"><c:out value="${b.value}" /></span>
					<br>
				</c:forEach>
				<br>
				<span class="login100-form-title p-b-33">Total: &euro;${total}</span>
				
				<form action="../paid" class="appointment-form">
					<div class="form-group">
						<input type="submit" value="Pay" class="btn btn-primary">
					</div>
				</form>
				
				<span class="login100-form-title p-b-33">
					<a href="../services" class="nav-link" style="font-size: 26px;">Add more services</a>
				</span>
			</div>
		</div>
	</div>

	<script src="../js/jquery.min.js"></script>
	<script src="../js/jquery-migrate-3.0.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/jquery.waypoints.min.js"></script>
	<script src="../js/jquery.stellar.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/aos.js"></script>
	<script src="../js/jquery.animateNumber.min.js"></script>
	<script src="../js/bootstrap-datepicker.js"></script>
	<script src="../js/jquery.timepicker.min.js"></script>
	<script src="../js/scrollax.min.js"></script>
	<script src="../js/main.js"></script>
</body>
</html>
