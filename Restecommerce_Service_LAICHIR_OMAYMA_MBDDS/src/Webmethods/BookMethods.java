package Webmethods;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Beans.Book;
import Beans.Category;
import DB.connection;
import DB.DBInteraction;

public class BookMethods {
	
	private Statement st ;
    private connection conx ;
    private ResultSet rs ;
    
    public BookMethods() throws SQLException, ClassNotFoundException
    {
    conx=new connection();
    st=conx.getStatement();
   
    }
    
public void addBook(Book b) throws SQLException, ClassNotFoundException {
		
		st.executeUpdate("insert into book(Id_Category,Autor_name,Book_name,Book_image,Book_Summary,Book_price,Book_Quantity,Books_availibility)values('" +b.getBook_category().getId_category()+"','" +b.getAutor_name()+"','"+b.getBook_name()+"','"+b.getBook_image()+"','"+b.getBook_Summary()+"','"+b.getBook_price()+"','"+b.getBook_Quantity()+"','"+b.getBooks_availibility()+"')");
	}

public Book findBookById(int id) throws SQLException, ClassNotFoundException{
	Book b=new Book();
	 Category c=new Category();
	 CategoryMethods cm =null;
	 
	 cm = new CategoryMethods();
	 
	 rs =st.executeQuery("select * from book where Book_id="+id);
	
     
	 if(rs.next()) {
	
     c.setId_category(rs.getInt("Id_category"));
     b.setBook_category(c);
     b.setBook_name(rs.getString("Book_name"));
     b.setAutor_name(rs.getString("Autor_name"));
     b.setBook_image(rs.getString("Book_image"));
     b.setBook_price(rs.getDouble("Book_price"));
     b.setBook_Quantity(rs.getInt("Book_Quantity"));
     b.setBook_Summary(rs.getString("Book_Summary"));
     b.setBooks_availibility(rs.getString("Books_availibility"));
     
     } 
     return b;
}
public int updateBook(int id, Book b) {
	DBInteraction.connect();
	int nb=DBInteraction.Maj("update Book set  Book_category='"+b.getBook_category()+"', Book_name="+b.getBook_name()+", Autor_name="+b.getAutor_name()+", Book_image="+b.getBook_image()+" , Book_Summary="+b.getBook_Summary()+", Book_price="+b.getBook_price()+", Book_Quantity="+b.getBook_Quantity()+", Books_availibility='"+b.getBooks_availibility()+"' where Book_id="+id);
	DBInteraction.disconnect();
	return nb;
}

public int DeleteBook(int id) {
	
	DBInteraction.connect();
	int nb=DBInteraction.Maj("delete from book where Book_id="+id);
	DBInteraction.disconnect();
	return nb;
	
}

public ArrayList<Book> GetallBooks() throws SQLException, ClassNotFoundException{
	ArrayList<Book>  Books=new ArrayList<Book>();
	CategoryMethods cm=new CategoryMethods();
     
	DBInteraction.connect();
	ResultSet rs = DBInteraction.select("select * from book ");
	try {
		while(rs.next())
		{
			 Book b=new Book();
	         Category c=new Category();
         
	         c.setId_category(rs.getInt("Id_category"));
	         c.setType(cm.getCategoryType(rs.getInt("Id_category")));
	         b.setBook_category(c);  
	            
	          b.setBook_name(rs.getString("Book_name"));
	          b.setAutor_name(rs.getString("Autor_name"));
	          b.setBook_image(rs.getString("Book_image"));
	          b.setBook_price(rs.getDouble("Book_price"));
	          b.setBook_Quantity(rs.getInt("Book_Quantity"));
	          b.setBook_Summary(rs.getString("Book_Summary"));
	          b.setBooks_availibility(rs.getString("Books_availibility"));
			Books.add(b);	
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return Books;
}

public ArrayList<Book> GetBookByCategory( int id_Category) throws SQLException
{
 ArrayList<Book> books=new ArrayList<Book>();
/* MethodsCategory cd =null;
 try {
		cd=new MethodsCategory();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}*/
	rs=st.executeQuery("select * from book where  id_Category = "+id_Category);
	while (rs.next()) {
		Book b=new Book();
	   	Category c =new Category();
	   	
		
	   	b.setBook_id(rs.getInt(1));
	   	c.setId_category(rs.getInt(2));
	   	b.setAutor_name(rs.getString(3));
		b.setBook_name(rs.getString(4));
		b.setBook_image(rs.getString(5));
		b.setBook_Summary(rs.getString(6));
		b.setBook_price(rs.getDouble(7));
		b.setBook_Quantity(rs.getInt(8));
		b.setBooks_availibility(rs.getString(9));
		b.setBook_category(c);
		
		books.add(b);
	}
	return books;
	   
}


}
