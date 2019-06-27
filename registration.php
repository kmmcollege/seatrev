<!DOCTYPE html>
<html>
<head>
	<title>registration</title>
	<form method="POST" action="registration.php">
		<input type="email" name="txtname"/>
		<input type="password" name="txtpassword"/>
		<input type="text" name="fullname"/>
		<input type="text" name="address"/>
		<input type="number" name="contact"/>
		<input type="radio" name="gender"  value="Male"/>Male
		<input type="radio" name="gender" value="Female"/>Female
		<input type="radio" name="gender" value="Others"/>Others
		<input type="submit" name="blm" value="save"/>
	</form>
</head>
<body>
	<?php
	if(isset($_POST["blm"]))
		$username=$_POST["txtname"];
	$password=$_POST["txtpassword"];
	$name=$_POST["fullname"];
	$address=$_POST["address"];
	$contact=["contact"];
	$gender=$_POST["gender"];
	$sql="insert into login(username,password)values ("$username,$password")"
	if (mysqli_master_query($con, query)) {
		# code...
	}
</body>
</html>