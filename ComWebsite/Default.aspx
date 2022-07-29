<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products details</title>
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
                        <li class="active"><a href="Default.aspx">Home</a> </li>
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
                        <li><a href="SignIn.aspx">SignIn</a></li>
                        </ul>
                </div>
           </div>
        </div>
            <!---image start---->
            <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="image-2/Mobile.jpg" alt="Los Angeles" style="width:100%; height:250px"/>
          <div class="carousel-caption">
          <h3>Slim Mobiles</h3>
              </div>
      </div>

      <div class="item">
        <img src="image-2/laptop.jpg" alt="Chicago" style="width:100%; height:250px"/>
          <div class="carousel-caption">
          <h3>Brand Laptop</h3>
              </div>
      </div>
    
      <div class="item">
        <img src="image-2/headphone.jpg" alt="New york" style="width:100%; height:250px"/>
          <div class="carousel-caption">
          <h3>High Sound</h3>
              </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

            <!---image End---->

        </div>
        <!---Middle start---->
         <hr />
        <div class="container center ">
   
        <div class="row ">
            <div class="col-lg-4">
                <img class="img-circle " src="image-3/Mobile.jpg" alt="thumb" width="120" height="120" />
                <h2>
                    Mobiles</h2>
                <p>
                    Performance-Octa core (2.2 GHz, Dual Core + 1.7 GHz, Hexa Core), Snapdragon 695,6 GB RAM, Display-6.59 inches (16.74 cm),
                    Camera-64 MP + 2 MP + 2 MP Triple Primary Cameras, Battery-5000 mAh,USB Type-C Port
                    </p>
                <p>
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="image-3/Laptop.jpg" alt="thumb" width="140" height="140" />
                <h2>
                    Laptop</h2>
                <p>
                    Dell XPS 13 OLED (2021) The best overall laptop you can buy. ...
                    Apple MacBook Pro (13-inch, M2) The best MacBook on the market. ...
                    Acer Swift 3 (Late 2021) Best cheap laptop. ...</p>
                <p>
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle " src="image-3/Headphone.jpg" alt="thumb" width="140" height="140" />
                <h2>
                    Headphones</h2>
                <p>
                    Charge for 10 minutes, enjoy for 10 hours,
                    Type-C Bullets earphones as “others”. 
                    This does not affect the operation of the earphones</p>
                <p>
                    <a class="btn btn-default " href="#" role="button">View More &raquo;</a></p>
            </div>
        </div>
 </div>
        <!---Middle end---->

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
