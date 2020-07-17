package Services;

import java.sql.SQLException;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import Beans.Book;
import Beans.User;
import Webmethods.BookMethods;
import Webmethods.UserMethods;

@Path("/UserService")
public class UserService {
	User u=new User();
	UserMethods um=null;
	
	
	@POST
	@Path("/addUser")
	@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	 public void AddUser(User u) throws ClassNotFoundException, SQLException {
		um=new UserMethods();
		um.ajouterUser(u);
		
		
	}
	
	@DELETE
	@Path("/deleteUser/{id}")
	@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	//@Consumes(MediaType.APPLICATION_XML)
	public void deleteUser(@PathParam("id") int id) throws ClassNotFoundException, SQLException {
		um.DeleteUser(id);
	}
	
	@GET
	@Path("/getUser/{id}")
	@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	 public User getUser(@PathParam("id") int id) throws ClassNotFoundException, SQLException {
		um=new UserMethods();
		return um.GetUser(id);
		
	}
	
	
	@GET
	@Path("/authUser/{login}/{password}")
	@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	 public User authUser(@PathParam("login") String login,@PathParam("password") String password) throws ClassNotFoundException, SQLException {
		um=new UserMethods();
		return um.AuthenUser(login, password);
		
	}
	
	
	
	
}
