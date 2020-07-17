package Webmethods;

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

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.jws.WebParam;

import DB.connection;
import Beans.Book;
import Beans.Cart;
import Beans.Category;
import Beans.User;
public class CartMethods {
	
	private Statement st ;
    private connection conx ;
    private ResultSet rs ;
    
    public CartMethods() throws SQLException, ClassNotFoundException
     {
    	conx=new connection();
    	st=conx.getStatement();
    }
    
   
    public void AddCart(int id_user,String image_book,String name_book,double price_book) throws SQLException, ClassNotFoundException
    {
    	st.executeUpdate("insert into cart (id_User,Image_book,Name_book,Price_book) values('"+id_user+"','"+image_book+"','"+name_book+"','"+price_book+"')");
    }
    
    public void AddCart_Obj(Cart c) 
    {
    	try {
			st.executeUpdate("insert into cart (id_User,Image_book,Name_book,Price_book) values('"+c.getId_User()+"','"+c.getImage_book()+"','"+c.getName_book()+"','"+c.getPrice_book()+"')");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    public ArrayList<Cart> GetCart_ByUser(int id_user) throws SQLException, ClassNotFoundException
    {
    	rs=st.executeQuery("select * from cart where id_user="+id_user);
    	
    	ArrayList<Cart> cs=new ArrayList<>();
    	while(rs.next()) {
    	  Cart c =new Cart();
    	   c.setId_Cart(rs.getInt(1));
    	   c.setId_User(rs.getInt(2));
    	   c.setImage_book(rs.getString(3));
    	   c.setName_book(rs.getString(4));
    	   c.setPrice_book(rs.getDouble(5));
    	   cs.add(c) ;
    	}
    	
		return cs;
    	
    }
    public void DeleteBookFromCart(int id_cart) throws SQLException, ClassNotFoundException
    {
    	st.executeUpdate("Delete from cart where id_cart="+id_cart);
    }
    public User getUser(int id_user) throws SQLException, ClassNotFoundException
    {
    	User u=new User();
    	rs=st.executeQuery("select * from user where id_user="+id_user);
    	if(rs.next()) {
    		u.setId(rs.getInt(1));
    		u.setRef(rs.getInt(2));
    		u.setNom(rs.getString(3));
    		u.setEmail(rs.getString(4));
    		u.setPassword(rs.getString(5));
    		
    		
    	}
    	return u;
    }
    public Book getBookbyid(int id_book) {
    	Book b=new Book();
    	Category c =new Category();
    	try {
			rs=st.executeQuery("select * from book where id_Book="+id_book);
			if(rs.next()) {
				b.setBook_id(rs.getInt(1));
				c.setId_category(rs.getInt(2));
				b.setBook_category(c);
				b.setAutor_name(rs.getString(3));
				b.setBook_name(rs.getString(4));
				
				b.setBook_image(rs.getString(5));
				b.setBook_Summary(rs.getString(6));
				b.setBook_price(rs.getDouble(7));
				
				
			    b.setBooks_availibility(rs.getString(9));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
		return b;
    	}
    
    
    public void AddCart(User u,Book b) throws SQLException, ClassNotFoundException
    {
    	st.executeUpdate("insert into cart (id_User,Image_book,Name_book,Price_book) values ('"+u.getId()+"','"+b.getBook_image()+"','"+b.getBook_name()+"','"+b.getBook_price()+"')");
    }
    
}
