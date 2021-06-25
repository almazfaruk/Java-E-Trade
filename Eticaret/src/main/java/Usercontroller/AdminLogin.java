package Usercontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
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
		String Email = request.getParameter("Email");
    	String Password = request.getParameter("Password");

		
        

        
        int durum = new UserCRUD().AdminControl(Email,Password);
        request.setAttribute("State1", durum);
        if(durum==1)
        {
        	HttpSession session = request.getSession();
        	session.setAttribute("Admin",Email);
            RequestDispatcher rd = request.getRequestDispatcher("ProductList.jsp");
            rd.forward(request, response);
        }
        else {
        	RequestDispatcher rd = request.getRequestDispatcher("AdminLogin.jsp");
            rd.forward(request, response);
        }
	}

}
