<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="Rent_a_car_website.AddCars" %>

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

        .jumbotron {
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



    <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Add car </h3>
                </div>
                <div class="panel-body">
                    <form role="form" runat="server">
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input runat="server" required type="text" name="Title" id="Title" class="form-control input-sm" placeholder="Title"/>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input runat="server" type="text" required name="Carname" id="Carname" class="form-control input-sm" placeholder="Car name"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <input runat="server" type="text" required name="model" id="model" class="form-control input-sm" placeholder="Model"/>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input runat="server" type="text" required name="Year" id="Year" class="form-control input-sm" placeholder="Year"/>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <select runat="server" name="city" id="city" title="Pick a number" class="form-control">
                                        <option>Select...</option>
                                        <option>Karachi</option>
                                        <option>Lahore</option>
                                        <option>islamabad</option>
                                    </select>

                                    
                                </div>
                            </div>
                        </div>

                        
                        <asp:Button ID="AddCar" class="btn btn-info btn-block" runat="server" Text="Add car" OnClick="AddCar_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>  
    <script src="scripts/js/jquery.js"></script>
   
    <script src="scripts/js/bootstrap.js"></script>

</body>

</html>
