<?php 
  $conn = mysqli_connect('localhost', 'root', '', 'goonj1');
  if(mysqli_connect_errno()){
    echo 'Failed to connect to bradphpblog '. mysqli_connect_errno();
  }