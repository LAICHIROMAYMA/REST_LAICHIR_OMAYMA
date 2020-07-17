package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;

import Beans.User;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
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
		WebTarget target = client.target("http://localhost:8080/Rest_ProjetEcommerce_Service/rest/UserService");
		User u =new User();
		
		String nom=request.getParameter("nom");
		String Email= request.getParameter("mail");
		String password =request.getParameter("mdp");
		
		u.setRef(2);
		u.setNom(nom);
		u.setEmail(Email);
		u.setPassword(password);
		target.path("/addUser").request().post(Entity.json(u));
		
		if(u!=null) {
			if(u.getRef()==2)
			{
				HttpSession ses = request.getSession();
				ses.setAttribute("nom", u.getNom());
				ses.setAttribute("Email", u.getEmail());
				ses.setAttribute("password", u.getPassword());
				response.sendRedirect("Home.jsp");
			}
			else {
				response.sendRedirect("espace_admin.jsp");
			}
		
	}
	}}

