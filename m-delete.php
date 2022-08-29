<?php
include("dbh.php");
error_reporting(0);

$mid= $_GET['mid'];
$query = "DELETE FROM movies where mid ='$mid'";

$data=mysqli_query($conn,$query);
if ($data)
{
  echo "<script>alert('Record Deleted From The Database')</script>";
  ?>
  <META HTTP-EQUIV="refresh" CONTENT ="0; URL= https://localhost/onlinemovie/mdelete.php">
<?php
}
else
{
  echo "<font color='red'>Failed To Delete From The Database";

}
?>