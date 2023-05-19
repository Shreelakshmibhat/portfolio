<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>vhub.com</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="This project is aimed at developing a web application that depicts online vehicle showroom and booking vehicles through the online. Customer can register to this site and he/she can book vehicles by entering his/her login information. Administrator is main user of this system and he/she can add employees, and new vehicle details." />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->

<!-- css files -->
<link href="css/mislider.css" rel="stylesheet" type="text/css" />
<link href="css/mislider-custom.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> <!-- Bootstrap-Core-CSS -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->

<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Jockey+One&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Niconne&amp;subset=latin-ext" rel="stylesheet">
<!-- //online-fonts -->
</head>
	
<body>
<!-- banner -->
	<div class="banner-2 wthree">
		<div class="container">
			<div class="banner_top">
				<div class="logo wow fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
					<h1><a href="index.html"><span>v</span>ehic hub</a></h1>
				</div>
				<div class="banner_top_right wow fadeInRight animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
					<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav cl-effect-14">
						<li><a href="index.php">Home</a></li>
						<li><a href="about.php" class="active">About Us</a></li>
						<li class="dropdown">
					      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
					        Vehicle
					      </a>
					      <div class="dropdown-menu">
					      	<?php
					      	include('Admin/db.php');
					      	$sql = mysqli_query($con,"SELECT * FROM `vehicle_category`");
					      	while($res = mysqli_fetch_array($sql))
					      	{
					      	?>
					        <a class="dropdown-item" href="showrooms.php?cid=<?php echo $res['category_id'] ?>"><?php echo $res['category'] ?></a>
					    	<?php } ?>
					       </div></li>

						<li><a href="gallery.php">Gallery</a></li>
						<?php  
						if(isset($_SESSION['user']))
						{
							echo'<li><a href="Users/dashboard.php">My Account</a></li>';
							echo'<li><a href="logout.php">Logout</a></li>';
							echo'<li><a href="contact.php">Contact us</a></li>';
						}
						else
						{
							echo'<li><a href="login.php">Register/Login</a></li>';
						}
						?>
						<!--<li><a href="login.php">Register/Login</a></li>-->
						<!-- <li><a href="contact.php">Contact Us</a></li> -->
					</ul>
				<!-- /.navbar-collapse -->	
				
			</nav>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- banner -->
		
		</div>
	</div>
<!-- //banner -->

<!-- Main -->
<!-- About -->
<div class="banner-bottom agile" id="auto">
	<div class="container">
		<h2 class="tittle-one wow fadeInDown">About Us</h2>

		<div class="bottom-grids agileinfo">
			<div class="col-md-6 bottom-grid fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
				<img src="images/bike.png" alt="">
			</div>
			<div class="col-md-6 bottom-grid grid-one wow fadeInRight animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
				<h4>Vehic-Hub</h4>
				<p>Our main aim is that it provides provision for customers to buy or book vehicles through online.Our project aims at creating a web application which tracks customer records, online booking, online vehicle records, etc and it provides easy to use web based interface for customers.
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //About -->

<!-- Intro -->
	<div class="about">
		<div class="container">
			<h3>We make your dreams as real</h3>
			<div class="about-grids">
				<div class="col-md-6 about-grid about-one">
					<div class="about-grid-left">
						<h4>Buy your dream vehicle</h4>
						<p>The idea is to move towards seamlessly integrated automotive shopping,buying and owning-across.</p>
					</div>
					<div class="about-grid-right">
						<span class="glyphicon glyphicon-leaf" aria-hidden="true"></span>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 about-grid about-one">
					<div class="about-grid-right aliquam">
						<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
					</div>
					<div class="about-grid-left non">
						<h4>Future scope</h4>
						<p>In the future,the success of our companies will be measured in"kilometers travelled"as opposed to"vehicle sold".                                  </p>
					</div>					
					<div class="about-grid-right">
						<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
					</div>
					<div class="clearfix"> </div>
				
			</div>
			<div class="about-grids">
				<div class="col-md-6 about-grid">
					<div class="about-grid-left">
						<h4>It's in your dreams</h4>
						<p>Is your vehicle popping up in your dreams lately?Having vivid daydreams and visions of driving a new vehicle may not be a coincidence.This is your subcoscious telling you that it's time to make it a reality.</p>
					</div>
					<div class="about-grid-right">
						<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 about-grid">
					<div class="about-grid-right aliquam">
						<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
					</div>
					<div class="about-grid-left non">
						<h4>It Accommodates all your needs</h4>
						<p>A new vehicle should also match your lifestyle and be able to accomodate all your needs now and into the future.</p>
					</div>					
					<div class="about-grid-right">
						<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
					</div>
					<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //Intro -->

