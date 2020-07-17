package Services;

import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import Beans.Category;
import Webmethods.CategoryMethods;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.inject.Singleton;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;

@Path("/Categories")
public class CategoryService {

	CategoryMethods cm=null ;
	public CategoryService () throws ClassNotFoundException, SQLException {
		cm=new CategoryMethods();
	}
		
		@POST
		@Path("/addCategory/{type}")
		@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		//@Consumes(MediaType.APPLICATION_XML)
		 public void AddCategory(@PathParam("type") String type ) throws ClassNotFoundException, SQLException {
			cm.AddCategory(type);
		}
		
		@GET
		@Path("/getCategoryType/{id}")
		@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		//@Consumes(MediaType.APPLICATION_XML)
		public String getCategoryName(@PathParam("id") int id) throws ClassNotFoundException, SQLException{
			return cm.getCategoryType(id);
			
		}
		
		@GET
		@Path("/getCategory/{id}")
		@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		//@Consumes(MediaType.APPLICATION_XML)
		public Category getCategory(@PathParam("id") int id) throws ClassNotFoundException, SQLException{
			return cm.getCategorybyid(id);
			
		}
		
		@GET
		@Path("/GetAllCategories")
		@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		//@Consumes(MediaType.APPLICATION_JSON)
		public ArrayList<Category> GetAllCategories() throws SQLException{
			return cm.GetAllCategories();
			
		}
		
		@POST
		@Path("/addCategory_obj")
		@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		//@Consumes(MediaType.APPLICATION_XML)
		 public void AddCategory_Obj(Category c) throws ClassNotFoundException, SQLException {
			cm.AddCategory_Obj(c);
		}
		
		@DELETE
		@Path("/deleteCategory/{id}")
		@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		//@Consumes(MediaType.APPLICATION_XML)
		public void deleteCategory(@PathParam("id") int id) throws ClassNotFoundException, SQLException {
			cm.DeleteCategory(id);
		}
		
		@PUT
		@Path("/updateCategory/{id}/{type}")
		@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
		//@Consumes(MediaType.APPLICATION_XML)
		public void UpdateCategory(@PathParam("id")int id,@PathParam("type") String type) throws ClassNotFoundException, SQLException {
			cm.updateCategory(id, type);
		}
	
		
}
