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
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email = request.getParameter("Email");
    	String Password = request.getParameter("Password");

    	String activationcode=String.valueOf((int)(Math.random()* 9999));
        Users prd= new Users();
        prd.setEmail(Email);
        prd.setPassword(Password);
        HttpSession session = request.getSession();
     	session.setAttribute("RegUser",prd);
     	session.setAttribute("ActivationCode",activationcode);
     	int status = new SendEmail().SendEmail(Email,"Aktivasyon Kodu","Kodunuz:"+activationcode);
        //int durum = new UserCRUD().CreateUsers(prd);
        //request.setAttribute("State", durum);
        //response.sendRedirect("ProductCreate.jsp");
        RequestDispatcher rd = request.getRequestDispatcher("Activation.jsp");
        rd.forward(request, response);
	}

}
