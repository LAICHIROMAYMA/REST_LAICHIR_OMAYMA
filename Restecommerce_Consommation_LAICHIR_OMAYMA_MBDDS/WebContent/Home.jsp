<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My magicBook</title>
<link rel="stylesheet" type="text/css" href="css/N.css">
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
<link rel="stylesheet" href="http://localhost:8080/Book_site/css/bootstrap.min.css">
<script src="http://localhost:8080/Book_site/css/slim.min.js" ></script>
<script src="http://localhost:8080/Book_site/css/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="Header.jsp"  %>

<section class="header">
            <div class="side-menu" id="side-menu">
                 <ul>
                     <li style="margin-left:-30px;">Categories<i class="fa fa-angle-double-right"></i>
                        <ul style="height:435px;margin-right:123px; margin-left:240px;margin-top:-60px;">
                          <li ><a href="ViewAllbook.jsp">All categories</a></li>
                           <li ><a href="ViewAllbook.jsp" >Romance</a></li>
                           <li><a href="ViewAllbook.jsp" >Action</a></li>
                           <li><a href="ViewAllbook.jsp">Art</a></li>
                           <li><a href="ViewAllbook.jsp">fantastique</a></li>
                            <li><a href="ViewAllbook.jsp">philosophy</a></li>
                          </ul>
                     </li>
                     
                    <li style="margin-left:-30px;">Connexion<i class="fa fa-angle-double-right" ></i>
                     <ul class="con" style="height:145px; margin-top:20px; margin-left:240px;">
                           <li ><a href="SingIn.jsp">Sing In</a></li>
                           <li><a href="SingUp.jsp">Sing Up</a></li>
                           </ul>
                     </li>
                     <li style="margin-left:-30px;"><a href="Contact.jsp">Contact </a>
                    </li>
                     <li  style="margin-left: -30px;"><a href="about.jsp">About </a></li>
                 </ul>
            </div>
           <div class="slider">
           
           <div id="slider" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/Fairy.png" class="d-block w-100" style="height:500px;" >
    </div>
    <div class="carousel-item">
      <img src="img/img1.jpg" class="d-block w-100" style="height:500px;" >
    </div>
    <div class="carousel-item">
      <img src="img/Fairy.png" class="d-block w-100" style="height:500px;" >
    </div>
  </div>
 <ol class="carousel-indicators">
    <li data-target="#slider" data-slide-to="0" class="active"></li>
    <li data-target="#slider" data-slide-to="1"></li>
    <li data-target="#slider" data-slide-to="2"></li>
  </ol>
</div>
        
           
           </div>
  
     </section>
     
     <!-- ----------On sale product----------->
     <div class="on-sale">
             <div class="container">
             <div class="title-box">
                 <h2>On Sale</h2>
             </div>
             
             <div class="row">
                <div class="col-md-3">
                <div class="product-top">
                   <img src="img/laboite.jpg">
                    <div class="overlay-right">
                        <button type="button" class="btn btn-secondary" title="Quick shop"> 
                          <a href="rom.jsp"> <i class="fa fa-eye"></i></a>
                        </button>
                        
                        <button type="button" class="btn btn-secondary" title="Add to wishlist"> 
                           <i class="fa fa-heart-o"></i>
                        </button>
                        
                        <button type="button" class="btn btn-secondary" title="Add to cart"> 
                           <a href="Cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                        </button>
                    </div>
                </div>
                      
                      <div class="product-bottom tewt-center">
                           <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                                   <h3>Boite a merveille</h3>
                                   <h5>40.00 dh</h5>
                      </div>
                      
                </div>
                </div>
                
             </div>
     
     
     </div>

<br>
<%@ include file="footer.html"  %>

</body>
</html>>