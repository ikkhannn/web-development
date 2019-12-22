<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Rent_a_car_website.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 

      <link href="scripts/css/bootstrap.css" rel="stylesheet" />
    <title></title>
       <style>
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    .jumbotron{

    
    /*  OR Image in the center top of the container */
    background-position: center top;

        
        background-image: url("images/erh.jpg");
    }
</style>
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#">Rent a car</a>
          </div>
          <ul class="nav navbar-nav">
            <li><a href="Home.aspx">Home</a></li>
            <li><a href="AddCars.aspx">Add cars</a></li>
            <li><a href="ViewCars.aspx">View cars</a></li>
            <li><a href="ViewUsers.aspx">View Users</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">

            <li><a href="Signup.aspx">Signup</a></li>
          </ul>
        </div>
      </nav>

<div class="row">
    <form runat="server">
    <div class="col-lg-12">

    <img src="scripts/images/erh.jpg" class="img-responsive" alt="test"> 
    <div class="carousel-caption">
        <h1>Want to rent a car?</h1>
        <button class="btn btn-lg btn-success">Rent a car !</button>
       
      </div>
      </div>
</form>
</div>
    
     
     


    <script src="scripts/js/jquery.js"></script>

    <script src="scripts/js/bootstrap.js"></script>
</body>

</html>
