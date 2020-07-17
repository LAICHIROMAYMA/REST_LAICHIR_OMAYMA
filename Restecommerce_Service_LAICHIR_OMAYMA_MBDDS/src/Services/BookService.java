package Services;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import Beans.Book;
import Webmethods.BookMethods;

@Path("/BookService")
public class BookService {
	
	BookMethods bm=null;
	Book b=new Book();
	
	 @POST
		@Path("/addBook")
	    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		 public void AddCategory(Book b) throws ClassNotFoundException, SQLException {
			bm=new BookMethods();
			bm.addBook(b);
			
		}
	    
	    @PUT
		@Path("/updateBook/{id}")
	    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		 public void updateBook(@PathParam("id") int id,Book b) throws ClassNotFoundException, SQLException {
			bm=new BookMethods();
			bm.updateBook(id, b);
			
		}
	    
	    @DELETE
		@Path("/deleteBook/{id}")
	    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		 public void deleteBook(@PathParam("id") int id) throws ClassNotFoundException, SQLException {
			bm=new BookMethods();
			bm.DeleteBook(id);
			
		}
	    
	    @GET
		@Path("/getBook/{id}")
	    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		 public Book getBook(@PathParam("id") int id) throws ClassNotFoundException, SQLException {
			bm=new BookMethods();
			return bm.findBookById(id);
			
		}
	    
	    @GET
		@Path("/getAllBooks")
	    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		 public  ArrayList<Book> getAllBook() throws ClassNotFoundException, SQLException {
			bm=new BookMethods();
			return bm.GetallBooks();
			
		}
	    
	  
	    @GET
		@Path("/getBookByCategory/{id_category}")
	    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		 public  ArrayList<Book> getBookByCategory(@PathParam("id_categorry") int id_category) throws ClassNotFoundException, SQLException {
			bm=new BookMethods();
			return bm.GetBookByCategory(id_category);
			
		}
	
	

}
