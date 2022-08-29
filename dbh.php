<?php
  $conn = mysqli_connect("localhost","root","","movie2");
  if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
?>