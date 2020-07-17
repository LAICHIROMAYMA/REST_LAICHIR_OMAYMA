<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
    <%@page import="java.sql.SQLException"%>
<%@page import="Beans.Category"%>
<%@page import="Beans.Book"%>
<%@page import="javax.ws.rs.client.Client"%>
<%@page import="java.util.List"%>
<%@page import="javax.ws.rs.client.ClientBuilder"%>
<%@page import="javax.ws.rs.client.WebTarget" %>
<%@page import="javax.ws.rs.core.MediaType" %>
<%@page import="javax.ws.rs.core.Response" %>
<%@page import="javax.ws.rs.core.GenericType" %>
<!DOCTYPE html>
<html>
<head>
<title>Update Book</title>
<link rel="stylesheet" type="text/css" href="css/inscr.css">
<link rel="stylesheet" type="text/css" href="css/style_admin.css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,500' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    
<link rel="stylesheet" type="text/css" href="css/N.css">
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
<link rel="stylesheet" href="http://localhost:3306/Book_site/css/bootstrap.min.css">
<script src="http://localhost:3306/Book_site/css/slim.min.js" ></script>
<script src="http://localhost:3306/Book_site/css/bootstrap.min.js"></script>
  <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
  <link rel="shortcut icon" href="favicon.ico">

  <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
  
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
</head>
<body>
<%@ include file="header_admin.jsp"  %>
<div id="header">
<center><img src="img/user.png"  alt>
<h3 style="color: orange;">Admin Panel<b></b> </h3></center>
</div>

<!--  -->
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
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<% 
Client client = ClientBuilder.newClient();
WebTarget target1 = client.target("http://localhost:8080/Rest_ProjectEcommerce_Service/rest/Categories/GetAllCategories");
WebTarget target2 = client.target("http://localhost:8080/Rest_ProjectEcommerce_Service/rest/BookService/getBook");
List<Category> c = target1.request(MediaType.APPLICATION_JSON).get(Response.class).readEntity(new GenericType<List<Category>>(){});
Book b=new Book();
int id_book=Integer.parseInt(request.getParameter("id_book"));
b=target2.path("/"+ id_book).request(MediaType.APPLICATION_JSON).get(Book.class);
%>
<section>

  <div style="background-color:orange;border-style:dotted;box-shadow: -1px 1px 3px 1px orange ridge;height: 650px;width: 552px;margin-left: 310px;margin-top: -45px;padding-top:0px;padding-left: 10px;padding-right: 10px;padding-bottom: 0px;" >
  
     
      <div  style=" border-radius: 20px/10px; box-shadow: 2px 1px 0px gold outset;margin-top:-54px;height:700px; " class="container" >
      <h1 style="color:orange; font-size: 25px; "><img src="img/bo.png" style="width:150px;height:85px;"> <b>Add Book</b></h1>
            <hr>
            <form method="post" action="UpdateBook?id_book=<%=b.getBook_id()%>">
            <label></label><input type="file" placeholder="Image" name="image"  value="img/<%= b.getBook_image()  %>" />
      <div class="t2" >
                  <label><input style="height: 35px;" type="text" placeholder="Book's Writer" id="nom" name="writer" value="<%= b.getAutor_name() %>"  required /></label>
                </div>

                  <div class="t2">
                   <label> <input style="height: 35px;" type="text" placeholder="Book's name" id="mail" name="title" value="<%= b.getBook_name() %>"  required />
                      </label></div> 
                 
                  <div class="t2">
                  <label style="font-family:verdana, geneva, Arial ,sans-serif;font-size:16px;color:red;letter-spacing:1em;">Type</label> 
                     
                     <select name="type" style="height: 35px;height: 30px;width: 150px; " type="text"  id="mail" >
	                       <%for(int i=0; i<c.size();i++){ %>
	                       <option value="<%=c.get(i).getId_category()%>"><%= c.get(i).getType() %></option>
	                       <% } %>
	            
	                 </select>
                    </div>
                  
                  <div class="t2">
                     <label><input style="height: 35px;" type="number" placeholder=" Book's Price" id="mdp2" name="price" value="<%=b.getBook_price() %> %>" required /></label></div>
                  <div class="t2">
                    <label><input style="height: 35px;" type="number" placeholder="Quantity " id="mdp" name="quantity" value="<%= b.getBook_Quantity() %>" required/></label>
                      </div>
                 
                  
                     
                     <div class="t2">
                  <label style="font-family:verdana, geneva, Arial ,sans-serif;font-size:12px;color:red;letter-spacing:1em;">Availibility</label> 
                     
                     <select name="avail" style="height: 35px;height: 30px;width: 150px; " type="text"  id="mail" name="avail">
	                       <option>All </option>
	                       <option>In stock</option>
	                       <option>Out of stock</option>
	                       
	                 </select>
                    </div>
                     
                     <div class="t2">
                    <textarea style="margin-top: 10px;width: 400px;font-size: 20px;background:rgba(2,1,1,0.5);background-color: #fff;padding-left: 4px;" type="text" placeholder="book's description " id="mdp" rows="5" required name="description" placeholder="Description or Summary/Resume"  ><%= b.getBook_Summary() %></textarea>
                      </div>
                 
                     <br >
                  <input class="insc" type="submit" name="forminscription" value="Add" /><i class=""></i>
                  <input type="submit" value="Confirm Update Book" >
                  <a href="AddBook.jsp" style="color:red;font-size:15px;font-family:Zapf;" class="add">add another book?</a>
                  
               </form>
        </div>
 </div>
 </section>

<br><br><br><br> <br><br><br><br><br><br><br> 
<%@ include file="footer.html"  %>
</body>
</html>