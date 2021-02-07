<?php

$servername="localhost";
$username="root";
$password="";
$dbname="goonj1";

$conn=mysqli_connect($servername,$username,$password,$dbname);

if($conn){

echo"connected with the database";

}
else{
	echo "connection failed";
}




?>