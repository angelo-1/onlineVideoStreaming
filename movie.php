<?php
session_start();
if (isset($_POST['submit'])) {

  $title = $_POST['submit'];

  include 'dbh.php';
  $im = "SELECT * FROM movies WHERE mname = '$title'" ;

  $records = mysqli_query($conn,$im);

  echo"<!DOCTYPE html>";
  echo"<html lang='en' dir='ltr'>";
    echo"<head>";
      echo"<meta charset='utf-8'>";
      echo"<title>".$title."</title>";
      echo"<link rel='stylesheet' href='movie.css'>";
      echo"<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css' integrity='sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO' crossorigin='anonymous'>";
    echo"</head>";
    echo"<body>";

        echo"<div class='jumbotron-fluid'>";
        echo"<div class='container'>";
        while($result = mysqli_fetch_assoc($records)){
            $mname = $result['mname'];
            $person = $_SESSION['id'];
            $movieid = $result['mid'];
            $current = $result['viewers'];
            $newcount = $current + 1;
            $newsql = "UPDATE movies SET viewers = '$newcount' WHERE mname='$mname' ";
            $nsql = "UPDATE user1 SET mid = '$movieid'";
            $updatecount = mysqli_query($conn,$newsql);
            $updatecount = mysqli_query($conn,$nsql);

            $url ="video-uploads/".$result['videopath'];

            echo"<br>";
            echo"<a href='homepage.php' style='font-size: 20px;color:orange;border:1px solid orange;border-radius:5px;padding:10px;text-decoration:none;'>Back to Home </a>";
          echo "<br><br><h5 style='display: inline;'><br>Movie Name : </h5><h1 style='display: inline;'>".ucwords($result['mname'])."</h1>";
          echo"<br><h5 style='display: inline;' >Genre : </h5><h4 style='display: inline;'>".ucwords($result['genre'])."</h4>";
          echo"<br><h5 style='display: inline;' >Release Year : </h5><h4 style='display: inline;'>".$result['rdate']."</h4>";
          echo"<br><h5 style='display: inline;' >Description : </h5><h4 style='display: inline;'>".ucfirst($result['decription'])."</h4>";
          echo"<br><h5 style='display: inline;' >Runtime : </h5><h4 style='display: inline;'>".$result['runtime']." mins </h4>";
          echo"<br><h5 style='display: inline;' >Views : </h5><h4 style='display: inline;'>".$result['viewers']."</h4>";

          echo"<br><br><br>";
          echo"<div class='embed-responsive embed-responsive-16by9'>";   
          echo '<video controls="controls" class="embed-responsive-item">
          <source src="'.$url.'" type="video/mp4"> 
          Your browser does not support the HTML5 Video element.
          </video>
          '; 
          echo"</div>";

        }
        echo"</div>";
        echo"</div>";

    echo"</body>";


  echo"</html>";


}
?>