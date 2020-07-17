package Services;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import Beans.Book;
import Beans.Cart;
import Beans.User;
import Webmethods.CartMethods;

@Path("/CartService")
public class CartService {

	Book b=new Book();
	 User u=new User();
	 CartMethods cm=null;
 
	  @POST
	  @Path("/addCart_Obj")
	  @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	  public void addCart_Obj( Cart c) throws ClassNotFoundException, SQLException {
			cm=new CartMethods();
			cm.AddCart_Obj(c);
			
		}
	  @DELETE
	  @Path("/DeleteBookFromCart/{id_cart}")
	  @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	  public void DeleteBookFromCart(@PathParam("id_cart") int id_cart)throws ClassNotFoundException, SQLException{
		  cm=new CartMethods();
		  cm.DeleteBookFromCart(id_cart);
	  }
	  
	  @GET
	  @Path("/getBook/{id_book}")
	  @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	  public Book getBook(@PathParam("id_book") int id_book)throws ClassNotFoundException, SQLException{
		  cm=new CartMethods();
		return cm.getBookbyid(id_book);
	  }  
	  
	  @GET
	  @Path("/getUser/{id_user}")
	  @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	  public User getUser(@PathParam("id_user") int id_user)throws ClassNotFoundException, SQLException{
		  cm=new CartMethods();
		return cm.getUser(id_user);
	  }
	  
	  @GET
	  @Path("/getCartByUser/{id_user}")
	  @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	  public ArrayList<Cart> getCartByUser(@PathParam("id_user") int id_user)throws ClassNotFoundException, SQLException{
		  cm=new CartMethods();
		return cm.GetCart_ByUser(id_user);
	  }
	  
	
}
