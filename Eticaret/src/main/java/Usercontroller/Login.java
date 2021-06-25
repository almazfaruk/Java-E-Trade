package Usercontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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

		
        Users prd= new Users();
        prd.setEmail(Email);
        prd.setPassword(Password);

        
        int durum = new UserCRUD().UserControl(prd);
        request.setAttribute("State1", durum);
        if(durum==0)
        {
        	//Users u= UserCRUD.GetById(Email);
        	//HttpSession session = request.getSession();
        	//session.setAttribute("User",u);
            RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
            rd.forward(request, response);
        }
        else {
        	Users u= UserCRUD.GetById(Email);
        	
        	 LocalDateTime date = LocalDateTime.now();
             DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
             String time = dtf.format(date);

             DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("dd/MM/yyyy");
             String str_date_2 = u.getPasswordCreatedTime();
             LocalDate local_date_2 = LocalDate.parse(str_date_2, dtf2);

             DateTimeFormatter formatter_21 = DateTimeFormatter.ofPattern("dd/MM/yyyy");
             String str_date_21 = time;
             LocalDate local_date_21 = LocalDate.parse(str_date_21, formatter_21);

             int diff = Period.between(local_date_2, local_date_21).getDays();
             System.out.print(diff);
             if (diff > 10)
             {
            	 HttpSession session = request.getSession();
             	session.setAttribute("User",u);
             	session.setAttribute("Pwct",true);   
                 RequestDispatcher rd = request.getRequestDispatcher("Profil.jsp");
                 rd.forward(request, response);
            	 
             }
             else
             {
             	HttpSession session = request.getSession();
            	session.setAttribute("User",u);
            	session.setAttribute("Pwct",false);
                RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
                rd.forward(request, response);
             }
        	
        }
	}

}
