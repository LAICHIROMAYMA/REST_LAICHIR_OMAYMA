<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>View All Category</title>
</head>
<body>
<%@ include file="header_admin.jsp"  %>
<% 
Client client = ClientBuilder.newClient();
WebTarget target = client.target("http://localhost:8080/Rest_ProjectEcommerce_Service/rest/Categories/GetAllCategories");
List<Category> c = target.request(MediaType.APPLICATION_JSON).get(Response.class).readEntity(new GenericType<List<Category>>(){});
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
<br><br><br><br><br>


<div class="w3-agile-services" style="margin-top:70px;">
    <div class="container">
        <h3 class="title-txt">Category</h3>
        
            <div class="services-right-grids">
           <% for(int i=0;i<c.size();i++) {%>
                
                    <div class="se-top" style="height:340px; width:350px">
                        <div class="services-icon">
                            
                        </div>
                        <div class="services-icon-info">
                            <h5><a href="all.html"><%=c.get(i).getId_category() %></a></h5>
                            <p><%=c.get(i).getType() %></p>
                        </div>
                    </div>
                    <div class="team-info" style="width:350px">
                            <div class="w3ls-social-icons">
                                <a class="facebook" href="DeleteCategory?id_category=<%=c.get(i).getId_category() %>"><span class="fa fa-trash"></span></a>
                            </div>
                    
                </div>
               <%} %>
                
                <div class="clearfix"> </div>
            </div>

        </div>
    </div>


<%@ include file="footer.html" %>

</body>
</html>