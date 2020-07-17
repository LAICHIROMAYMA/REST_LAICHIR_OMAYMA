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
<br><br><br><br><br>
<section class="contact" >
    <div class="container" style=" border-radius: 20px/10px; box-shadow: 2px 1px 0px gold outset;margin-top:43px;height:120px;margin-left:425px; ">
        <h3 class="title-txt" style="margin-left:333px;"><span style="color:orange;">A</span>dd Category</h3>
        <hr/ style="width:557px;">
        <div class="contact-grids" style="width:1720px; height:720px; margin-left:240px;">
            <div class=" col-md-5 contact-form">
           <form action='AddCategory' method='post'> <table>
	   
		<tr><td>Category Type:</td><td><input type='text' name='type' /></td></tr>
		<br><br>
		<tr><td><input type='submit'  value ='Add Category' name='add'/><td/>
		<td><input type='reset' value='Annuler' name='add'/></td></tr>
		</table>
		
	</form>
       </div>
      </div>
      </div>
 </section>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.html"  %>
</body>
</html>