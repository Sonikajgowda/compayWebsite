<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Cum.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
            <a class="navbar-brand" href="Default.aspx"><span>
                        <img src="icons/image.jpg" alt="ProductDetails" height="45" /></span>ProductDetails
                    </a>
                </div>
               <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Default.aspx">Home</a> </li>
                        <li><a href="#">About</a> </li>         
                        <li><a href="#">Services</a> </li>
                        <li><a href="#">Information</a> </li>
                        <li><a href="#">Products</a> </li>
                        <li class ="dropdown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown"><b class ="caret"></b></a>
                            <ul class="dropdown-menu ">
                                <li><a href="Products.aspx">All Products</a></li>
                                <li role="separator" class="divider "></li>
                                <li class="dropdown-header ">Electronics</li>
                                <li role="separator" class="divider "></li>
                                <li><a href="ManShirt.aspx">Mobile</a></li>
                                <li><a href="ManPants.aspx">Laptop</a></li>
                                <li><a href="ManDenims.aspx">TV</a></li>
                                <li role="separator" class="divider "></li>
                                <li class="dropdown-header ">Electronic-Accessories</li>
                                <li role="separator" class="divider "></li>
                                <li><a href="WomanTop.aspx">Headphone</a></li>
                                <li><a href="womanLegging.aspx">Bluetooth</a></li>
                                <li><a href="WomanSarees.aspx">Power-bank</a></li>
                                </ul>
                        </li>
                        <li class ="active"><a href="SignUp.aspx">SignUp</a></li>
                        <li><a href="SignIn.aspx">SignIn</a></li>
                        </ul>
                </div>
           </div>
        </div>
        </div>
        <!---signup start-->
        <div class ="center-page">

            <label class="col-xs-11">UserName:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="textUserName" runat="server" CssClass="form-control" placeholder="Enter Your User Name" ></asp:TextBox>
            </div>


            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="textPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Confirm Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="textConPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your Confirm password"></asp:TextBox>
            </div>

            <label class="col-xs-11">Your Full Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="textName" runat="server"  Class="form-control" placeholder="Enter Your Full Name"></asp:TextBox>
            </div>

            <label class="col-xs-11">Email:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="textEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
            </div>

            <label class="col-xs-11"></label>
            <div class="col-xs-11">
                <asp:Button ID="textSignUp" runat="server" Class="btn btn-success" Text="SignUp" OnClick="ButtonSignUp_Click" />
                <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
            </div>


            </div>
        <!---signup end--->
        <!---footer start--->
        <hr />
        <footer class="footer-page">
            <div class ="container ">
               
                <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p>&copy;2022 mindtree &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Career Opportunities</a>&middot; <a href ="#">Contact</a>&middot </p>
            </div>

        </footer>

        <!---footer end--->
    </form>
</body>
</html>
