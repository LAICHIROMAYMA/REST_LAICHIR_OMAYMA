<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Beans.Book"%>
<%@page import="Beans.Cart"%>
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
<title>Cart</title>
</head>
<body>
<%@ include file="Header.jsp"  %>
<%@ include file="aside.html"  %>
<%
double tot=0;
int id_user =(int)ses.getAttribute("iduser");
Client client = ClientBuilder.newClient();
WebTarget target = client.target("http://localhost:8080/Rest_ProjetEcommerce_Service/rest/CartService");
List<Cart> c = target.path("/getCartByUser/"+ id_user).request(MediaType.APPLICATION_JSON).get(Response.class).readEntity(new GenericType<List<Cart>>(){});
 
%>
   <% if(nom==null) { 
	   response.sendRedirect("SingIn.jsp");
	   
   %>
   <%}else{ %>
  <section style="margin-left:310px;">
  <a href="ViewAllbook.jsp" id="cont" style="margin-left:320px;"> Continue Shopping</a>
  <br><br>
  <table>
  <tr style="margin-left:310px;" ><td style="width: 100px;margin-left:350px;padding-left: 35px;color:orange; "><h2>Cart</h2></td><td  style="margin-left: 35px;width: 71px;margin-left: 500px;padding-left: 90px;color:orange;font-size:20px;" ><h2>Book </h2></td>
  <td style="border-left-width: 35px;width: 73px;border-right-width: 35px;padding-left: 50;color:orange;font-size:20px;"><h2> Price</h2></td> 
  <td style="border-left-width: 35px;width: 73px;border-right-width: 35px;padding-left: 50;color:orange;font-size:20px;"><h2> Quantity</h2></td>
  <td style="border-left-width: 35px;width: 73px;border-right-width: 35px;padding-left: 50;color:orange;font-size:20px;"><h2> Total Payement</h2></td>
  
  </tr>
  
   <% int i=0;
        while(i<c.size()){
        	tot=tot+c.get(i).getPrice_book();
        	%>
     <td ><img src="img/<%= c.get(i).getImage_book() %>" class="d-block w-100" style="height: 188px;width: 35px;margin-left:10px;"><a  href="DropBookCart?id_cart=<%=c.get(i).getId_Cart() %>" style="margin-left: 35px;"><b> Remove Book From My Cart</b>
 
   <p id="p" style="width: 189px;margin-left:60px;font-size:20px;"><%= c.get(i).getName_book() %></p></td>
  <td class="Price"><%=c.get(i).getPrice_book() %><p>DH</p></td>
    <td ><input type="number" id="qte" name="qte" style="width:65px;height:40px;margin-left:60px;font-size:20px;font-family: Goudy Bookletter 1911, sans-serif; 
	text-align:center;border-radius:12px/7px;box-shadow:6px 6px 0px orange;"  value="1"></td>
	<td id="td21"><p id="p"style="width:100px;margin-left:60px;font-size:20px;" ><%=c.get(i).getPrice_book()%>DH</p></td>                 
    
    <%i++;} %>
      <td class="hidden-xs text-center"><strong>Total Pay<%=tot %> DH</strong></td>
       <td><a href="Formulaire_buy_books.jsp">Buy Now</a></td>
     
       </tr>
       
    <% } %>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.html"  %>
</body>
</html>