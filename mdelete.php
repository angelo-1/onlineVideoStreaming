<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Movie</title>
  <link rel="stylesheet" href="user.css" type="text/css">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>

  <header>

<div class="container-fluid">

       <nav class="navbar navbar-expand-md navbar-light" style="background-color: #e3f2fd;">
           <a href="homepage.php" class="navbar-brand"> <img src="images/logo.png" alt=""> </a>
           <span class="navbar-text">FilmIt</span>

           <ul class="navbar-nav">
             <li class="nav-item"> <a href="homepage.php" class="nav-link"> Home </a> </li>
             <li class="nav-item"> <a href="logout.php" class="nav-link"> Logout</a> </li>

           </ul>

       </nav>

       <div class="container-xxl">
       
        <div class="jumbotr">
            <div class="card bg-white text-dark">
            <div class="table-responsive">              
<table class="table table-bordered">
 <thead>
    <tr>
      <th scope="col">mid</th>
      <th scope="col">Name</th>
      <th scope="col">Genre</th>
      <th scope="col">Release Date</th>
      <th scope="col">Run Time</th>
      <th scope="col">Discription</th>
      <th scope="col">Views</th>
      <th scope="col">Image</th>
      <th scope="col">Video</th>
      <th scope="col">Delete</th>
    </tr>
 
    </thead>
    <tbody>

    </tbody>
    <tfoot>

    </tfoot>
</div>
</div>
</div>
</div>

<?php

include("dbh.php");
error_reporting(0);
$query = "SELECT * FROM movies";
$data = mysqli_query($conn,$query);
$total = mysqli_num_rows($data);

if($total!=0)
{
  
  while($result=mysqli_fetch_assoc($data))
  {
echo "
<tr>
<td>".$result['mid']."</td>
<td>".$result['mname']."</td>
<td>".$result['genre']."</td>
<td>".$result['rdate']."</td>
<td>".$result['runtime']."</td>
<td>".$result['decription']."</td>
<td>".$result['viewers']."</td>
<td>".$result['imgpath']."</td>
<td>".$result['videopath']."</td>
<td> <a href = 'm-delete.php?mid=$result[mid]' onclick='return checkdelete()'> Delete <a></td>
</tr>
";
  }
 

}
else
{
  echo "No records found";
}
?>

</table>
<script>
   function checkdelete()
   {
    return confirm('Are You Sure You Want To Delete This Record');
   }
 </script>
</div>
</header>

<div class="bottom">
<footer class="page-footer font-small blue">

   <div class="footer-copyright text-center py-3">© 2021 Copyright:
     <a href="">angelorajesh11@gmail.com</a>
   </div>

 </footer>
 </div>
 
</body>
</html>