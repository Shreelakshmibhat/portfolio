<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>vhub.com</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
						<li><a href="about.php">About Us</a></li>
						<li class="dropdown" >
					      <a class="nav-link dropdown-toggle"  href="#" id="navbardrop" data-toggle="dropdown">
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
						
						<!-- <li><a href="contact.php">Contact Us</a></li> -->
					</ul>
				</div><!-- /.navbar-collapse -->	
				
			</nav>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- banner -->
		
		</div>
	</div>
<!-- //banner -->

<!-- Main -->
<!-- Services -->
	<div class="why-choose-agile">
		<div class="container" >
			<h2 class="w3l_head ser2">Select ShowRooms</h2>
			<div class="why-choose-agile-grids-top">
				<div class="col-md-6 thumbnail" style="margin-left: 25%;">
					<?php
					if(isset($_GET['cid']))
					{
						$cid = $_GET['cid'];
					?>
					<center><form method="post" action="vehicle.php" class="form-group" style="text-align: center;">
						<input type="hidden" name="cid" value="<?php echo $cid; ?>">
						<select name="showroom" id="sid" class="form-control" required="">
                                    <option value="">Select Showroom</option>
                                    <?php
                                    include('db.php');
                                    $rr = mysqli_query($con,"SELECT * FROM showroom WHERE category_id='$cid' ORDER BY s_name ASC");
                                    while($res = mysqli_fetch_array($rr))
                                    {
                                        echo'<option value="'.$res['s_id'].'">'.$res['s_name'].','.$res['address'].'</option>';
                                    }
                                    ?></center>
                                </select><br>
                                <input type="submit" name="next" value="NEXT" class="btn btn-warning btn-block">
					</form>
					<?php
					}
					?>
				</div>
			</div>
				<div class="clearfix"> </div>
		</div>
	</div>
<!-- //services -->


<!-- //Main -->

<!-- Footer -->
<div class="footer w3ls">
	<div class="container">
		<div class="footer-main">
		
			   <div class="clearfix"> </div>
			</div>
			<div class="copyrights">
				<p>&copy; 2020 Vehic Hub. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">vehic zone</a> </p>
			</div>
		</div>
	</div>
	
	
</div>

<!-- Footer -->	

<!-- js-scripts -->						
		<!-- js -->
			<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
			<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
		<!-- //js -->
		
<!-- //js-scripts -->
</body>
</html>