<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Beans.Book"%>
    <%@page import="Beans.Category"%>
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
<title>My MagicBook</title>
</head>
<body>
     
     <%@ include file="Header.jsp"  %>
   <br><br><br><br><br>
     <%@ include file="aside.html"  %>
     <% 
Client client = ClientBuilder.newClient();
     WebTarget target = client.target("http://localhost:8080/Rest_ProjectEcommerce_Service/rest/BookService/getAllBooks");
     WebTarget target2 = client.target("http://localhost:8080/Rest_ProjectEcommerce_Service/rest/Categories/GetAllCategories");
     List<Category> c = target2.request(MediaType.APPLICATION_JSON).get(Response.class).readEntity(new GenericType<List<Category>>(){});
     List<Book> b = target.request(MediaType.APPLICATION_JSON).get(Response.class).readEntity(new GenericType<List<Book>>(){});
%>

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
                     
                     <a  href="AddCart?iduser=<%=b.get(i).getBook_id()%>">Add To Cart</a>
                      
                        
        </div>
        
          </div> 
          </div>
          <br><br>
        
        <%i++;} %>
</section>
<br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.html"  %>
</body>
</html>