<?php
session_start();

 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>FilmIt</title>
    <link rel="stylesheet"  type="text/css" href="master.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  </head>
  <body>
    <header>
      <div class="container-fluid">
        <nav class="navbar navbar-expand-md navbar-light bg-light">
            <a href="login.php" class="navbar-brand"> <img src="images/logo.png" alt=""> </a>
            <span class="navbar-text">FilmIt</span>

            <ul class="navbar-nav">
              <li class="nav-item"> <a href="#A" class="nav-link"> Services</a> </li>
              <li class="nav-item"> <a href="user-login.php" class="nav-link"> SignIn</a> </li>

            </ul>

        </nav>

        <div class="container">
          <div class="jumbotron">
            <h1>Watch Anywhere, <br> Watch Anytime... </h1> <br>
            <a href="test.php" type="button" class="btn btn-danger btn-block">Sign Up Now</a>
          </div>
        </div>
</div>

      </header>



    <section class="features">
        <a href="#" name="A"></a>
        <h2>Our Services</h2>

        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <p class="arrange"><img src="images/mob.png" alt=""> <br>It is a portal for aspiring filmmakers,editors, cinematographers, mashup artists, and graphic designers to post their creative video content. <br>
              </p>
            </div><div class="col-md-4">
              <p class="arrange"><img src="images/mess.png" alt=""><br> It is contemporarily working to build a more easy-to-navigate web app that can be switched back-and-forth like top online video sites.<br> 
              </p>
            </div>
              <div class="col-md-4">

                <p class="arrange">
                  <img src="images/desktop.jpg"><br> We know how hard it is to train people with books and large amounts of text. We can help you make creative training and educational videos that stick. We’ve had the privilege of working with businesses in multiple industries, from hospital healthcare training videos to professional corporate training videos.

<br>  
                </p>
              </div>

            </div>

          </div>
          <h3></h3>

    </section>
    <footer class="page-footer font-small blue">

      <div class="footer-copyright text-center py-3">© 2018 Copyright:
        <a href="">angelorajesh11@gmail.com</a>
      </div>

    </footer>
  </body>
</html>
