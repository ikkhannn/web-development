<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="Rent_a_car_website.ViewUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
      <link href="scripts/css/bootstrap.css" rel="stylesheet" />

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


      <div class="container">
        <h2>Registered Users</h2>
        <p>Following is the list of registered users:</p>            
        
          <form runat="server">



              <asp:GridView ID="GridView1" Width="600" runat="server">




              </asp:GridView>
              <asp:Button class="btn btn-lg btn-success" ID="Button1" runat="server" Text="View Users" OnClick="Button1_Click" />
          </form>


      </div>


     
     



    <script src="scripts/js/jquery.js"></script>

    <script src="scripts/js/bootstrap.js"></script>
  
</body>
</html>
