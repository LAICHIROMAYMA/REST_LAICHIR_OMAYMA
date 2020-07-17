package Controller;

import java.io.IOException;

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
 * Servlet implementation class DefineUser
 */
@WebServlet("/DefineUser")
public class DefineUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DefineUser() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out=response.getWriter();
		Client client = ClientBuilder.newClient();
		WebTarget target = client.target("http://localhost:8080/Rest_ProjetEcommerce_Service/rest/UserService");
		User u =new User();
		
		String Login =request.getParameter("mailconnect");
		String Password =request.getParameter("mdpconnect");
		u=target.path("/authUser/"+Login+"/"+Password).request().get(User.class);
		if(u!=null)
		{
			if(u.getRef()==1) {
				response.sendRedirect("espace_admin.jsp");
			}
			else {
			HttpSession ses = request.getSession();
			ses.setAttribute("nom", u.getNom());
			ses.setAttribute("iduser", u.getId());
			
			response.sendRedirect("Acceuil.jsp");
			}
		}else {
			response.sendRedirect("SingIn.jsp");
		
	}
	}

}
