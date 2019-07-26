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
	$name=$_POST["fullname"];
	$address=$_POST["address"];
	$contact=$_POST["contact"];
	$gender=$_POST["gender"];
	$sql="select * from login where email='$email'";
	$result=mysqli_query($con,$sql);
	if(mysqli_num_rows($result)>0)
{
	echo "user exists";
}
else
{

	$sql="insert into login(email,password,type,status)values ('$email','$password','user',0)";
	$result=mysqli_query($con,$sql);
	if($result)
	{
		$user_id=$con->insert_id;
		$sql="insert into registration(name,address,contact,gender,user_id)values('$name','$address','$contact','$gender','$user_id')";

		if (mysqli_query($con,$sql))
	 {
		echo "insert success";
	}
	}
}
}

	?>
</body>
</html>