<?php
include('Admin/db.php');
if(isset($_POST['pay']))
{
	$bnum = rand();
	$vid = $_POST['vid'];
	
	$col=$_POST['color'];
	$uid=$_POST['uid'];
	$sh=$_POST['showroom'];
	$downpay = $_POST['downpay'];
	$query=mysqli_query($con,"INSERT INTO `booking`(`v_id`,`color`,`user_id`,`booking_num`,`book_date`,`book_time`, `s_id`,`advance`,`booking_status`) VALUES('$vid','$col','$uid','$bnum',now(),now(),'$sh','$downpay','Booked')")or die(mysqli_error($con));

	 if($query!=true)
	 {
	 	echo "<script>
               alert('error');
                window.location='index.php';
                 </script>";

      }
}
?>
<?php



if(isset($_POST['pay']))
{
	$cno=$_POST['cardno'];
	$amt=$_POST['downpay'];
	$querry="select * from bank where cardno='$cno'";
	$result=mysqli_query($con,$querry);
	$sres = mysqli_fetch_array($result);
	$new=$sres['amt'];
	if(($new-$amt)<20000)
	{
		echo "<script>
				  alert('Insufficient balance..!');
                  window.location='index.php';
              </script>";
	}
	else
	{
		$new=$new-$amt;
		$querry="update bank set amt='$new' where cardno='$cno'";
		$result=mysqli_query($con,$querry);
		echo "<script>
				  alert('Booked Successfully...Your current balance is :".$new."')
                  window.location='index.php';
              </script>";
	}

}
?>