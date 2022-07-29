<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
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
                        <li><a href="SignUp.aspx">SignUp</a></li>
                        <li  class="active"><a href="SignIn.aspx">SignIn</a></li>
                        </ul>
                </div>
           </div>
        </div>
      </div>

        <br />
        <br />
        <br />
        <!---SignIn Start--->
        <div class ="container ">
            <div class ="form-horizontal ">
                <h3>Login Form</h3>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="UserName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="textUserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="Please Enter Username" ControlToValidate="textUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Password"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="textPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass ="text-danger " runat="server" ErrorMessage="Please Enter Valid Password" ControlToValidate="textPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass =" control-label " runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>
                
              <%--  for forgot password--%>
                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                       
                    </div>
                </div>



                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Label ID="lblError" CssClass=" text-danger" runat="server"></asp:Label>
                    </div>
                </div>


            </div>


        </div>
        <!---SigIn End---->
           <!---footer start--->
        <hr />
        <footer>
            <div class ="container ">
               
                <p class ="pull-right "><a href ="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class ="pull-right "><a href="AdminHome.aspx"> Admin Login  </a></p>  
                <p>&copy;2022 Mindtree.in &middot; <a href ="Default.aspx">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Career Opportunities</a>&middot; <a href ="#">Contact</a>&middot </p>
            </div>

        </footer>

        <!---footer end--->
    </form>
</body>
</html>
