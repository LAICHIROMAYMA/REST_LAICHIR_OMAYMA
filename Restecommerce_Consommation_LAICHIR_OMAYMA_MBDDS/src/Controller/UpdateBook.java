package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;

import Beans.Book;
import Beans.Category;

/**
 * Servlet implementation class UpdateBook
 */
@WebServlet("/UpdateBook")
public class UpdateBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		Client client = ClientBuilder.newClient();
		WebTarget target = client.target("http://localhost:8081/Rest_ProjetEcommerce_Service/rest/BookService");
		Book b=new Book();
		Category c =new Category();
		
		int id_Book=Integer.parseInt(request.getParameter("id_Book"));
		int id_category=Integer.parseInt(request.getParameter("type"));
		String Writer=request.getParameter("writer");
		String Name= request.getParameter("title");
		String Image =request.getParameter("image");
		String Summary =request.getParameter("description");
		double Price=Double.parseDouble(request.getParameter("price"));
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		String avail=request.getParameter("avail");
	
		c.setId_category(id_category);
		b.setBook_category(c);
		
		b.setAutor_name(Writer);
		
		b.setBook_name(Name);
		b.setBook_image(Image);
		b.setBook_Summary(Summary);
		b.setBook_price(Price);
		b.setBook_Quantity(quantity);
		b.setBooks_availibility(avail);
		
		target.path("/addBook").request().post(Entity.json(b));
		response.sendRedirect("AllBook.jsp");
		
	}

}
