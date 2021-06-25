package Usercontroller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ProfilUpdate
 */
@WebServlet("/ProfilUpdate")
public class ProfilUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfilUpdate() {
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
		int UserId=Integer.parseInt(request.getParameter("UserId"));
		String Email = request.getParameter("Email");
		String phn = request.getParameter("PhoneNumber");
		String adressing = request.getParameter("Adressing");
    	String Password = request.getParameter("Pw2");
    	String bpw=request.getParameter("Password");
        Users prd= new Users();
        prd.setEmail(Email);
        prd.setPhoneNumber(phn);
        prd.setAdressing(adressing);
        prd.setUserId(UserId);
        
    	if(!Password.equals(""))
    	{  			
    	prd.setPassword(Password);
    	}
    	else
    	{
    		prd.setPassword(bpw);
    	}
		        
        int durum = new UserCRUD().UpdateUsers(prd);
        if(durum==1)
        {
        	Users u= UserCRUD.GetById(Email);
        	HttpSession session = request.getSession();
        	session.setAttribute("User",u);
        	session.setAttribute("Pwct",false);
        }
        request.setAttribute("State", durum);
        //response.sendRedirect("ProductCreate.jsp");
        RequestDispatcher rd = request.getRequestDispatcher("Profil.jsp");
        rd.forward(request, response);
	}

}
