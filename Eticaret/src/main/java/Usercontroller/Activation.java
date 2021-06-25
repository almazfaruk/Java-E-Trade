package Usercontroller;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Activation
 */
@WebServlet("/Activation")
public class Activation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Activation() {
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
    	String Password = request.getParameter("Password");
    	System.out.print(Password);
        HttpSession session = request.getSession();
        if (!Objects.isNull(session.getAttribute("RegUser"))&&!Objects.isNull(session.getAttribute("ActivationCode"))) {
        	String actcode=(String)session.getAttribute("ActivationCode");
        	if(Password.equals(actcode))
        	{
        		System.out.print("girdi");
        	    Users u = (Users)session.getAttribute("RegUser");
        	    int state = new UserCRUD().CreateUsers(u);
                request.setAttribute("State", state);
                
        	}
        	
        }
        else
        {
        	request.setAttribute("State", 0);
        }

    	
        
        RequestDispatcher rd = request.getRequestDispatcher("Activation.jsp");
        rd.forward(request, response);
	}

}
