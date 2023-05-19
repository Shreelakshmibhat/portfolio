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
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> <!-- Style-CSS --><link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<!-- //css files -->
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Jockey+One&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Niconne&amp;subset=latin-ext" rel="stylesheet">
<!-- //online-fonts -->
</head>
<body>
<!-- banner -->
	<div class="banner wthree">
		<div class="container">
			<div class="banner_top">
				<div class="logo wow fadeInLeft animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInLeft;">
					<h1><a href="index.html"><span>V</span>ehic Hub</a></h1>
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
						<li><a href="index.php" class="active">Home</a></li>
						<li><a href="about.php">About Us</a></li>
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
					      </div>
					    </li>
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
						
					</ul>
				</div><!-- /.navbar-collapse -->	
			</nav>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- banner -->
			<!--Slider-->
			<div class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
						
							<div class="slider-info">
							    <h3>Fast vehicle are my <span>only vice.</span> </h3>
							</div>
						</li>
						<li>
							<div class="slider-info">
							     <h3>Vehicle bring me sheer <span>joy.</span> </h3>
						    </div>
						</li>
						<li>
							
							<div class="slider-info">
							     <h3>Fast vehicless are my <span>only vice.</span> </h3>
							</div>
						</li>
					</ul>
				<div class="clearfix"></div>
			</div>
			<!--//Slider-->
		</div>
		<div class="thim-click-to-bottom">
				<a href="#about" class="scroll">
					<i class="fa fa-long-arrow-down" aria-hidden="true"></i>
				</a>
			</div>
	</div>
<!-- //banner -->
<!-- Main -->
<div class="banner-bottom agile" id="about">
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
<div class="count-agileits">
				
				
					
						</div> <div class="bg-overlay">
							<center><video autoplay muted loop id="myvideo" >
								<source src="images/vehic.mp4" type="video/mp4">
							</video></center></div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
<div class="why-choose-agile">
		<div class="container">
			<h3 class="w3l_head">Best Services</h3>
			<div class="why-choose-agile-grids-top">
				<div class="col-md-4 agileits-w3layouts-grid">
					<div class="wthree_agile_us">
						<div class="col-xs-9 agile-why-text">
							<h4>Service 1</h4>
							<p>Reduced processing time.</p>
						</div>
						<div class="col-xs-3 agile-why-text">
							<div class="wthree_features_grid hvr-rectangle-out">
								<i class="fa fa-truck" aria-hidden="true"></i>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="wthree_agile_us">
						<div class="col-xs-9 agile-why-text">
							<h4>Service 2</h4>
							<p>Online payment</p>
						</div>
						<div class="col-xs-3 agile-why-text">
							<div class="wthree_features_grid hvr-rectangle-out">
								<i class="fa fa-cog" aria-hidden="true"></i>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="wthree_agile_us">
						<div class="col-xs-9 agile-why-text">
							<h4>Service 3</h4>
							<p>Warranty coverage beginning same day.</p>
						</div>
						<div class="col-xs-3 agile-why-text">
							<div class="wthree_features_grid hvr-rectangle-out">
								<i class="fa fa-eye" aria-hidden="true"></i>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 agileits-w3layouts-grid img">
					<img src="images/abs.jpg" alt=" " class="img-responsive" />
				</div>
				<div class="col-md-4 agileits-w3layouts-grid">
					<div class="wthree_agile_us">
					<div class="col-xs-3 agile-why-text">
							<div class="wthree_features_grid hvr-rectangle-out">
								<i class="fa fa-star" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-xs-9 agile-why-text two">
							<h4>Service 4</h4>
							<p>minimum time-lag assistance.</p>
						</div>
						
						<div class="clearfix"> </div>
					</div>
					<div class="wthree_agile_us">
					<div class="col-xs-3 agile-why-text">
							<div class="wthree_features_grid hvr-rectangle-out">
								<i class="fa fa-cogs" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-xs-9 agile-why-text two">
							<h4>Service 5</h4>
							<p>Towing facility.</p>
						</div>
						
						<div class="clearfix"> </div>
					</div>
					<div class="wthree_agile_us">
					<div class="col-xs-3 agile-why-text">
							<div class="wthree_features_grid hvr-rectangle-out">
								<i class="fa fa-wrench" aria-hidden="true"></i>
							</div>
						</div>
						<div class="col-xs-9 agile-why-text two">
							<h4>Service 6</h4>
							<p>Vehicle locked or lost keys.</p>
						</div>
						
						<div class="clearfix"> </div>
					</div>
						
						<div class="clearfix"> </div>
					</div>
			</div>
				<div class="clearfix"> </div>
		</div>
	</div>
<!-- Footer -->
<div class="footer w3ls">
	<div class="container">
		<div class="footer-main">
			
				
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
		<script src="js/responsiveslides.min.js"></script>
							<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:true,
									nav:false,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							});
							 </script>
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
								//  Opacity of the prev and next button navigation when not transitioning. Options: Number between 0 and 1. 0 (transparent) - 1 (opaque). Default: .5
								navButtonsOpacity: 1,
							});
						});
					</script>
		<!-- //team-plugin -->
<!-- start-smoth-scrolling -->
			<script type="text/javascript" src="js/move-top.js"></script>
			<script type="text/javascript" src="js/easing.js"></script>
			<script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
					});
				});
			</script>
		<!-- start-smoth-scrolling -->
<!-- //js-scripts -->
</body>
</html>