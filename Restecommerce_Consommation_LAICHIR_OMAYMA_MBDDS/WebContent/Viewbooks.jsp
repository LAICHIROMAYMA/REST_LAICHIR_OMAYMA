<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     
     <%@ include file="header_admin.jsp"  %>
     <% 
Client client = ClientBuilder.newClient();
WebTarget target = client.target("http://localhost:8080/Rest_ProjetEcommerce_Service/rest/BookService/getAllBooks");
List<Book> b = target.request(MediaType.APPLICATION_JSON).get(Response.class).readEntity(new GenericType<List<Book>>(){});
%>
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
         <li><a style="color: blue;" href="logout">Se déconnecter</a></li>
	
 </ul>	
</div>
   <br><br><br><br><br><br><br><br><br><br>
     
 <section class="single-product">
<% int i = 0;
while (i<b.size()){ %>
     <div class="contain" style="margin-left:130px;">
      <div class="row">
          <div class="col-md-5">
          <div id="product-slider" class="carousel slide carousel-fade" data-ride="carousel">
     
   <a href="Books.jsp?id=<%= b.get(i).getBook_id() %>"><img src="img/<%=b.get(i).getBook_image() %>" class="d-block w-100" style="height:450px;"></a>
 </div>
         </div>
        
        <div class="col-md-6">
      
     <h2> <%= b.get(i).getBook_name() %></h2>
              <p><%=b.get(i).getAutor_name()%></p>
                       <p class="price"><%=b.get(i).getBook_price() %></p>
                       <p ><b >Availibility :  </b><%= b.get(i).getBooks_availibility()%></p>
                       
                      <p > <b >Quantity :  </b> <%=b.get(i).getBook_Quantity()%></p>
                      <p><%=b.get(i).getBook_price()%><b>DH</b></p>
                      <p><%=b.get(i).getBook_Summary()%></p>
                      <a href="UpdateBook.jsp?id_book=<%=b.get(i).getBook_id()%>" style="color:#93c83f;">Update Book</a>
                     <a  href="DeleteBook?id_book=<%=b.get(i).getBook_id()%>" style="margin-left:20px;">Delete Book</a>
                      
                        
        </div>
        
          </div> 
          </div>
          <br><br>
        
        <%i++;} %>
</section>
<br><br><br><br><br><br>
<%@ include file="footer.html"  %>
</body>
</html>