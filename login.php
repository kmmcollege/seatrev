<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<?php
	 require_once 'connect.php'; 
	if(isset($_POST["btn"]))
	{
	$email=$_POST["email"];
	$password=$_POST["pswd"];
	$sql="select * from login where email='$email' and password='$password'";
	$result=mysqli_query($con,$sql);
	if(mysqli_num_rows($result)>0)
     {
	echo "login successfull";
	$row=mysqli_fetch_array($result);
	session_start();
	$_SESSION["email"]=$email;
	if($row['type']=='admin')
	{
		header("location:admin/index.php");
	}
	if($row['type']=='user')
	{
		header("location:user/index.php");
	}
}
else
echo "not yet registered";
}


	?>
</body>
</html>
