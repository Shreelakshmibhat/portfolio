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
<!-- Codes -->
	<div class="container" style="background-size: cover;">
<div class="page agile-1">
	<div class="ser-top ser-top-c">
		
			<div class="ser-t">
				<b></b>
				<span><i></i></span>
				<b class="line"></b>
			</div>
	</div>

  <hr>

       
        <div class="col-md-12">
         <div class="card card-outline-secondary">
                        <div class="card-body">
                            <h3 class="text-center">Credit Card Payment</h3>
                            <hr>
                            <form method="post" action="booking.php" class="form">
                                <?php
                                if(isset($_POST['vid']))
                                {
                                    $vid = $_POST['vid'];
                                    
                                    $col=$_POST['color'];
                                    $uid=$_POST['uid'];
                                    $sh=$_POST['showroom'];
                                    $downpay = $_POST['downpay'];
                                ?>
                                <input type="hidden" name="vid" value="<?php echo $vid; ?>">
                               
                                <input type="hidden" name="color" value="<?php echo $col; ?>">
								<input type="hidden" name="uid" value="<?php echo $uid; ?>">
								<input type="hidden" name="showroom" value="<?php echo $sh; ?>">
								<input type="hidden" name="downpay" value="<?php echo $downpay; ?>">
                                <?php    
                                }
                                ?>
                                <div class="form-group">
                                    <label for="cc_name">Card Holder's Name</label>
                                    <input type="text" class="form-control" id="cc_name" title="First and last name" required="required">
                                </div>
                                <div class="form-group">
                                    <label>Card Number</label>
                                    <input type="text" name="cardno" class="form-control" maxlength="16" pattern="\d{16}" title="Credit card number" required="">
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-12">Card Exp. Date</label>
                                    <div class="col-md-4">
                                        <select class="form-control" name="cc_exp_mo" size="0">
                                            <option value="01">01</option>
                                            <option value="02">02</option>
                                            <option value="03">03</option>
                                            <option value="04">04</option>
                                            <option value="05">05</option>
                                            <option value="06">06</option>
                                            <option value="07">07</option>
                                            <option value="08">08</option>
                                            <option value="09">09</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <select class="form-control" name="cc_exp_yr" size="0">
                                            <option>2020</option>
                                            <option>2021</option>
                                            <option>2022</option>
                                            <option>2023</option>
                                            <option>2024</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" maxlength="3" pattern="\d{3}" title="Three digits at back of your card" required="" placeholder="CVV">
                                    </div>
                                </div>
                                
                                
                                <hr>
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <button type="reset" class="btn btn-default btn-lg btn-block">Cancel</button>
                                    </div>
                                    <div class="col-md-6">
                                        <button type="submit" name="pay" class="btn btn-success btn-lg btn-block">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
        </div>
        </div>
	
	</div>
</div>

<!-- //Codes -->
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
		<script>
			function myFunction() 
			{
			  var x = document.getElementById("passwrd");
			  if (x.type === "password") {
			    x.type = "text";
			  } else {
			    x.type = "password";
			  }
			}
		</script>
<!-- //js-scripts -->
</body>
</html>