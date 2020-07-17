<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>My magicBook</title>
<link rel="stylesheet" type="text/css" href="css/inscr.css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,500' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    
<link rel="stylesheet" type="text/css" href="css/N.css">
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
<link rel="stylesheet" href="http://localhost:/Book_site/css/bootstrap.min.css">
<script src="http://localhost:3306/Book_site/css/slim.min.js" ></script>
<script src="http://localhost:3306/Book_site/css/bootstrap.min.js"></script>
  <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
  <link rel="shortcut icon" href="favicon.ico">

  <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
  
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
</head>
<body>
<%@ include file="Header.jsp"  %>
<br><br>
<%@ include file="aside.html"  %>
<section>
 
  <div>
  
    
      <div  style="border-radius: 20px/10px;box-shadow: 2px 1px 0px gold outset;margin-top:-90px;padding-left: 2px;margin-left: 324px;padding-right: 2px;" class="container" >
      <h1 ><img src="img/user.png" style="width:100px;height:100px;"> <b>Singing In</b></h1>
            <hr>
            <form action="AddUser" method="post" >
   <div class="t2" >
                  <label><i class="fa fa-user"></i><input style="height: 35px;" type="text" placeholder="Votre nom et prénom" id="nom" name="nom"  /></label>
                </div>

                  <div class="t2">
                   <label> <i class="fa fa-envelope-o"></i><input style="height: 35px;" type="email" placeholder="Votre mail" id="mail" name="mail"  />
                      </label></div> 
                  
                  <div class="t2">
                    <label><i class="fa fa-key" ></i><input style="height: 35px;" type="password" placeholder="Votre mot de passe" id="mdp" name="mdp" /></label>
                      </div>
                     
                     
                 
                     <br >
                  <div style="border:5px 3px 3px 3px green;"><h2>Clients enregistrés</h2>
                    <p>Si vous avez déjà un compte, veuillez vous identifier.</p><a href="SingUp.jsp" style="text-decoration:none;">client enregistré ?</a></div>
               </form>
        </div>
 </div>
 </section>
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <section >
 <%@ include file="footer.html"  %>
 </section>
</body>
</html>