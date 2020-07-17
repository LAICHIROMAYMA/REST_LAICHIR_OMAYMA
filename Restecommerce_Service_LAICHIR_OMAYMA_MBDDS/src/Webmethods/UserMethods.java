package Webmethods;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Beans.User;
import DB.connection;
import DB.DBInteraction;


public class UserMethods {
	
	private Statement st;
    private connection cnx;
    private ResultSet rs;
    public UserMethods() throws SQLException, ClassNotFoundException
    {
    cnx=new connection();
    st=cnx.getStatement();
    }
    public void ajouterUser(User u) throws SQLException
    {
        st.executeUpdate("insert into user(ref,Nom,email,password) values('"+u.getRef()+"','"+u.getNom()+"','"+u.getEmail()+"','"+u.getPassword()+"');");
    }
    
      public void supprimerUser(int id) throws SQLException, ClassNotFoundException
    {
        st.executeUpdate("delete from user where id='"+id+"';");
    }
    
      public User AuthenUser(String email,String password)throws SQLException{
    	  User u=new User();
    	  rs=st.executeQuery("select * from user where email='"+email+"'and password='"+password+"'");
    	  if(rs.next()) {
    		  u.setId(rs.getInt(1));
    		  u.setRef(rs.getInt(2));
    		  u.setNom(rs.getString(3));
    		  u.setEmail(rs.getString(4));
    		  u.setPassword(rs.getString(5));
    	  }
    	  return u;
    	  
      }
      
      public void DeleteUser(int id) {
 		 try {
 			st.executeUpdate("delete from User where id="+id+";");
 		} catch (SQLException e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
 	 }
      
      public ArrayList<User> GetAllUsers() throws SQLException
 	 {
 		 ArrayList<User> cs=new ArrayList<>();
 	        
 	        rs=st.executeQuery("select * from user;");

 	        while(rs.next())
 	        {
 	            User u=new User();
 	            u.setId(rs.getInt(1));
 	            u.setRef(rs.getInt(2));
 	            u.setNom(rs.getString(3));
 	            u.setEmail(rs.getString(4));
 	            u.setPassword(rs.getString(5));
 	        cs.add(u);
 	               
 	        }
 	        return cs;
 	    }
      

	public User GetUser(int id)  throws SQLException{
		User u=null;
		u=new User();
		rs=st.executeQuery("select * from User where id="+id);
		
		if(rs.next()) {
		u.setId(rs.getInt(1));
		u.setNom(rs.getString(3));
		u.setEmail(rs.getString(4));
		
		}
		return u;
	}

}