<!-- Services -->
<div class="services" id="services">
		<h3 class="title-w3">Our Latest Events</h3>
			<div class=" col-md-3 section-grid-wthree one">
				<div class="services-info-w3-agileits">
					<h5 class="sub-title">Hyundai Creta 2020</h5>
					<p class="para-w3">Hyundai has unveiled the second-gen Creta at Auto Expo 2020 ahead of its launch on March 17.Hyundai Creta Launch and Prices are likely to start from Rs 10 lakh.</p>
				</div>
				<div class="services-img-agileits-w3layouts">
					<img src="images/ev.jpg" alt="service-img">
				</div>
			</div>
			<div class=" col-md-3 section-grid-wthree">
				<div class="services-img-agileits-w3layouts">
					<img src="images/new2.jpg" alt="service-img">
				</div>
				<div class="services-info-w3-agileits mid">
					<h5 class="sub-title">2020 Aprilia RSV4</h5>
					<p class="para-w3">2020 Aprilia RSV4 is a sports bike launched at a base price of Rs. 22.42 lakh in February 2020 by Aprilia in India.2020 RSV4 is powered by 1078cc engine.It has a aprilialongitudinal 65°.</p>
				</div>
			</div>
			<div class=" col-md-3 section-grid-wthree">
				<div class="services-info-w3-agileits">
					<h5 class="sub-title">Toyota Vellfire</h5>
					<p class="para-w3">Latest Update: The Vellfire is set to be launched in the first quarter of 2020 in India.Expected Engine: It is expected to be offered with a BS6-compliant 2.5-litre petrol-hybrid engine.</p>
				</div>
				<div class="services-img-agileits-w3layouts">
					<img src="images/ev2.jpg" alt="service-img">
				</div>
			</div>
			<div class=" col-md-3 section-grid-wthree">
				<div class="services-img-agileits-w3layouts">
					<img src="images/new3.jpg" alt="service-img">
				</div>
				<div class="services-info-w3-agileits mid">
					<h5 class="sub-title">Vespa GTS 300 </h5>
					<p class="para-w3">
					</p>
				</div>
			</div>
		<div class="clearfix"></div>
</div>
<!-- //Services -->

<!-- Count -->
			
<!-- Count -->


<!-- //Main -->

<!-- Footer -->
<div class="footer w3ls">
	<div class="container" style="height: 100%">
		<div class="footer-main" style="width: 100%">
			
				
			<div class="copyrights">
				<p>&copy; <?php echo date('Y') ?> Vehic Hub. All Rights Reserved | Design by  <a href="#">vehic zone</a> </p>
			</div>
		
	</div>
</div>
<!-- Footer -->	


<!-- js-scripts -->						
		<!-- js -->
			<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
			<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
		<!-- //js -->
							
								
		<!-- Starts-Number-Scroller-Animation-JavaScript -->
				<script type="text/javascript" src="js/numscroller-1.0.js"></script>
		<!-- //Starts-Number-Scroller-Animation-JavaScript -->
		
		
		
			<!-- particles-JavaScript -->
			<script src="js/particles.min.js"></script>
				<script>
				  window.onload = function() {
					Particles.init({
					  selector: '#myCanvas',
					  color: '#b3b3b3',
					  connectParticles: true,
					  minDistance: 100
					});
				  };
				</script>
	
		<!-- //particles-JavaScript -->
		
		<!-- team-plugin -->
			<script src="js/mislider.js" type="text/javascript"></script>
			<script type="text/javascript">
				jQuery(function ($) {
					var slider = $('.mis-stage').miSlider({
						//  The height of the stage in px. Options: false or positive integer. false = height is calculated using maximum slide heights. Default: false
						stageHeight: 380,
						//  Number of slides visible at one time. Options: false or positive integer. false = Fit as many as possible.  Default: 1
						slidesOnStage: false,
						//  The location of the current slide on the stage. Options: 'left', 'right', 'center'. Defualt: 'left'
						slidePosition: 'center',
						//  The slide to start on. Options: 'beg', 'mid', 'end' or slide number starting at 1 - '1','2','3', etc. Defualt: 'beg'
						slideStart: 'mid',
						//  The relative percentage scaling factor of the current slide - other slides are scaled down. Options: positive number 100 or higher. 100 = No scaling. Defualt: 100
						slideScaling: 150,
						//  The vertical offset of the slide center as a percentage of slide height. Options:  positive or negative number. Neg value = up. Pos value = down. 0 = No offset. Default: 0
						offsetV: -5,
						//  Center slide contents vertically - Boolean. Default: false
						centerV: true,
						//  Opacity of the prev and next button navigation when not Auto Carioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
						navButtonsOpacity: 1,
					});
				});
			</script>
		<!-- //team-plugin -->
		
<!-- //js-scripts -->
</body>
</html>