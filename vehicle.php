<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>vehic zone</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->

<!-- css files -->
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
					<h1><a href="index.html"><span>v</span>ehic zone</a></h1>
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
					      <a class="nav-link dropdown-toggle" class="active"  href="#" id="navbardrop" data-toggle="dropdown" >
					         Vehicle
					      </a>
					      <div class="dropdown-menu">
					      	<?php
					      	include('Admin/db.php');
					      	$sql = mysqli_query($con,"SELECT * FROM `vehicle_category`");
					      	while($res = mysqli_fetch_array($sql))
					      	{
					      	?>
					        <a class="dropdown-item" class="active" href="showrooms.php?cid=<?php echo $res['category_id'] ?>"><?php echo $res['category'] ?></a>
					    	<?php } ?></div></li>
						<li><a href="gallery.php" >Gallery</a></li>
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
<!-- Gallery -->
	<div class="gallery">
		<div class="container">
			<h2>Vehicles</h2>
			<div class="wthree_gallery_grids">
				<div id="jzBox" class="jzBox">
					<div id="jzBoxNextBig"></div>
					<div id="jzBoxPrevBig"></div>
					<img src="#" id="jzBoxTargetImg" alt=" " />
					<div id="jzBoxBottom">
						<div id="jzBoxTitle"></div>
						<div id="jzBoxMoreItems">
							<div id="jzBoxCounter"></div>
							<i class="arrow-left" id="jzBoxPrev"></i> 
							<i class="arrow-right" id="jzBoxNext"></i> 
						</div>
						<i class="close" id="jzBoxClose"></i>
					</div>
				</div>
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home">
							<div class="tab_img">
								<?php
								include('Admin/db.php');
								$cid = $_POST['cid'];
								$sid = $_POST['showroom'];
								$sql = mysqli_query($con,"SELECT * FROM `vehicle` WHERE category_id='".$cid."' and s_id='".$sid."'");
								$nrow = mysqli_num_rows($sql);
								if($nrow == true)
								{
									while($row = mysqli_fetch_array($sql))
									{
										$vid = $row['v_id'];
										$qry = mysqli_query($con,"SELECT * FROM `vehicle_image` WHERE v_id='$vid' LIMIT 1");
										$res = mysqli_fetch_array($qry);
								?>
								<div class="col-md-3 agile_gallery_grids">
									<div class="card">
									<a href="Admin/vehicles/<?php echo $res['vimage'] ?>" class="jzBoxLink">
										<div class="view view-sixth">
											<img src="Admin/vehicles/<?php echo $res['vimage'] ?>" alt=" " class="img-responsive" />
											<div class="card-body">	
												<div class="mask">
													<p>
													<?php echo $row['v_name']; ?><br>
													INR <?php echo $row['v_cost']; ?>
													</p>
												</div>
											</div>
										</div>
									</a>
								</div>
								<hr>
									<div class="card-footer">
										<p><?php echo $row['v_name']; ?></p>
										<p>INR <?php echo $row['v_cost']; ?></p>
										<br>
										<a href="vehicledetail.php?vid=<?php echo $row['v_id'] ?>&&sid=<?php echo $sid; ?>" class="btn btn-success">View</a>
									</div>
								</div>
								<?php
									}
								  }  
								  else
								  {
								  	echo'<h3>No Record Found</h3>';
								  }
								?>


							</div>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //Gallery -->
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
		<script src="js/jzBox.js"></script>
<!-- //js-scripts -->
</body>
</html>