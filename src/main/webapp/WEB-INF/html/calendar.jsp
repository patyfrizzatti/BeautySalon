<!DOCTYPE html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
<title>Beauty Salon - Calendar</title>
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
<link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
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
<script>
	document
			.addEventListener(
					'DOMContentLoaded',
					function() {
						var calendarEl = document.getElementById('calendar');

						var today = new Date();
						var dd = String(today.getDate()).padStart(2, '0');
						var mm = String(today.getMonth() + 1).padStart(2, '0');
						var yyyy = today.getFullYear();
						today = yyyy + '-' + mm + '-' + dd;

						var calendar = new FullCalendar.Calendar(
								calendarEl,
								{
									height : 347,
									plugins : [ 'interaction', 'dayGrid',
											'timeGrid', 'interactionPlugin' ],
									eventClick : function(info) {
										alert('Hour Unavailable');
									},
									defaultView : 'timeGridDay',
									header : {
										left : 'prev,next today',
										center : 'title',
										right : 'dayGridMonth,timeGridWeek,timeGridDay'
									},
									defaultDate : today,
									navLinks : true, // can click day/week names to navigate views
									selectable : true,
									selectMirror : true,
									validRange : {
										start : today
									},
									minTime : '9:00am',
									maxTime : '19:00:00',
									slotDuration : "00:60:00",
									hiddenDays : [ 0 ],
									allDaySlot : false,
									dateClick : function(info) {
										if(!(info.view.type == 'dayGridMonth')) {
											var name1 = window.location.href.substring(31);
											var idName = name1;
											var serviceName = name1.replace(/[0-9]/g, '');
											
											var currentDate = new Date(info.dateStr);
											var date = currentDate.getDate();
											var month = currentDate.getMonth();
											var year = currentDate.getFullYear();
											var hour = currentDate.getHours();
											var dateString = date + "/" +(month + 1) + "/" + year;
											 
											if (confirm("Would you like to confirm your "
													+ serviceName + " in the day " + dateString + " at " + hour + ":00")) {
												window.location.href = "/checkout/" + idName + "-" + info.dateStr;
											} else {
											}
										}
									},
									editable : false,
									eventLimit : true, // allow "more" link when too many events
									events : '${jsonDatas}'
								});

						calendar.render();
					});
</script>
<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
	background: #FEE6CE;
}

#calendar {
	max-width: 900px;
	margin: 102px auto;
	border-color: #000;
}
</style>
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
						<li class="nav-item"><a href="../signup" class="nav-link">Login</a></li>
					</sec:authorize>
					
					<sec:authorize access="hasAuthority('USER')">
					    <li class="nav-item">
					    	<a href="../customer" class="nav-link">Your Profile</a>
					    </li>
					</sec:authorize>
					
					<sec:authorize access="hasAuthority('ADMIN')">
					    <li class="nav-item">
					    	<a href="../admin" class="nav-link">Your Profile</a>
					    </li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
	<div id='calendar' style="color: #000;"></div>

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
</body>
</html>
