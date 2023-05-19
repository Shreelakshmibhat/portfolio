<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>vehic zone</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <meta name="keywords" content="This project is aimed at developing a web application that depicts online vehicle showroom and booking vehicles through the online. Customer can register to this site and he/she can book vehicles by entering his/her login information. Administrator is main user of this system and he/she can add employees, and new vehicle details." /> -->
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
					<h1><a href="index.html"><span>v</span>ehic hub</a></h1>
				</div>
				<div class="banner_top_right wow fadeInRight animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">
					<nav class="navbar navbar-default">
				
 
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav cl-effect-14">
						<li><a href="index.php">Home</a></li>
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
						<li><a href="gallery.php" class="active">Gallery</a></li>
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
				s
			</div>
			<!-- banner -->
		
		</div>
	</div>
<!-- //banner -->
<?php

?>
<!-- Main -->
<!-- Gallery -->
	<div class="gallery">
		<div class="container">
			<h2>Vehicles</h2>
			
							<div class="row">
								<?php
								include('Admin/db.php');
								$vid = $_GET['vid'];
								$sid = $_GET['sid'];
								$sql = mysqli_query($con,"SELECT * FROM `vehicle` WHERE v_id='$vid'");
								$nrow = mysqli_num_rows($sql);
								if($nrow == true)
								{
									while($row = mysqli_fetch_array($sql))
									{
										$vid = $row['v_id'];
										function make_query($con)
										{
										 $query = "SELECT * FROM `vehicle_image` WHERE v_id='$_GET[vid]'";
										 $result = mysqli_query($con, $query);
										 return $result;
										}

										function make_slide_indicators($con)
										{
										 $output = ''; 
										 $count = 0;
										 $result = make_query($con);
										 while($res = mysqli_fetch_array($result))
										 {
										  if($count == 0)
										  {
										   $output .= '
										   <li data-target="#dynamic_slide_show" data-slide-to="'.$count.'" class="active"></li>
										   ';
										  }
										  else
										  {
										   $output .= '
										   <li data-target="#dynamic_slide_show" data-slide-to="'.$count.'"></li>
										   ';
										  }
										  $count = $count + 1;
										 }
										 return $output;
										}

										function make_slides($con)
										{
										 $output = '';
										 $count = 0;
										 $result = make_query($con);
										 while($res = mysqli_fetch_array($result))
										 {
										  if($count == 0)
										  {
										   $output .= '<div class="item active">';
										  }
										  else
										  {
										   $output .= '<div class="item">';
										  }
										  $output .= '
										   <img src="Admin/vehicles/'.$res["vimage"].'"/>
										   <div class="carousel-caption">
										    <h3>V-hub</h3>
										   </div>
										  </div>
										  ';
										  $count = $count + 1;
										 }
										 return $output;
										}
										
								?>
								<center><div class="col-md-12 agile_gallery_grids">
									<div class="panel panel-default">
										<div id="dynamic_slide_show" class="carousel slide" data-ride="carousel">
									    <ol class="carousel-indicators">
									    <?php echo make_slide_indicators($con); ?>
									    </ol>

									    <div class="carousel-inner">
									     <?php echo make_slides($con); ?>
									    </div>
									    <a class="left carousel-control" href="#dynamic_slide_show" data-slide="prev">
									     <span class="glyphicon glyphicon-chevron-left"></span>
									     <span class="sr-only">Previous</span>
									    </a>

									    <a class="right carousel-control" href="#dynamic_slide_show" data-slide="next">
									     <span class="glyphicon glyphicon-chevron-right"></span>
									     <span class="sr-only">Next</span>
									    </a>

									   </div>
										<div class="panel-body">
											<h2 style="text-align: center;"><?php echo $row['v_name'];?></h2>
											<h2 style="text-align: center;">Rs.<?php echo $row['v_cost'];?></h2>
											<form method="post" action="payment.php">
												<input type="hidden" name="vid" value="<?php echo $vid; ?>">
												
												<?php
												if(isset($_SESSION['user']))
												{
												?>
												<input type="hidden" name="uid" value="<?php echo $_SESSION['user']; ?>">
											<?php } ?>
												
										<table class="table">
											<tr>
												<td colspan="2" style="text-align: justify; color: blue;"><?php echo $row['v_about']; 
													?></td>
											</tr>
											<tr>
												<td>Brand</td><td><?php echo $row['v_brand']; 
													?></td>
											</tr>
											<tr>
												<td>Model</td><td><?php echo $row['v_model']; 
													?></td>
											</tr>
											<tr>
												<td>Vehicle type</td><td><?php echo $row['v_type']; 
													?></td>
											</tr>
											<tr>
												<td>Fuel type</td><td><?php echo $row['fuel_type']; 
													?></td>
											</tr>
											<tr>
												<td>Mileage</td><td><?php echo $row['mileage']; 
													?></td>
											</tr>
											<tr>
												<td>Displacement</td><td><?php echo $row['displacement']; 
													?></td>
											</tr>
											<tr>
												<td>Engine type</td><td><?php echo $row['engine_type']; 
													?></td>
											</tr>
											<tr>
												<td>Number of cylinder</td><td><?php echo $row['no_of_cylinder']; 
													?></td>
											</tr>
											<tr>
												<td>Fueltank capacity</td><td><?php echo $row['fuel_tank_capacity']; 
													?></td>
											</tr>
											<tr>
												<td>Max-torque</td><td><?php echo $row['maxtorque']; 
													?></td>

											<tr>
												<td>Vehicle colors</td><td>
													<?php
													$clr = explode(",", $row['v_colors']);
													foreach ($clr as $value) { ?>
														<input type="radio" name="color" value="<?php echo $value; 	?>" required><?php echo $value; 	?>
												<?php	}

													?>
													</td>
											</tr>
										</table>	
										<select name="month" id="month" class="form-control" required="">
											<option value="">Loan Period ( Months )</option>
											<option value="12">12</option>
											<option value="24">24</option>
										</select><br>
										<select name="per" id="per" class="form-control" onchange="caldpay();" required="">
											<option value="">Bank Interest Rate</option>
											<option value="6">6%</option>
											<option value="12">12%</option>
										</select><br>
										<!-- <select name="">
											
										</select> -->
										
										<label>Down Payment</label>
										<input type="text" name="downpay" id="downpay" class="form-control" readonly=""><br>
										<?php ?>
										<label>EMI</label>
										<input type="text" name="emi" id="emi" class="form-control" readonly=""><br>	
										<input type="hidden" name="price" id="price" value="<?php echo $row['v_cost']; ?>">
									<input type="hidden" name="showroom" value="<?php echo $sid; ?>">
									

									<?php
									if(isset($_SESSION['user']))
									{
										echo'<button type="submit" name="book" class="btn btn-success">Book Now</button>';
									}
									else
									{
										echo'please <a href="login.php" class="btn btn-info">Login</a> to book';
									}
									?>
                              
                          </form>
												</div>
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
					<script>
						function caldpay()
						{
							var month = document.getElementById('month').value;
							var amt = document.getElementById('price').value;
							var per = document.getElementById('per').value;

							var pamt = (amt * per) / 100;
							document.getElementById('downpay').value = pamt;



							var emiAmt =   [amt * per / 100 * (1 + per) ^ month] / [(1 + per / 100) ^ month - 1];
							document.getElementById('emi').value = Math.round(emiAmt);
							
						

						}
					</script>		
							
	</div>

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