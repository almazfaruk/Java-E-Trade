package Usercontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForgotPw
 */
@WebServlet("/ForgotPw")
public class ForgotPw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPw() {
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
		 String Mail = request.getParameter("Email");
         String Header=" Şifremi Unuttum";
         int state= UserCRUD.EmailControl(Mail);
         if(state==1)
         {
         Users u=  UserCRUD.GetById(Mail);
         String Content="http://localhost:4088/Eticaret/NewPassword.jsp?IsTokenId="+u.getUserId();
         System.out.println(Mail);
                 
         int status = new SendEmail().SendEmail(Mail,Header,Content);
         request.setAttribute("State", status);
         }
         else
         {
             request.setAttribute("State",0);
         }
         RequestDispatcher rd = request.getRequestDispatcher("ForgotPassword.jsp");
         rd.forward(request, response);
	}

}
