<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My magicBook</title>
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
<link rel="stylesheet" href="http://localhost:8080/Book_site/css/bootstrap.min.css">
<script src="http://localhost:8080/Book_site/css/slim.min.js" ></script>
<script src="http://localhost:8080/Book_site/css/bootstrap.min.js"></script>

<style type="text/css">
.col-md-3:hover{
    
    transform:scale(1.1);
    

}
hr{
color:black;}



</style>
</head>
<body>

<%@ include file="Header.jsp"  %>

<%@ include file="aside.html"   %>




<section style="margin-top:65px;padding-left:256px;" >
  <div class="container text-center">
       <div class="row">
          <div class="col-md-3" style=";border:1px solid yellow; box-shadow: -1px 1px 30px 10px #D2B48C inset; ">
              <h1 style="color:orange;">My magicBook</h1></hr >
             <p>My magicBook.ma est g&eacute;r&eacute; par la soci&eacute;t&eacute; de droit marocain M &amp; M Strategy. 193 ave. Hassan II, Casablanca.
                My magicBook.ma vend sur Internet et livre &agrave; domicile sur tout le Maroc depuis D&eacute;cembre 2008.</p>
<p></p>

          </div>
          <div class="col-md-3" style=";border:1px solid yellow; box-shadow: -1px 1px 30px 10px #D2B48C inset;">
               <h1 style="color:orange;"><a>Paiement</a></h1></hr>
               <p>Le paiement se fait par carte bancaire marocaine, quelle que soit la carte ou la banque. Les paiements par ch&egrave;que ou virement sont &eacute;galement possibles.<br />Pour les virements: Compte Attijariwafabank, Casablanca. Compte n&deg;: 007 780&nbsp; 0001265000003525 41
               </p>
               
          </div>
               
               <div class="col-md-3" style=";border:1px solid yellow; box-shadow: -1px 1px 30px 10px #D2B48C inset;">
               <h1 style="color:orange;">Livraison</h1></hr>
               <p>La livraison se fait &agrave; domicile par coursier ou transporteur. Les commandes peuvent &eacute;galement &ecirc;tre retir&eacute;es &agrave; la librairie My magicBook. </p>

          </div>
          <div class="col-md-3 " style=";border:1px solid yellow; box-shadow: -1px 1px 30px 10px #D2B48C inset;">
             <h1 style="color:orange;">Contact</h1></hr>
             <p>Nous trouver:<br /><br />Librairie My magicBook:
                6 rue Kaouakibi, Gauthier, Casablanca. T&eacute;ls: 05  / 05 br /><br />Plan d'Acc&egrave;s:</p>
          </div>
       </div>
  </div>



</section>
<br><br><br><br><br><br><br><br><br><br>
<section>
<%@ include file="footer.html"  %></section>
</body>
</html>