package Usercontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FastLogin
 */
@WebServlet("/FastLogin")
public class FastLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FastLogin() {
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
    	String url=request.getParameter("href");	
        Users prd= new Users();
        prd.setEmail(Email);
        prd.setPassword(Password);

        
        int durum = new UserCRUD().UserControl(prd);
        request.setAttribute("State", durum);
        if(durum==1)
        {
        	Users u= UserCRUD.GetById(Email);
        	HttpSession session = request.getSession();
        	session.setAttribute("User",u);
        }
    	PrintWriter out = response.getWriter();
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		out.println(durum);
		System.out.print(url);
        RequestDispatcher rd = request.getRequestDispatcher(url);
        //rd.forward(request, response);
	}

}
