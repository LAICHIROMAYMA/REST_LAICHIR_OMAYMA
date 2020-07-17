<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyMagicBook</title>
<link rel="stylesheet" type="text/css" href="css/style_admin.css">
</head>
<body>
<%@ include file="header_admin.jsp"  %>

<div id="sidemenu">
 <ul>
  <li><a href="Viewbooks.jsp" target="_blank"> View Books</a></li>
    <li><a href="Addbook.jsp" target="_blank"> Add Books</a></li>  
    <li><a href="Viewbooks.jsp" target="_blank"> Delete Books</a></li>
    <li><a href="UpadateBook.jsp" target="_blank"> Update Book</a></li>
    <li><a href="AddCategory.jsp" target="_blank"> Add Category</a></li>
    <li><a href="ViewAllCategory.jsp" target="_blank"> All Category</a></li>
    <li><a href="ViewAllCategory.jsp" target="_blank"> Delete Category</a></li>
    <li><a href="UserView.jsp" target="_blank"> View All Users</a></li>
    <li><a href="UserView.jsp" target="_blank"> Delete User</a></li>
   
	
           <!--<li><a style="color: blue;" href="edition.php">Editer mon profil</a></li>-->
         <li><a style="color: blue;" href="logoutUser">Se déconnecter</a></li>
	
 </ul>	
</div>

 <br><br><br><br><br><br><br> <br><br><br><br> <br><br><br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br><br> <br><br>
<%@ include file="footer.html"  %>

</body>
</html>