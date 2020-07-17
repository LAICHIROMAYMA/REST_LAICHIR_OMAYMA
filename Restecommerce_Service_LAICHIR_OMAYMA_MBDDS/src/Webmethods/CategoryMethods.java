package Webmethods;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import Beans.Book;
import Beans.Category;
import DB.connection;
import DB.DBInteraction;

public class CategoryMethods {

	private Statement st=null;
    private connection cnx=null;
    private ResultSet rs=null;
    
      public CategoryMethods() throws SQLException, ClassNotFoundException
    {
    cnx=new connection();
    st=cnx.getStatement();
    }
	
	
	public String getCategoryType(int id) {
		 String ct=null;
		 
		try {
			rs=st.executeQuery("select type from category where Id_category="+id+";");
		if(rs.next()) {
			ct=rs.getString(1);
		}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
       return ct; 
       
	}
	
	 public void AddCategory(String type) 
	    {
	        try {
				st.executeUpdate("insert into category(type) values('"+type+"');");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    }

	 public void AddCategory_Obj(Category c)
	 {
		 try {
			st.executeUpdate("insert into category(type) values('"+c.getType()+"');");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	 
	 public void updateCategory(int id ,String type){
		 try {
			st.executeUpdate("update category set type='"+type+"' where Id_category="+id+";");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	 
	 public void DeleteCategory(int id) {
		 try {
			st.executeUpdate("delete from Category where Id_category="+id+";");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	 
	 
	 public ArrayList<Category> GetAllCategories()
	 {
		 ArrayList<Category> cs=new ArrayList<>();
	        
	        try {
				rs=st.executeQuery("select * from category;");
				 while(rs.next())
				 {
			            Category c=new Category();
			            c.setId_category(rs.getInt(1));
			            c.setType(rs.getString(2));
			        cs.add(c);
			               
			        }
	        } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	       
	        
	        return cs;
	    }
	 
	 
	 public Category getCategorybyid(int id) {
		Category c=new Category();
		 
		try {
			rs=st.executeQuery("select type from category where Id_category="+id+";");
		if(rs.next()) {
			c.setId_category(rs.getInt(1));
			c.setType(rs.getString(2));
		}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
     return c;
       
	}
	 
	
}
