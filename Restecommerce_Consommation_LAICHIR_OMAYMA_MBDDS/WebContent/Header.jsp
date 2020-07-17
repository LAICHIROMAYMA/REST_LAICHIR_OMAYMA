<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<title>My magicBook</title>
<link rel="stylesheet" type="text/css" href="css/N.css">
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
<link rel="stylesheet" href="http://localhost:3306/Book_site/css/bootstrap.min.css">
<script src="http://localhost:3306/Book_site/css/slim.min.js" ></script>
<script src="http://localhost:3306/Book_site/css/bootstrap.min.js"></script>
</head>
<body>

    <%   HttpSession ses =request.getSession();
    String nom=(String)ses.getAttribute("nom");
    if(nom!=null){
    	%>
    <div  class="top-nav-bar">
     <div class="search-box">
     <i class="fa fa-bars" id="menu-btn" onclick="openmenu()"></i>
     <i class="fa fa-times" id="close-btn" onclick="closemenu()"></i>
        <a href="Acceuil.jsp"><img src="img/magic.PNG" class="logo"></a>
        
        <input type="text"class="form-control"  style="height:35px;margin-top:10px;">
        <span class="input-group-text"><i class="fa fa-search"></i> </span>
     
     </div>
     
     <div class="menu-bar">
     <ul>
        <li><a href="Acceuil.jsp" style="padding-left: 14;padding-right: 14;"><i class="fa fa-home"></i>Home</a>
              </li>
         <li><a href="Cart.jsp" style="padding-left: 14;padding-right: 14;"><i class="fa fa-shopping-basket" ></i>Cart</a></li>
          
         <li ><a ><%=nom %> </a></li>  
         <li><a href="LogoutUser" style="padding-left: 14;padding-right: 14;">Sing out </a></li>  
     </ul> 
     </div>
     </div>
     
     <script>
    function openmenu(){
    	document.getElementById("side-menu").style.display="block";
    	document.getElementById("menu-btn").style.display="none";
    	document.getElementById("close-btn").style.display="block";
    }

    function closemenu(){
    	document.getElementById("side-menu").style.display="none";
    	document.getElementById("menu-btn").style.display="block";
    	document.getElementById("close-btn").style.display="none";
    }


</script>
<%} else {%>
   <div  class="top-nav-bar">
     <div class="search-box">
     <i class="fa fa-bars" id="menu-btn" onclick="openmenu()"></i>
     <i class="fa fa-times" id="close-btn" onclick="closemenu()"></i>
        <a href="Acceuil.jsp"><img src="img/magic.PNG" class="logo"></a>
        
        <input type="text"class="form-control"  style="height:35px;margin-top:10px;">
        <span class="input-group-text"><i class="fa fa-search"></i> </span>
     
     </div>
     
     <div class="menu-bar">
     <ul>
        <li ><a href="Acceuil.jsp"><i class="fa fa-home"></i>Home</a>
              </li>
          <li ><a href="Cart.jsp"><i class="fa fa-shopping-basket" ></i>Cart</a></li> 
         <li ><a href="SingIn.jsp">Sing in </a></li>  
     </ul> 
     </div>
     </div>
     
     <script>
    function openmenu(){
    	document.getElementById("side-menu").style.display="block";
    	document.getElementById("menu-btn").style.display="none";
    	document.getElementById("close-btn").style.display="block";
    }

    function closemenu(){
    	document.getElementById("side-menu").style.display="none";
    	document.getElementById("menu-btn").style.display="block";
    	document.getElementById("close-btn").style.display="none";
    }


</script>

<%} %>
</body>
</html>

