<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Rent_a_car_website.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
      <link href="scripts/css/bootstrap.css" rel="stylesheet" />

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

       
        </div>
      </nav>



<div class="row centered-form">
    <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                    <h3 class="panel-title">Please sign up for Car Rent <small>It's free!</small></h3>
                     </div>
                     <div class="panel-body">
                    <form role="form"  runat="server">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                        <input runat="server" type="text" name="first_name" id="first_name" class="form-control input-sm" required placeholder="First Name"/>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input runat="server" type="text" name="last_name" id="last_name" class="form-control input-sm" required placeholder="Last Name"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <input runat="server" type="email" name="email" id="email" class="form-control input-sm" required placeholder="Email Address"/>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input runat="server" type="password" name="password" id="password" class="form-control input-sm" required placeholder="Password"/>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input runat="server" type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" required placeholder="Confirm Password"/>
                                </div>
                            </div>
                        </div>
                        
                       
                        <asp:Button class="btn btn-info btn-block" ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>

    
    <script src="scripts/js/jquery.js"></script>

    <script src="scripts/js/bootstrap.js"></script>

</body>
</html>
