package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class connection {
	
	private Connection cnx;
    private Statement st;
    String username = "root";
    String password = null;
    private String url="jdbc:mysql://localhost:3306/bookshop";
    
    public connection() throws SQLException, ClassNotFoundException
    {
        Class.forName("com.mysql.jdbc.Driver");
    cnx = DriverManager.getConnection(url, username, password);
    st = cnx.createStatement();
    }
    
    public Statement getStatement()throws SQLException
    {
    return st;
    }

}
