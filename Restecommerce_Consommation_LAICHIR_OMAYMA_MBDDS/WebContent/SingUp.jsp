<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My magicBook</title>
<link rel="stylesheet" type="text/css" href="css/conexion.css">
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
<link rel="stylesheet" href="http://localhost:3306/Book_site/css/bootstrap.min.css">
<script src="http://localhost:3306/Book_site/css/slim.min.js" ></script>
<script src="http://localhost:3306/Book_site/css/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="Header.jsp"  %>
<br><br><br><br>
<%@ include file="aside.html" %>
<br><br>
<section>
      <div style="border-radius: 20px/10px;box-shadow: 2px 1px 0px gold outset;margin-top: -87px;padding-left: 2px;margin-left: 10px;padding-right: 2px;margin-right: 43px;margin-bottom: ‒34px;width:430px;" >
   
      <div style="border-radius: 20px/10px;box-shadow: 2px 1px 0px gold outset;margin-top:-90px;padding-left: 2px;margin-left: 324px;padding-right: 2px;height: 451px;width: 397px; " class="container" >
         <h2><img src="img/gus.png" style="width:68px;height:100px;">Singing Up</h2>
          <hr>
      <form  action="./DefineUser" method="post">
               <div class="form-input">
              
             <div class="envelope">
             <label id="icon" for="name"><i class="fa fa-envelope-o-"></i></label>
            <input type="email" name="mailconnect" placeholder="E-Mail" style=" width: 360px;
    padding-left: 20px;
    border-right-width: 10px;
    padding-right: 2px;"/>
            </div>
          
            <div class="aa">
              
              <label id="icon" for="nom"><i class="fa fa-unlock"></i></label>

             <input type="password" name="mdpconnect" placeholder="Mot de passe"style=" width: 360px;
    padding-left: 20px;
    border-right-width: 10px;
    padding-right: 2px;" />
           </div>
           
          <div class="form-input">
            
         <input class="insc" type="submit" name="forminscription" value="Connect !" />
          </div>
          <br>
          <a href="SingIn.jsp"> Sing IN?</a> 
          </div>
      </form> 
    </div>
</div>
</section>
<br><br><br><br><br><br>
<%@ include file="footer.html" %>
</body>
</html>