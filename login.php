<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<style type="text/css">
		.img{
			width: 100px;
			height: 100px;
			border-radius: 50%;
			position: absolute;
			top: -50px;
			left:calc(50% - 50px);
		}
		input[type="text"],input[type="email"],input[type="password"],textarea[name="address"]
		{
			border: none;
			border-bottom: 1px solid #fff;
			background: transparent;
			outline: none; height: 40px;
			color: #fff;
			font-size: 16px;
		}
		input[type="submit"]
		{
			border: none;outline: none;
			height: 40px;
			background: #1c8adb;
			color: #fff;
			font-size: 18px;
			border-radius: 20px;
		}
		.h1
		{
			margin: 0;
			padding: 0 0 20px;
			text-align: center;
			color: #fff;
			font-size: 33px;
			font-family: sans-serif;
			font-weight: bold;
		}
	</style>
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
			<h2 class="tittle-agw3">Login \ Register</h2>
			<div class="ser-t">
				<b></b>
				<span><i></i></span>
				<b class="line"></b>
			</div>
	</div>

  <hr>

       
        <div class="col-md-6 thumbnail" style="background:rgba(0,0,0,0.5);color:#fff;left:-1.5%;">
         
            <form  method="post" class="form-group" >
            	
				<img class="img" src="images\user1.png" ><br><br>
                <h1 class="h1">LOGIN</h1>

                <label for="emailuser">Email ID</label>
                <input type="Email" name="email" class="form-control" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter the valid user name" style=""><br>
                <label for="passwrd">Password</label>
                <input type="Password" name="passwrd" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="enter valid password" required=""><br>
                
                <input type="submit" name="login" class="btn btn-info btn-block" value="Login">


            </form>

            <?php
                                include('Admin/db.php');
                                if(isset($_POST['login']))
                                {
                                    $e=$_POST['email'];
                                    $p=$_POST['passwrd'];
                                   $query=mysqli_query($con,"SELECT * FROM `user` WHERE email_id='$e' and password='$p' and user_status='Active'")or die(mysqli_error($con));
                                   $row = mysqli_fetch_array($query);
                                    if($row==true)
                                    {
                                      $_SESSION['user'] = $row['user_id'];
                                        echo"
                                        <script>
                                        alert('Welcome');
                                        window.location='index.php';
                                        </script>";
                                    }
                                    else
                                    {
                                        echo "<script>
                                        alert('YOU ARE NOT GRANTED ACCESS');
                                        window.location='login.php';
                                        </script>";

                                    }
                                }
                                ?>
                            </div>
                      
          <div class="col-md-6 thumbnail" style="background:rgba(0,0,0,0.5);color:#fff;left: 1.5%;">
            <form method="post">
            	<img class="img" src="images\user1.png"></center><br><br>
              <h1 class="h1" >REGISTRATION</h1>

              <label for="firstname">Full Name</label>
              <input type="text" name="fullname" class="form-control" required="" pattern="[A-Za-z]+"><br>
              <label for="phonenum">Phone no.</label>
              <input type="text" name="phonenum" class="form-control" pattern="[6|7|8|9][0-9]{9}" title="only valid phone number" maxlength="10"  required=""><br>
               <label for="firstname">Address</label>
              <textarea name="address" class="form-control" required="" pattern="[A-Za-z]+"></textarea><br>
              <label for="email">Email</label>
              <input type="email" name="email" class="form-control" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"><br>
              <label for="passwrd">Password</label>
              <input type="Password" name="passwrd" id="passwrd"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" min=8 title="must include uppercase,lowercase,digit,special character" class="form-control" required="">
              <input type="checkbox" onclick="myFunction()">Show Password
              <br>
              <label for="passwrd">Confirm Password</label>
              <input type="Password" name="cpasswrd"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" min=8 title="must include uppercase,lowercase,digit,special character" class="form-control" required="" ><br>
              <h5>By tapping signup ,you agree to our terms ,data policy and cookies policy.You may receive SMS notifications from us and can opt out any time.</h5>
              <label> <input type="checkbox" required="">I agree your terms and policy</label>
              <input type="submit" name="btnadd" class="btn btn-info btn-block" value="Sign Up">

            </form>  
                      <?php
                                include('Admin/db.php');
                                if(isset($_POST['btnadd']))
                                {
                                    $f=$_POST['fullname'];
                                    $ph=$_POST['phonenum'];
                                    $a=$_POST['address'];
                                    $e=$_POST['email'];
                                    $p=$_POST['passwrd'];
                                    $hash=md5($_POST['passwrd']);
                                   $q=mysqli_query($con,"SELECT * from `user` where `email_id`='".$e."'")or die(mysqli_error($con)); 
                                   if(mysqli_num_rows($q)>0)
                                   {
                                   	echo"
                                      <script>
                                      alert('email already exist');
                                      window.location='index.php';
                                      </script>";
                                   }
                                   else
                                   {
                                    if($_POST['passwrd'] != $_POST['cpasswrd'])
                                    {
                                      echo"
                                      <script>
                                      alert('Password not matching');
                                      window.location='index.php';
                                      </script>";
                                    }
                                    else
                                    {
                                      $query=mysqli_query($con,"INSERT INTO `user`(`fullname`,`contact`,`address`,`email_id`, `password`,`user_status`) VALUES('$f','$ph','$a','$e','$p','Registered')")or die(mysqli_error($con));
                                      if($query==true)
                                      {
                                          echo"
                                          <script>
                                          alert('Continue');
                                          window.location='index.php';
                                          </script>";
                                      }
                                      else
                                      {
                                          echo "<script>
                                          alert('error');
                                          window.location='register.php';
                                          </script>";

                                      }
                                    }
                                  }
                              }
                                ?>

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