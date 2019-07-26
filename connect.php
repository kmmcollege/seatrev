<?php
$servername="localhost";
$username="root";
$password="";
$database="seatrev";	
$con=mysqli_connect($servername,$username,$password,$database);
if(!$con)
	{ 
      echo"connection failed";}
      ?>