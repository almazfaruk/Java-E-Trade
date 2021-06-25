package Usercontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import Productscontroller.Products;
import Productscontroller.ProductsCRUD;

/**
 * Servlet implementation class GetMd5Pw
 */
@WebServlet("/GetMd5Pw")
public class GetMd5Pw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetMd5Pw() {
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
		String Pw = request.getParameter("Password");
		 String a="";
		try {
			a = MD5Generator.Generator(Pw);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 PrintWriter out = response.getWriter();
		 System.out.print(a);
		 //request.setCharacterEncoding("UTF-8");
		 //response.setContentType("text/html; charset=utf-8");
		 out.println(a);
	     RequestDispatcher rd = request.getRequestDispatcher("Profil.jsp");
	}

}
